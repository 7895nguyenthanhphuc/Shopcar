package com.carshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.carshop.entities.VaiTro;

public interface VaiTroRepository extends JpaRepository<VaiTro, Long> {

	VaiTro findByTenVaiTro(String tenVaiTro);

}

