package com.laptopshop;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.carshop.entities.DanhMuc;
import com.carshop.entities.DonHang;
import com.carshop.entities.NguoiDung;
import com.carshop.entities.VaiTro;
import com.carshop.repository.DonHangRepository;
import com.carshop.repository.NguoiDungRepository;
import com.carshop.service.DanhMucService;
import com.carshop.service.NguoiDungService;
import com.carshop.service.SanPhamService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class LaptopShopApplicationTests {

	@Autowired
	private DanhMucService dmService;

	@Autowired
	private NguoiDungService nguoiDungService;

	@Autowired
	private NguoiDungRepository ndRepo;

	@Autowired
	private DonHangRepository dhRepo;
	
	@Autowired
	private SanPhamService spService;


//	@Test
//	public void getALlDanhMucTest() {
//		System.out.println(dhRepo.test().size());
//	}

	@Test
	public void getALlDanhMucTest() {
		System.out.println(spService.getSanPhamByTenSanPhamForAdmin("asus",0,10).getContent().size());
	}

}
