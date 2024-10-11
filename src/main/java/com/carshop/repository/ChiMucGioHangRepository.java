package com.carshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.carshop.entities.ChiMucGioHang;
import com.carshop.entities.GioHang;
import com.carshop.entities.SanPham;

public interface ChiMucGioHangRepository extends JpaRepository<ChiMucGioHang, Long>{
	
	ChiMucGioHang findBySanPhamAndGioHang(SanPham sp,GioHang g);
	
	List<ChiMucGioHang> findByGioHang(GioHang g);
}
