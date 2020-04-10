package com.kh.wehan.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.member.model.dao.MemberDao;
import com.kh.wehan.member.model.vo.Admin;
import com.kh.wehan.member.model.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao mDao;
	
	@Override
	public Member login(String userId) {
		return mDao.login(userId);
	}
	@Override
	public Admin adminlogin(String userId) {
		return mDao.adminlogin(userId);
	}

	@Override
	public int idCheck(String idCheck) {
		return mDao.idCheck(idCheck);
	}
	@Override
	public int nickCheck(String nickName) {
		return mDao.nickCheck(nickName);
	}
	@Override
	public int AidCheck(String idCheck) {
		return mDao.AidCheck(idCheck);
	}
	@Override
	public int blackCheck(String userId) {
		return mDao.blackCheck(userId);
	}

	@Override
	public int insertMember(Member m) {
		return mDao.insertMember(m);
	}
	
	@Override
	public int memberCount() {
		return mDao.memberCount();
	}

	@Override
	public ArrayList<Member> memberList() {
		return mDao.memberList();
	}
	@Override
	public int updateMember(Member m) {
		return mDao.updateMember(m);
	}


}
