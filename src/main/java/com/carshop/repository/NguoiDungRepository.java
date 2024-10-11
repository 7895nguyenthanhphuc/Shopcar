package com.carshop.repository;

import com.carshop.entities.NguoiDung;
import com.carshop.entities.VaiTro;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Set;

public interface NguoiDungRepository extends JpaRepository<NguoiDung, Long> {

    NguoiDung findByEmail(String email);

    @Query("SELECT n FROM NguoiDung n WHERE n.vaiTro IN :vaiTro")
    Page<NguoiDung> findByVaiTro(@Param("vaiTro") Set<VaiTro> vaiTro, Pageable pageable);

    @Query("SELECT n FROM NguoiDung n WHERE n.vaiTro IN :vaiTro")
    List<NguoiDung> findByVaiTro(@Param("vaiTro") Set<VaiTro> vaiTro);


}
