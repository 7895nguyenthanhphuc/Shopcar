package com.carshop.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class SanPham {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	private String tenSanPham;
	private long donGia;
	private int donViKho;
	private int donViBan;
	private String thongTinBaoHanh;
	private String thongTinChung;
	private String xuatSu;
	private String kieuDang;
	private String hopSo;
	private String soKM;
	private String mauXe;
	private String soChoNgoi;
	
	@Transient
	@JsonIgnore
	private MultipartFile hinhAnh;

	@ManyToOne
	@JoinColumn(name = "ma_danh_muc")
	private DanhMuc danhMuc;

	@ManyToOne
	@JoinColumn(name = "ma_hang_sx")
	private HangSanXuat hangSanXuat;
	
	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}
	
	public long getDonGia() {
		return donGia;
	}

	public void setDonGia(long donGia) {
		this.donGia = donGia;
	}

	public int getDonViKho() {
		return donViKho;
	}

	public void setDonViKho(int donViKho) {
		this.donViKho = donViKho;
	}

	public int getDonViBan() {
		return donViBan;
	}

	public void setDonViBan(int donViBan) {
		this.donViBan = donViBan;
	}
	
	public String getThongTinBaoHanh() {
		return thongTinBaoHanh;
	}

	public void setThongTinBaoHanh(String thongTinBaoHanh) {
		this.thongTinBaoHanh = thongTinBaoHanh;
	}

	public String getThongTinChung() {
		return thongTinChung;
	}

	public void setThongTinChung(String thongTinChung) {
		this.thongTinChung = thongTinChung;
	}
	
	public String getXuatSu() {
		return xuatSu;
	}

	public void setXuatSu(String xuatSu) {
		this.xuatSu = xuatSu;
	}
	
	public String getKieuDang() {
		return kieuDang;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	
	public void setKieuDang(String kieuDang) {
		this.kieuDang = kieuDang;
	}

	public String getHopSo() {
		return hopSo;
	}

	public void setHopSo(String hopSo) {
		this.hopSo = hopSo;
	}

	public String getSoKM() {
		return soKM;
	}

	public void setSoKM(String soKM) {
		this.soKM = soKM;
	}

	public String getMauXe() {
		return mauXe;
	}

	public void setMauXe(String mauXe) {
		this.mauXe = mauXe;
	}

	public String getSoChoNgoi() {
		return soChoNgoi;
	}

	public void setSoChoNgoi(String soChoNgoi) {
		this.soChoNgoi = soChoNgoi;
	}
	
	public DanhMuc getDanhMuc() {
		return danhMuc;
	}

	public void setDanhMuc(DanhMuc danhMuc) {
		this.danhMuc = danhMuc;
	}
	
	public HangSanXuat getHangSanXuat() {
		return hangSanXuat;
	}

	public void setHangSanXuat(HangSanXuat hangSanXuat) {
		this.hangSanXuat = hangSanXuat;
	}
	
	public MultipartFile getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(MultipartFile hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

}
