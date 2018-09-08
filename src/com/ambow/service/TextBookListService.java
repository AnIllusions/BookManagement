package com.ambow.service;

import java.util.List;

import com.ambow.model.TextBook;

public interface TextBookListService {

	List<TextBook> getAllBooks(Class<TextBook> class1);

	List<TextBook> getBooksByXXXX(Class<TextBook> class1, String name,
			String author, String publish);


}
