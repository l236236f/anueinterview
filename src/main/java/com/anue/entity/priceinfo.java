package com.anue.entity;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.*;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import javax.persistence.Temporal;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;


@Entity
@Table(name = "priceinfotable")
@EntityListeners(AuditingEntityListener.class)
@JsonIgnoreProperties(value = { "createdAt", "updatedAt" }, allowGetters = true)
public class priceinfo implements Serializable{
	private static final long serialVersionUID = 1L;
//	order id
//	股票 Id
//	交易日期
//	交易時間
//	交易價格
//	交易量
//	更新時間
//	建立時間
	
//	@ManyToOne
//	@JoinColumn(name="stockinfotable")

	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "order_id")
	private long id;
	
	@Column(name = "stock_code")
	private String stockcode;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "deal_date")
	private Date dealdate;
	
	@Column(name = "deal_time")
	private Timestamp dealtime;
	
	@Column(name = "deal_price")
	private String dealprice;
	
	@Column(name = "deal_volume")
	private String dealvolume;
	
	@Column(name = "renew_time", nullable = false, length = 20)
	@LastModifiedDate
	private Timestamp renew;
	
	@Column(name = "build_time", nullable = false, length = 20)
	@CreatedDate
	private Timestamp build;

	
	
	
	
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getStockcode() {
		return stockcode;
	}

	public void setStockcode(String stockcode) {
		this.stockcode = stockcode;
	}

	public Date getDealdate() {
		return dealdate;
	}

	public void setDealdate(Date dealdate) {
		this.dealdate = dealdate;
	}

	public Timestamp getDealtime() {
		return dealtime;
	}

	public void setDealtime(Timestamp dealtime) {
		this.dealtime = dealtime;
	}

	public String getDealprice() {
		return dealprice;
	}

	public void setDealprice(String dealprice) {
		this.dealprice = dealprice;
	}

	public String getDealvolume() {
		return dealvolume;
	}

	public void setDealvolume(String dealvolume) {
		this.dealvolume = dealvolume;
	}

	public Timestamp getRenew() {
		return renew;
	}

	public void setRenew(Timestamp renew) {
		this.renew = renew;
	}

	public Timestamp getBuild() {
		return build;
	}

	public void setBuild(Timestamp build) {
		this.build = build;
	}

	
	
	
	
}
