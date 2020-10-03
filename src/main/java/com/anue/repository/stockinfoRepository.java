package com.anue.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.anue.entity.stockinfo;


@Repository
public interface stockinfoRepository extends JpaRepository<stockinfo,Long>{
	
}