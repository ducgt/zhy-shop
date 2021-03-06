/*
 * Copyright 2005-2016 shopxx.net. All rights reserved.
 * Support: http://www.shopxx.net
 * License: http://www.shopxx.net/license
 */
package net.shopxx.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import net.shopxx.Order;
import net.shopxx.dao.SnDao;
import net.shopxx.dao.SvcDao;
import net.shopxx.entity.Sn;
import net.shopxx.entity.Store;
import net.shopxx.entity.StoreRank;
import net.shopxx.entity.Svc;
import net.shopxx.service.SvcService;

/**
 * Service - 服务
 * 
 * @author SHOP++ Team
 * @version 5.0
 */
@Service("svcServiceImpl")
public class SvcServiceImpl extends BaseServiceImpl<Svc, Long> implements SvcService {

	@Resource(name = "svcDaoImpl")
	private SvcDao svcDao;
	@Resource(name = "snDaoImpl")
	private SnDao snDao;

	@Transactional(readOnly = true)
	public Svc findBySn(String sn) {
		return svcDao.findBySn(sn);
	}

	@Transactional(readOnly = true)
	public Svc findTheLatest(Store store, String promotionPluginId, StoreRank storeRank) {

		List<Order> orderList = new ArrayList<Order>();
		orderList.add(new Order("createdDate", Order.Direction.desc));
		List<Svc> serviceOrders = svcDao.find(store, promotionPluginId, storeRank, orderList);

		return CollectionUtils.isNotEmpty(serviceOrders) == true ? serviceOrders.get(0) : null;
	}

	@Override
	@Transactional
	public Svc save(Svc svc) {
		Assert.notNull(svc);

		svc.setSn(snDao.generate(Sn.Type.platformService));
		Svc pSvc = super.save(svc);
		return pSvc;
	}

}