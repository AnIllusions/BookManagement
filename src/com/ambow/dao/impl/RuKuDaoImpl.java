package com.ambow.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ambow.dao.RuKuDao;
import com.ambow.model.Cell;
import com.ambow.model.Deliver_To_Other;
import com.ambow.model.Deliver_To_Station;
import com.ambow.model.Deliver_To_Student;
import com.ambow.model.Deliver_To_Teacher;
import com.ambow.model.Operator;
import com.ambow.model.Package_book;
import com.ambow.model.Package_bookinf;
import com.ambow.model.Station;
import com.ambow.model.Stock;
import com.ambow.model.StockCheck;
import com.ambow.model.StockMove;
import com.ambow.model.StockReceive;
import com.ambow.model.Student;
import com.ambow.model.Supplier;
import com.ambow.model.TextBook;
import com.ambow.servlet.bookInfo_detailServlet;
import com.ambow.utils.BaseDAO;
import com.ambow.utils.SessionOperat;
import com.ambow.utils.impl.DAOException;

public class RuKuDaoImpl implements RuKuDao {

	@Override
	public List<TextBook> queryTextBookByisbn(String isbn) {
		String param[] = { isbn };
		String sql = "from TextBook where isbn = ?";
		List<TextBook> textBook = BaseDAO.query(sql, param);
		return textBook;
	}

	@Override
	public int addTextBook(String account, String isbn, String amount,
			String supplier, String jiawei, String remark) {
		StockReceive stockReceive = new StockReceive();
		stockReceive.setAmount(Integer.parseInt(amount));
		stockReceive.setRemark(remark);

		java.util.Date date = new java.util.Date();
		java.sql.Date date1 = new java.sql.Date(date.getTime());
		stockReceive.setReceive_date(date1);

		String param[] = { isbn, jiawei, supplier };
		String sql = "from TextBook where isbn=? and cell_id=(select id from Cell where name=?) and supplier_id=(select id from Supplier where name=?)";
		TextBook textBook = (TextBook) BaseDAO.queryOne(sql, param);
		if (textBook == null) {
			System.out.println("rukuDaoImpl.textbook查询为空");
			return 0;
		}
		stockReceive.setTextBook(textBook);

		String param1[] = { supplier };
		String sql1 = "from Supplier where name=?";
		Supplier supplier2 = (Supplier) BaseDAO.queryOne(sql1, param1);
		if (supplier2 == null) {
			System.out.println("rukuDaoImpl.supplier查询为空");
			return 0;
		}
		stockReceive.setSupplier(supplier2);

		String param2[] = { account };
		String sql2 = "from Operator where account=?";
		Operator operator = (Operator) BaseDAO.queryOne(sql2, param2);
		if (operator == null) {
			System.out.println("rukuDaoImpl.operator查询为空");
			return 0;
		}
		stockReceive.setOperator(operator);

		boolean t = BaseDAO.add(stockReceive);
		if (t) {
			System.out.println("rukuDaoImpl.入库成功");
			return 1;
		} else {
			System.out.println("rukuDaoImpl.入库失败");
			return -1;
		}

	}

	@Override
	public List<StockReceive> serchreceivebook(String begintime,
			String endtime, String suppliername, String bookname) {
		String param[] = { suppliername, bookname, begintime, endtime };
		String sql = "from StockReceive where supplier_id="
				+ "(select id from Supplier where name = ?) and textbook_id="
				+ "(select id from TextBook where name=?) and receive_date between ? and ?";
		List<StockReceive> stockReceive = BaseDAO.query(sql, param);
		return stockReceive;
	}

	@Override
	public List<Stock> serchbynameAndjiawei(String namet1, String jiaweit2) {

		System.out.println("rukudaoimpl.namet1=" + namet1 + "jiawei2="
				+ jiaweit2);
		if ((!namet1.equals("")) && (!jiaweit2.equals(""))) {
			namet1 = "%" + namet1 + "%";
			String param[] = { namet1, jiaweit2 };
			String sql = "from Stock where textbook_id=(select id from TextBook where name like ? and cell_id=(select id from Cell where name=?))";
			List<Stock> stock = BaseDAO.query(sql, param);
			return stock;
		} else if ((!namet1.equals("")) && (jiaweit2.equals(""))) {
			namet1 = "%" + namet1 + "%";
			String param[] = { namet1 };
			String sql = "from Stock where textbook_id=(select id from TextBook where name like ?)";
			List<Stock> stock = BaseDAO.query(sql, param);
			return stock;
		} else if ((namet1.equals("")) && (!jiaweit2.equals(""))) {
			String param[] = { jiaweit2 };
			String sql = "from Stock where textbook_id=(select id from TextBook where cell_id=(select id from Cell where name=?))";
			List<Stock> stock = BaseDAO.query(sql, param);
			return stock;
		} else {
			return null;
		}
	}

