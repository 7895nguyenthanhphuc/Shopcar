package com.carshop.dto;


import org.springframework.web.multipart.MultipartFile;

public class SanPhamDto {

	private String id;

	private String tenSanPham;
	private String donGia;
	private String donViKho;
	private String thongTinBaoHanh;
	private String thongTinChung;
	private String xuatSu;
	private String kieuDang;
	private String hopSo;
	private String soKM;
	private String mauXe;
	private String soChoNgoi;

	private long danhMucId;
	private long nhaSXId;
	
	private MultipartFile hinhAnh;


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	public String getDonGia() {
		return donGia;
	}


	public void setDonGia(String donGia) {
		this.donGia = donGia;
	}

	public String getDonViKho() {
		return donViKho;
	}


	public void setDonViKho(String donViKho) {
		this.donViKho = donViKho;
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

	public long getDanhMucId() {
		return danhMucId;
	}

	public void setDanhMucId(long danhMucId) {
		this.danhMucId = danhMucId;
	}

	public long getNhaSXId() {
		return nhaSXId;
	}

	public void setNhaSXId(long nhaSXId) {
		this.nhaSXId = nhaSXId;
	}

	public MultipartFile getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(MultipartFile hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	@Override
	public String toString() {
		return "SanPhamDto [id=" + id + ", tenSanPham=" + tenSanPham + ", donGia=" + donGia + ", donViKho=" + donViKho
				+ ", thongTinBaoHanh=" + thongTinBaoHanh + ", thongTinChung=" + thongTinChung + ", xuatSu=" + xuatSu
				+ ", kieuDang=" + kieuDang + ", hopSo=" + hopSo + ", soKM=" + soKM + ", mauXe=" + mauXe
				+ ", soChoNgoi=" + soChoNgoi + ", danhMucId=" + danhMucId + ", nhaSXId=" + nhaSXId + ", hinhAnh="
				+ hinhAnh + "]";
	}
}
