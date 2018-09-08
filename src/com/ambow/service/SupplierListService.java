package com.ambow.service;

import java.util.List;

import com.ambow.model.Supplier;

public interface SupplierListService {

	List<Supplier> getAllSupplier(Class<Supplier> class1);

	List<Supplier> getSupplierByName(Class<Supplier> class1, String name);

}