	@Override
	public List<TextBook> serchByamountAndjiawei(String jiawei, String amount,
			String remark) {

		String param[] = { jiawei };
		String sql = " from TextBook where cell_id=(select id from Cell where name=?) ";
		List<TextBook> textBook = BaseDAO.query(sql, param);
		return textBook;
	}

	@Override
	public List<StockCheck> querybyOperator(String operater, String begintime,
			String endtime) {
		String param[] = { operater, begintime, endtime };
		String sql = " from StockCheck where operator_id=(select id from Operator where name=?) and check_date between ? and ?";
		List<StockCheck> stockCheck = BaseDAO.query(sql, param);
		return stockCheck;
	}

	@Override
	public List<StockMove> queryMovebyJiaweiAndName(String jiawei, String name) {
		String param[] = { jiawei, name };
		String sql = " from StockMove where textbook_id=(select id from TextBook where cell_id=(select id from Cell where name=?) and name=?)";
		List<StockMove> stockMove = BaseDAO.query(sql, param);
		return stockMove;
	}

	@Override
	public boolean moveByname(String oldname, String newjiawei, String newamount) {
		String param[] = { oldname };
		String sql = " from StockMove where textbook_id=(select id from TextBook where name=?)";
		StockMove stockMove = (StockMove) BaseDAO.queryOne(sql, param);
		if (stockMove != null) {
			// stockMove.getTextbook().setJiawei(newjiawei);
			stockMove.getTextbook().setAmount(Integer.parseInt(newamount));
			boolean b = BaseDAO.update(stockMove);
			return b;
		}
		return false;
	}

	@Override
	public boolean addCell(String addname, String addremark) {
		Cell cell = new Cell();
		cell.setName(addname);
		cell.setRemark(addremark);
		//return BaseDAO.add(cell);
		Transaction tx = SessionOperat.createSession().beginTransaction();

		SessionOperat.createSession().save(cell);
		tx.commit();
		return true;
	}

	@Override
	public List<Cell> queryhuojiaByname(String shelfName) {
		String param[] = { shelfName };
		String sql = "from Cell where name = ?";
		List<Cell> cell = BaseDAO.query(sql, param);
		return cell;
	}

	@Override
	public boolean modifyhuojia(String hid, String updatename,
			String updateremark) {
		Cell cell = (Cell) BaseDAO.get(Cell.class, Integer.parseInt(hid));
		cell.setName(updatename);
		if (!updateremark.equals("")) {
			cell.setRemark(updateremark);
		}
		return BaseDAO.update(cell);
	}

	@Override
	public boolean deletehuojiaById(String deleteid) {
		Transaction tx = SessionOperat.createSession().beginTransaction();

		Cell cell=(Cell) BaseDAO.get(Cell.class,
				Integer.parseInt(deleteid));
		SessionOperat.createSession().clear();
		SessionOperat.createSession().delete(cell);
		tx.commit();
//		return BaseDAO.delete(BaseDAO.get(Cell.class,
//				Integer.parseInt(deleteid)));
		return true;
	}

	@Override
	public List<Package_bookinf> studentbookquery(String xn, String xq,
			String lb, String zy, String cc, String nj) {
		String param[] = { xn, xq, lb, zy, cc, nj };
		System.out.println("rukudaoimpl.xn=" + xn + " xq=" + xq + " lb=" + lb
				+ " zy=" + zy + " cc=" + cc + " nj=" + nj);
		String sql = "from Package_bookinf where package_book_id=("
				+ "select id from Package_book where academy_year=? "
				+ "and semester=? " + "and pdescription=? "
				+ "and major_id=(select id from Major where name=?) "
				+ "and level_id=(select id from Level where name=?) "
				+ "and grade=?)";
		List<Package_bookinf> package_bookinf = BaseDAO.query(sql, param);
		System.out.println("rukuDaoimpl.package_bookinf.size()="
				+ package_bookinf.size());
		return package_bookinf;
	}

