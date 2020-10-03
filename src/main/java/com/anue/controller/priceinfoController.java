package com.anue.controller;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.anue.entity.priceinfo;
import com.anue.exception.ResourceNotFoundException;
import com.anue.repository.priceinfoRepository;

@RestController
@RequestMapping("/priceinfoApi")
public class priceinfoController {
	@Autowired
	 priceinfoRepository  priceinfoRepository;

	@GetMapping("/priceinfo/all")
	public List<priceinfo> getAllNotes() {
		return priceinfoRepository.findAll();
	}

	
	@GetMapping("/priceinfo")
	public  List<Object> findPriceinfo(
			@RequestParam(value = "stockcode",required=false) String stockcode,
			@RequestParam(value = "stockname",required=false) String stockname,
			@RequestParam(value = "dealdate",required=false) Date dealdate,
			@RequestParam(value = "dealtime",required=false) Timestamp dealtime,
			@RequestParam(value = "timeintervel",required=false) Long timeintervel
			) {

	
		
		if (priceinfoRepository.findPriceinfo(stockcode,stockname,dealdate,dealtime,timeintervel).isEmpty()){
			   throw  new ResourceNotFoundException("priceinfo", "id", "");
				}	
		
		
		return  priceinfoRepository.findPriceinfo(stockcode,stockname,dealdate,dealtime,timeintervel);
		
//		return  priceinfoRepository.findPriceinfo1(stockcode);
				
	}
	

	@PostMapping("/priceinfo")
	public priceinfo createpriceinfo(@Valid @RequestBody priceinfo priceinfo) {
		return priceinfoRepository.save(priceinfo);
	}
	
	
	

}
