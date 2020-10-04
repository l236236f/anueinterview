package com.anue.repository;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.anue.entity.priceinfo;




@Repository
public interface priceinfoRepository extends JpaRepository<priceinfo,Long>,JpaSpecificationExecutor<priceinfo>{

final ConcurrentMap<Long,priceinfo>  priceinfoRepository = new ConcurrentHashMap<>();

@Query(nativeQuery = true,value=
		"select order_id,stock_name,priceinfotable.stock_code,deal_date,deal_time,deal_price,deal_volume,priceinfotable.renew_time,priceinfotable.build_time "+
		" from priceinfotable "+
		" join stockinfotable "+
		" on priceinfotable.stock_code = stockinfotable.stock_code " +
		" WHERE IF(ifnull( ?1 ,'') != '', priceinfotable.stock_code = ?1 ,1=1) "+
		" AND IF(ifnull( ?2 ,'') != '', stockinfotable.stock_name LIKE CONCAT('%',?2,'%'),1=1) " +
		" AND IF(ifnull( ?3 ,'') != '', priceinfotable.deal_date = ?3, 1=1) " +
		" AND IF(ifnull( ?4 ,'') != '' AND ifnull( ?5 ,'') != ''  , ABS( unix_timestamp(priceinfotable.deal_time) - unix_timestamp(?4) ) < (?5/2) ,1=1) ")
public List<Object> findPriceinfo(String stockcode, String name ,Date dealdate,Timestamp dealtime,Long timeintervel);




}