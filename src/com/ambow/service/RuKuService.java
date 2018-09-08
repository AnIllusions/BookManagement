package com.ambow.service;

import java.util.List;

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

public interface RuKuService {

	List<TextBook> serchTextBook(String isbn);

	int addbooktext(String account,String isbn, String amount, String supplier, String jiawei,
			String remark);

	List<StockReceive> serchreceivebook(String begintime, String endtime, String suppliername,
			String bookname);

	List<Stock> serchbynameAndjiawei(String namet1, String jiaweit2);

	List<TextBook> serchByamountAndjiawei(String jiawei, String amount,
			String remark);

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



}
