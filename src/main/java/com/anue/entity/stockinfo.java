package com.anue.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "stockinfotable")
@EntityListeners(AuditingEntityListener.class)
@JsonIgnoreProperties(value = { "createdAt", "updatedAt" }, allowGetters = true)
public class stockinfo implements Serializable {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

//	Id
//	股票名稱
//	股票代碼
//	更新時間
//	建立時間
	
//	@OneToMany(mappedBy = "stock_id", cascade = CascadeType.ALL)

	/**
	* 
	*/
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(name = "stock_name")
	private String name;
	
	@Column(name = "stock_code")
	private String code;

	@Column(name = "RENEW_TIME", nullable = false, length = 20)
	@LastModifiedDate
	private Timestamp renew;

	
	
	@Column(name = "BUILD_TIME", nullable = false, length = 20)
	@CreatedDate
	private Timestamp build;

	@Override
	public String toString() {
		return String.format("stockinfo[id=%f, name='%s', code='%s',renew='%s',	build='%s']", id, name, code, renew,
				build);
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
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
