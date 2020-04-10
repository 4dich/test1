package com.kh.wehan.challenge.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.challenge.model.dao.ChallengeDao;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.challenge.model.vo.searchChallenge;
import com.kh.wehan.common.model.vo.PageInfo;

@Service("cService")
public class ChallengeServiceImpl implements ChallengeService {

	@Autowired
	private ChallengeDao cDao;

	@Override
	public int getListCount() {
		return cDao.getListCount();
	}

	@Override
	public ArrayList<Challenge> selectList(PageInfo pi) {
		return cDao.getSelectList(pi);
	}

	@Override
	public Challenge selectOneDetail(String chId) {
		return cDao.getSelectOneDetail(chId);
	}

	@Override
	public int getSearchListCount(searchChallenge chal) {
		return cDao.getSearchListCount(chal);
	}

	@Override
	public ArrayList<Challenge> selectSearchList(searchChallenge chal, PageInfo pi) {
		return cDao.getSelectSearchList(chal, pi);
	}



}
