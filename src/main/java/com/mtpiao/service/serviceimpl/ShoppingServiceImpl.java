package com.mtpiao.service.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mtpiao.dao.ShoppingDao;
import com.mtpiao.entity.Shopping;
import com.mtpiao.service.ShoppingService;

@Service
public class ShoppingServiceImpl implements ShoppingService {
	@Autowired
	ShoppingDao shoppingdao;

	@Override
	public boolean addshopping(Shopping shopping) {
	//	System.out.println(shopping.getSuid() + "," + shopping.getStid());

		Shopping inShopping = findInShopping(shopping);
//		System.out.println(inShopping);
		if (inShopping == null) {
			if (shoppingdao.addshopping(shopping)) {
				return true;
			}
			return false;
		} else {
			int shoppingNum = updateShoppingNum(shopping);
	//		System.out.println(shoppingNum);
			if (shoppingNum == 1) {
				return true;
			}
			return false;
		}

	}

	@Override
	public List<Shopping> list(int suid) {
		List<Shopping> shoppings = shoppingdao.list(suid);
		return shoppings;
	}

	@Override
	public boolean deleteBySid(int sid) {
		if (shoppingdao.deleteBySid(sid)) {
			return true;
		}
		;
		return false;
	}

	@Override
	public boolean prominus(int sid, int suid) {
		// System.out.println("prominus:"+sid+","+suid);
		if (shoppingdao.prominus(sid, suid) > 0) {
			// System.out.println(shoppingdao.prominus(sid, suid));
			return true;
		}
		return false;
	}

	@Override
	public boolean proplus(int sid, int suid) {
		// System.out.println("proplus:"+sid+","+suid);
		if (shoppingdao.proplus(sid, suid) > 0) {
			// System.out.println(shoppingdao.proplus(sid, suid));
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteAll(int suid) {
		if (shoppingdao.deleteAll(suid) > 0) {
			return true;
		}
		return false;
	}

	@Override
	public Shopping findInShopping(Shopping shopping) {
		Shopping inShopping = shoppingdao.findInShopping(shopping);
		return inShopping;
	}

	@Override
	public int updateShoppingNum(Shopping shopping) {
		System.out.println(shopping.getSuid());
		System.out.println(shopping.getStid());
		
		int shoppingNum = shoppingdao.updateShoppingNum(shopping);
		return shoppingNum;
	}
}
