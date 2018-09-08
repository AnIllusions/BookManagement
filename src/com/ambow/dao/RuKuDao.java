package com.ambow.dao;

import java.util.List;

import com.ambow.model.Cell;
import com.ambow.model.Deliver_To_Other;
import com.ambow.model.Deliver_To_Station;
import com.ambow.model.Deliver_To_Student;
import com.ambow.model.Deliver_To_Teacher;
import com.ambow.model.Operator;
import com.ambow.model.Package_bookinf;
import com.ambow.model.Stock;
import com.ambow.model.StockCheck;
import com.ambow.model.StockMove;
import com.ambow.model.StockReceive;
import com.ambow.model.Student;
import com.ambow.model.TextBook;

public interface RuKuDao {

	List<TextBook> queryTextBookByisbn(String isbn);

	int addTextBook(String account,String isbn, String amount, String supplier, String jiawei,
			String remark);

	List<StockReceive> serchreceivebook(String begintime, String endtime, String suppliername,
			String bookname);

	List<Stock> serchbynameAndjiawei(String namet1, String jiaweit2);

	List<TextBook> serchByamountAndjiawei(String jiawei, String amount, String remark);

	List<StockCheck> querybyOperator(String operater, String begintime, String endtime);

	List<StockMove> queryMovebyJiaweiAndName(String jiawei, String name);

	boolean moveByname(String oldname, String newjiawei, String newamount);

	boolean addCell(String addname, String addremark);

    List<Cell> queryhuojiaByname(String shelfName);

	boolean modifyhuojia(String hid, String updatename,
			String updateremark);

	boolean deletehuojiaById(String deleteid);

	List<Package_bookinf> studentbookquery(String xn, String xq, String lb,
			String zy, String cc, String nj);

	 Student  studentserch(String banji, String xuehao);

	boolean addStudentGetBook(String studentid, String accountid,
			String packageid);

	List<Deliver_To_Student> getDeliver_To_Student(String lb, String zy, String cc,
			String nj, String bj, String begintime, String endtime);

	List<Package_bookinf> getPackage_book(int packageid);

	boolean deletetextbook(String textbookid);

	List<Deliver_To_Other> deliver_queryother(String begintime, String endtime);

	List<Deliver_To_Teacher> deliver_queryteacher(String begintime,
			String endtime, String teachername);

	List<Deliver_To_Station> deliver_querystation(String stationname,
			String begintime, String endtime);

	List<StockMove> queryMoves(String begintime, String endtime);

	List<TextBook> serchbook(String name, String author, String publish);

	List<TextBook> storageMoveQuery(String jiawei, String name);

	boolean stockaddMove(Operator operator, String oldjiawei, String oldname,
			String newjiawei, String newamount);

	boolean tiaozheng(Operator operator, String tzamount, String tzreazon, String tzjiawei);

	boolean getBookTeacher(String textbookid, String getamount,
			String getteachername, Operator operator);

	boolean getBookOther(String textbookid, String getamount,
			String getothername, Operator operator);

	boolean getBookStation(String textbookid, String getamount, String stationname,
			Operator operator);

	int addEditTextbook(String jcmc, String sl, String zz, String isbn,
			String dj, String cbs, String bz, String bc, String jw, String gys);

	List<Deliver_To_Student> getDeliver_To_Student(String begintime,
			String endtime);

	List<Deliver_To_Station> deliver_querystation(String begintime,
			String endtime);

	List<Deliver_To_Teacher> deliver_queryteacher(String begintime,
			String endtime);


}
