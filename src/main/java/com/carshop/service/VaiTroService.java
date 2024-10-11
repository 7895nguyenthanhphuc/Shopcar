package com.carshop.service;

import com.carshop.entities.VaiTro;

import java.util.List;

public interface VaiTroService {

	VaiTro findByTenVaiTro(String tenVaiTro);
	List<VaiTro> findAllVaiTro();
}
