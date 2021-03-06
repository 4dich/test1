package com.kh.wehan.pay.model.service;

import java.util.ArrayList;

import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.pay.model.vo.Pay;


public interface PayService {

	
	int getListCount();

	ArrayList<Pay> selectList(PageInfo pi);

	Challenge slectchDetail(int pId);

	Pay slectPayDetail(int pId);
	
	int insertPay(Pay pay);

	int getSearchListCount(Challenge ch);

	int getSearchListCount(Pay p);

	int refundAll(int[] result);

	int refundOne(int pId);

	ArrayList<Challenge> chSearch(Challenge ch, PageInfo pi);

	ArrayList<Pay> pSearch(Pay p, PageInfo pi);

	ArrayList<Pay> refundYn(PageInfo pi);

	int updatepeoplePlus(Challenge ch);

	int updateCountPlus(Challenge ch);

	ArrayList<Pay> refundNy(PageInfo pi);

	ArrayList<Challenge> chSearchY(Challenge ch, PageInfo pi);

	ArrayList<Challenge> chSearchN(Challenge ch, PageInfo pi);

	ArrayList<Pay> pSearchY(Pay p, PageInfo pi);

	ArrayList<Pay> pSearchN(Pay p, PageInfo pi);

	int deleteChPay(int chId);

	int deleteChllenge(int chId);
}
