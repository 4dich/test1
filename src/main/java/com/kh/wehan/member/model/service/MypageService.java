package com.kh.wehan.member.model.service;

import java.util.ArrayList;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.member.model.vo.Follow;
import com.kh.wehan.member.model.vo.Member;
import com.kh.wehan.member.model.vo.Mypage;

public interface MypageService {
	/**
	 * 1-1. 마이페이지 프로필 조회
	 * @return
	 */
	public Mypage my_profileView(String userId);

	/**
	 * 1-2. 나를 팔로우하는 사람수 조회
	 * @param userId
	 * @return
	 */
	public int followCount(String userId);

	/**
	 * 1-3. 내가 팔로우하는 사람수 조회
	 * @param userId
	 * @return
	 */
	public int followingCount(String userId);

	/**
	 * 1-4. 마이페이지 프로필 업데이트
	 * @param mp
	 * @return
	 */
	public int updateProfile(Mypage mp);

	/**
	 * 2-1. 마이페이지 마이챌린지 리스트 조회
	 * @param userId
	 * @return
	 */
	public ArrayList<Challenge> selectListCh(String userId);

	/**
	 * 2-2. 마이페이지 마이챌린지, 챌린지당 인증글 개수 조회
	 * @param chId
	 * @return
	 */
	public int certifyCount(Certify ce);

	/**
	 * 4-1. 다른사람 마이페이지의 회원정보 가져오기
	 * @param otherId
	 * @return
	 */
	public Member selectMember(String otherId);

	/**
	 * 4-2. 다른사람 마이페이지에서 언팔로우
	 * @param f
	 * @return
	 */
	public int my_unfollow(Follow f);


}