	@Override
	public Student studentserch(String banji, String xuehao) {
		String param[] = { xuehao, banji };
		System.out.println("RuKuDaoImpl.banji=" + banji + " xuehao=" + xuehao);
		String sql = " from Student where number=? and bji_id=(select id from BJi where name=?)";
		Student student = (Student) BaseDAO.queryOne(sql, param);
		System.out.println("rukuDaoimpl.student=" + student);
		return student;
	}

	@Override
	public boolean addStudentGetBook(String studentid, String accountid,
			String packageid) {
		Student student = (Student) BaseDAO.get(Student.class,
				Integer.parseInt(studentid));
		Operator operator = (Operator) BaseDAO.get(Operator.class,
				Integer.parseInt(accountid));
		Package_book package_book = (Package_book) BaseDAO.get(
				Package_book.class, Integer.parseInt(packageid));
		Deliver_To_Student dts = new Deliver_To_Student();
		java.util.Date date = new java.util.Date();
		java.sql.Date date1 = new java.sql.Date(date.getTime());
		dts.setDeliver_time(date1);
		dts.setOperator(operator);
		dts.setPackageBook(package_book);
		dts.setStudent(student);
		//return BaseDAO.add(dts);
		Transaction tx = SessionOperat.createSession().beginTransaction();

		SessionOperat.createSession().save(dts);
		tx.commit();
		return true;
	}

	@Override
	public List<Deliver_To_Student> getDeliver_To_Student(String lb, String zy,
			String cc, String nj, String bj, String begintime, String endtime) {
		System.out.println("Rukudaoimpl.lb=" + lb + " zy=" + zy + " cc=" + cc
				+ " nj=" + nj + " bj=" + bj + " begintime=" + begintime
				+ " endtime=" + endtime);

		// String param[]={cc,zy,lb,nj,bj,begintime,endtime};
		// String
		// sql="from Deliver_To_Student where deliver_time between ? and ?"
		// + " and package_id=("
		// + "select id from Package_book "
		// + "where level_id=(select id from Level where name=?) "
		// + "and major_id=(select id from Major where name=?)"
		// + "and pdescription=?"
		// + "and grade=?"
		// + "and bji_id=(select id from BJi where name=?)"
		// + ")"
		// + ")";
		String param[] = { begintime, endtime };
		String sql = "from Deliver_To_Student where deliver_time between ? and ?";
		return BaseDAO.query(sql, param);
	}

	@Override
	public List<Package_bookinf> getPackage_book(int packageid) {
		String package_book_id = packageid + "";
		String param[] = { package_book_id };
		String sql = "from Package_bookinf where package_book_id=?";
		return BaseDAO.query(sql, param);
	}

	@Override
	public boolean deletetextbook(String textbookid) {
		TextBook textBook=(TextBook) BaseDAO.get(TextBook.class,Integer.parseInt(textbookid));
//		return BaseDAO.delete(BaseDAO.get(TextBook.class,
//				Integer.parseInt(textbookid)));
		return true;
	}

	@Override
	public List<Deliver_To_Other> deliver_queryother(String begintime,
			String endtime) {
		String param[] = { begintime, endtime };
		String sql = "from Deliver_To_Other where deliver_date between ? and ?";
		return BaseDAO.query(sql, param);
	}

	@Override
	public List<Deliver_To_Teacher> deliver_queryteacher(String begintime,
			String endtime, String teachername) {
		if (teachername.equals("")) {
			String param[] = { begintime, endtime };
			String sql = "from Deliver_To_Teacher where deliver_date between ? and ?";
			return BaseDAO.query(sql, param);
		} else {
			String param[] = { teachername, begintime, endtime };
			String sql = "from Deliver_To_Teacher where tname=? and deliver_date between ? and ?";
			return BaseDAO.query(sql, param);
		}
	}

	@Override
	public List<Deliver_To_Station> deliver_querystation(String stationname,
			String begintime, String endtime) {
		System.out.println("RuKuDaoImpl.stationname=" + stationname
				+ " begintime=" + begintime + " enttime=" + endtime);
		if (stationname.equals("选择函授站")) {
			String param[] = { begintime, endtime };
			String sql = "from Deliver_To_Station where deliver_date between ? and ?";
			return BaseDAO.query(sql, param);
		} else {
			String param[] = { stationname, begintime, endtime };
			String sql = "from Deliver_To_Station where station_id=(select id from Station where name=?) and deliver_date between ? and ?";
			return BaseDAO.query(sql, param);
		}
	}

