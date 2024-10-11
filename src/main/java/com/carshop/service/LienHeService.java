package com.carshop.service;

import java.text.ParseException;

import org.springframework.data.domain.Page;

import com.carshop.dto.SearchLienHeObject;
import com.carshop.entities.LienHe;

public interface LienHeService {

	Page<LienHe> getLienHeByFilter(SearchLienHeObject object, int page) throws ParseException;

	LienHe findById(long id);
	
	LienHe save(LienHe lh);
	
	int countByTrangThai(String trangThai);

}
