package com.anue.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.anue.repository.stockinfoRepository;
import com.anue.entity.stockinfo;
import com.anue.exception.ResourceNotFoundException;

@RestController
@RequestMapping("/stockinfoApi")
public class stockinfoController {
	@Autowired
	stockinfoRepository stockinfoRepository;

	@GetMapping("/stockinfo")
	public List<stockinfo> getAllNotes() {
		return stockinfoRepository.findAll();
	}

	@PostMapping("/stockinfo")
	public stockinfo createstockinfo(@Valid @RequestBody stockinfo stockinfo) {
		return stockinfoRepository.save(stockinfo);
	}

	@GetMapping("/stockinfo/{id}")
	public stockinfo getstockinfoByObj(@PathVariable(value = "id") Long Id) {
		return stockinfoRepository.findById(Id).orElseThrow(() -> new ResourceNotFoundException("stockinfo", "id", Id));
	}
	@PutMapping("/stockinfo/{id}")
	public stockinfo stockinfo(@PathVariable(value = "id") Long Id, @Valid @RequestBody stockinfo stockinfoDetails) {
		stockinfo stockinfo = stockinfoRepository.findById(Id)
				.orElseThrow(() -> new ResourceNotFoundException("stockinfo", "id", Id));
		stockinfo.setName(stockinfoDetails.getName());
		stockinfo.setCode(stockinfoDetails.getCode());
		stockinfo updatedstockinfo = stockinfoRepository.save(stockinfo);
		return updatedstockinfo;
	}
	
	@DeleteMapping("/stockinfo/{id}")
	public ResponseEntity<?> deletestockinfo(@PathVariable(value = "id") Long Id) {
		stockinfo stockinfo = stockinfoRepository.findById(Id)
	            .orElseThrow(() -> new ResourceNotFoundException("stockinfo", "id", Id));

		stockinfoRepository.delete(stockinfo);

	    return ResponseEntity.ok().build();
	}
	

}