	@Override
	public List<StockMove> queryMoves(String begintime, String endtime) {
		String param[] = { begintime, endtime };
		String sql = "from StockMove where move_date between ? and ?";
		return BaseDAO.query(sql, param);
	}

	@Override
	public List<TextBook> serchbook(String name, String author, String publish) {
		String param[] = { name, author, publish };
		String sql = "from TextBook where name=? and author=? and publish=?";
		return BaseDAO.query(sql, param);
	}

	@Override
	public List<TextBook> storageMoveQuery(String jiawei, String name) {
		
		if(jiawei.equals("")){
			System.out.println("RuKuImpl.jiawei.为空");
			String newName="%"+name+"%";
			String param1[]={newName};
			String sql1="from TextBook where name like ?";
			return BaseDAO.query(sql1, param1);
		}else if(name.equals("")){
			System.out.println("RuKuImpl.name.为空");
			String param1[]={jiawei};
			String sql1="from TextBook where cell_id =(select id from Cell where name=?)";
			return BaseDAO.query(sql1, param1);
		}else{
			System.out.println("RuKuDaoImpl.name="+name+" jiawei="+jiawei);
		 String newName="%"+name+"%";
		String param[] = { newName, jiawei };
		String sql = "from TextBook where name like ? and cell_id =(select id from Cell where name=?)";
		return BaseDAO.query(sql, param);
		}
	}

	@Override
	public boolean stockaddMove(Operator operator, String oldjiawei,
			String oldname, String newjiawei, String newamount) {

		String param1[] = { oldjiawei };

		String sql1 = "from Cell where name=?";
		Cell oldcell = (Cell) BaseDAO.queryOne(sql1, param1);
		if (oldcell == null) {
			System.out.println("原架位对应的Cell为空");
		}

		String sql3 = "from TextBook where cell_id=(select id from Cell where name=?)";
		TextBook textBook = (TextBook) BaseDAO.queryOne(sql3, param1);
		if (textBook == null) {
			System.out.println("原架位对应的textbook为空");
		}

		String param2[] = { newjiawei };
		String sql2 = "from Cell where name=?";
		Cell newcell = (Cell) BaseDAO.queryOne(sql2, param2);
		if (newcell == null) {
			System.out.println("现架位对应的Cell为空");
		}

		StockMove stockMove = new StockMove();
		stockMove.setAmount(Integer.parseInt(newamount));
		stockMove.setFrom_cell(oldcell);
		stockMove.setTo_cell(newcell);
		stockMove.setOperator(operator);

		java.util.Date date = new java.util.Date();
		java.sql.Date date1 = new java.sql.Date(date.getTime());
		stockMove.setMove_date(date1);
		stockMove.setTextbook(textBook);
		stockMove.setRemark(textBook.getRemark());

		//return BaseDAO.add(stockMove);
		Transaction tx = SessionOperat.createSession().beginTransaction();

		SessionOperat.createSession().save(stockMove);
		tx.commit();
		return true;
	}

	@Override
	public boolean tiaozheng(Operator operator, String tzamount,
			String tzreazon, String tzjiawei) {
		String param[] = { tzjiawei };
		String sql = "from TextBook where cell_id=(select id from Cell where name=?)";
		TextBook textBook = (TextBook) BaseDAO.queryOne(sql, param);
		System.out.println("RuKuDaoimpl.tiaozheng().textbook.id="
				+ textBook.getId());

		StockCheck stockCheck = new StockCheck();

		java.util.Date date = new java.util.Date();
		java.sql.Date date1 = new java.sql.Date(date.getTime());

		stockCheck.setCheck_date(date1);
		stockCheck.setRemark(tzreazon);
		stockCheck.setOperator(operator);
		stockCheck.setAccount(Integer.parseInt(tzamount));
		stockCheck.setCell(textBook.getCell());
		stockCheck.setName(textBook.getName());
		stockCheck.setTextbook(textBook);

		System.out.println("RuKuDaoimpl.tiaozheng().stockchek.textbook.id="
				+ stockCheck.getTextbook().getId());

		//return BaseDAO.add(stockCheck);
		Transaction tx = SessionOperat.createSession().beginTransaction();

		SessionOperat.createSession().save(stockCheck);
		tx.commit();
		return true;
	}

