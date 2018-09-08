 package com.ambow.service.impl;

import java.util.List;

import com.ambow.dao.RuKuDao;
import com.ambow.dao.impl.RuKuDaoImpl;
import com.ambow.model.Cell;
import com.ambow.model.Deliver_To_Other;
import com.ambow.model.Deliver_To_Station;
import com.ambow.model.Deliver_To_Student;
import com.ambow.model.Deliver_To_Teacher;
import com.ambow.model.Package_bookinf;
import com.ambow.model.Stock;
import com.ambow.model.StockCheck;
import com.ambow.model.StockMove;
import com.ambow.model.StockReceive;
import com.ambow.model.Student;
import com.ambow.model.TextBook;
import com.ambow.service.RuKuService;

public class RuKuServiceImpl implements RuKuService {

	RuKuDao dao=new RuKuDaoImpl();
	@Override
	public List<TextBook> serchTextBook(String isbn) {
		return dao.queryTextBookByisbn(isbn);
	}
	//addstockreceive
	@Override
	public int addbooktext(String account,String isbn, String amount, String supplier,
			String jiawei, String remark) {
		return dao.addTextBook(account,isbn,amount,supplier,jiawei,remark);
	}
	//querystockreceive
	@Override
	public List<StockReceive> serchreceivebook(String begintime, String endtime,
			String suppliername, String bookname) {
           
		return dao.serchreceivebook(begintime,endtime,suppliername,bookname);
	}
	@Override
	public List<Stock> serchbynameAndjiawei(String namet1, String jiaweit2) {
		return dao.serchbynameAndjiawei(namet1,jiaweit2);
	}
	@Override
	public List<TextBook> serchByamountAndjiawei(String jiawei, String amount,
			String remark) {
		return dao.serchByamountAndjiawei(jiawei,amount,remark);
	}
	@Override
	public List<StockCheck> querybyOperator(String operater, String begintime,
			String endtime) {
		return dao.querybyOperator(operater,begintime,endtime);
	}
	@Override
	public List<StockMove> queryMovebyJiaweiAndName(String jiawei, String name) {
		return dao.queryMovebyJiaweiAndName(jiawei,name);
	}
	@Override
	public boolean moveByname(String oldname, String newjiawei, String newamount) {
		return dao.moveByname(oldname,newjiawei,newamount);
	}
	@Override
	public boolean addCell(String addname, String addremark) {
		return dao.addCell(addname,addremark);
	}
	@Override
	public List<Cell> queryhuojiaByname(String shelfName) {
		return dao.queryhuojiaByname(shelfName);
	}
	@Override
	public boolean modifyhuojia(String hid, String updatename,
			String updateremark) {
		return dao.modifyhuojia(hid, updatename, updateremark);
	}
	@Override
	public boolean deletehuojiaById(String deleteid) {
		return dao.deletehuojiaById(deleteid);
	}
	@Override
	public List<Package_bookinf> studentbookquery(String xn, String xq,
			String lb, String zy, String cc, String nj) {
		return dao.studentbookquery(xn, xq, lb, zy, cc, nj);
	}
	@Override
	public  Student  studentserch(String banji, String xuehao) {
		return dao.studentserch(banji, xuehao);
	}
	@Override
	public boolean addStudentGetBook(String studentid, String accountid,
			String packageid) {
		return dao.addStudentGetBook(studentid, accountid, packageid);
	}
	 
	@Override
	public List<Package_bookinf> getPackage_book(int packageid) {
		return dao.getPackage_book(packageid);
	}
	@Override
	public boolean deletetextbook(String textbookid) {
		return dao.deletetextbook(textbookid);
	}
	@Override
	public List<Deliver_To_Other> deliver_queryother(String begintime,
			String endtime) {
		return dao.deliver_queryother(begintime, endtime);
	}
	@Override
	public List<Deliver_To_Teacher> deliver_queryteacher(String begintime,
			String endtime, String teachername) {
		return dao.deliver_queryteacher(begintime, endtime, teachername);
	}
	@Override
	public List<Deliver_To_Station> deliver_querystation(String stationname,
			String begintime, String endtime) {
		return dao.deliver_querystation(stationname, begintime, endtime);
	}
	@Override
	public List<StockMove> queryMoves(String begintime, String endtime) {
		return dao.queryMoves(begintime, endtime);
	}
	@Override
	public List<TextBook> serchbook(String name, String author, String publish) {
		return dao.serchbook(name, author, publish);
	}
	@Override
	public List<TextBook> storageMoveQuery(String jiawei, String name) {
		return dao.storageMoveQuery(jiawei, name);
	}
	 
}
