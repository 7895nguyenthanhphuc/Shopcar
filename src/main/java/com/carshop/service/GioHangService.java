package com.carshop.service;

import com.carshop.entities.GioHang;
import com.carshop.entities.NguoiDung;

public interface GioHangService {
	
	GioHang getGioHangByNguoiDung(NguoiDung n);
	
	GioHang save(GioHang g);
}