	@Override
	public boolean getBookTeacher(String textbookid, String getamount,
			String getteachername, Operator operator) {
		Deliver_To_Teacher dtt = new Deliver_To_Teacher();
		dtt.setAmount(Integer.parseInt(getamount));
		java.util.Date date = new java.util.Date();
		java.sql.Date date1 = new java.sql.Date(date.getTime());
		dtt.setDeliver_date(date1);
		dtt.setOperator(operator);
		dtt.setTname(getteachername);
		dtt.setTextBook((TextBook) BaseDAO.get(TextBook.class,
				Integer.parseInt(textbookid)));
		
		
		Transaction tx = SessionOperat.createSession().beginTransaction();

		SessionOperat.createSession().save(dtt);
		tx.commit();
		return true;
		//return BaseDAO.add(dtt);
	}

	@Override
	public boolean getBookOther(String textbookid, String getamount,
			String getothername, Operator operator) {
		Deliver_To_Other dto = new Deliver_To_Other();
		dto.setAmount(Integer.parseInt(getamount));
		java.util.Date date = new java.util.Date();
		java.sql.Date date1 = new java.sql.Date(date.getTime());
		dto.setDeliver_date(date1);
		dto.setName(getothername);
		dto.setOperator(operator);
		dto.setTextBook((TextBook) BaseDAO.get(TextBook.class,
				Integer.parseInt(textbookid)));
		//return BaseDAO.add(dto);
		Transaction tx = SessionOperat.createSession().beginTransaction();

		SessionOperat.createSession().save(dto);
		tx.commit();
		return true;
	}

	@Override
	public boolean getBookStation(String textbookid, String getamount,
			String stationname, Operator operator) {
		Station st=new Station();
		String param[]={stationname};
		String sql="from Station where name=?";
		st=(Station) BaseDAO.queryOne(sql, param);
		if(st==null){
			return false;
		}
		Deliver_To_Station dts=new Deliver_To_Station();
		java.util.Date date = new java.util.Date();
		java.sql.Date date1 = new java.sql.Date(date.getTime());
		dts.setDeliver_date(date1);
		dts.setOperator(operator);
		dts.setStation(st);
		dts.setTextBook((TextBook) BaseDAO.get(TextBook.class,
				Integer.parseInt(textbookid)));
		//return BaseDAO.add(dts);
		Transaction tx = SessionOperat.createSession().beginTransaction();

		SessionOperat.createSession().save(dts);
		tx.commit();
		return true;
	}

	@Override
	public int addEditTextbook(String jcmc, String sl, String zz, String isbn,
			String dj, String cbs, String bz, String bc, String jw, String gys) {
		String param1[]={jw};
		String sql1="from Cell where name=?";
		Cell cell=(Cell) BaseDAO.queryOne(sql1, param1);
		if(cell==null){
			return -1;
		}
		
		String param2[]={gys};
		String sql2="from Supplier where name=?";
		Supplier supplier=(Supplier) BaseDAO.queryOne(sql2, param2);
		if(supplier==null){
			return -2;
		}
		
	    TextBook textBook=new TextBook();
	    textBook.setAmount(Integer.parseInt(sl));
	    textBook.setAuthor(zz);
		textBook.setCell(cell);
		textBook.setIsbn(isbn);
		textBook.setName(jcmc);
		textBook.setPrice(Double.parseDouble(dj));
		textBook.setPublish (cbs);
		java.util.Date date = new java.util.Date();
		java.sql.Date date1 = new java.sql.Date(date.getTime());
        textBook.setPublishdate(date1);
        textBook.setRemark(bz);
        textBook.setSupplier(supplier);
        textBook.setVersion(bc);
		if( BaseDAO.add(textBook)){
			return 1;
		}else{
			return 0;
		}
	}

	@Override
	public List<Deliver_To_Student> getDeliver_To_Student(String begintime,
			String endtime) {
		System.out.println("RuKuDaoimpl.getDeliver_To_Student.begintime="+begintime+" endtime="+endtime);
		String param[] = { begintime, endtime };
		String sql = "from Deliver_To_Student where deliver_time between ? and ?";
		return BaseDAO.query(sql, param);
	}

	@Override
	public List<Deliver_To_Station> deliver_querystation(String begintime,
			String endtime) {
		String param[] = { begintime, endtime };
		String sql = "from Deliver_To_Station where deliver_date between ? and ?";
		return BaseDAO.query(sql, param);
	}

	@Override
	public List<Deliver_To_Teacher> deliver_queryteacher(String begintime,
			String endtime) {
		String param[] = { begintime, endtime };
		String sql = "from Deliver_To_Teacher where deliver_date between ? and ?";
		return BaseDAO.query(sql, param);
	}

	 

	 

}
