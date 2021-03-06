package com.kh.wehan.pay.model.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.common.Pagination;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.vo.Member;
import com.kh.wehan.pay.model.service.PayService;
import com.kh.wehan.pay.model.vo.Pay;

@Controller
public class PayController {

	@Autowired
	private PayService pService;
	
	@RequestMapping("paylist.do")
	public ModelAndView payList(ModelAndView mv,
			@RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) {
		
		int listCount = pService.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
		ArrayList<Pay> list = pService.selectList(pi);
		
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("admin/ad_payList");
		
		return mv;
	}
	
	@RequestMapping("paydetail.do")
	public ModelAndView payDetail(ModelAndView mv,int pId) {
		 
		Pay p = pService.slectPayDetail(pId);
		Challenge ch = pService.slectchDetail(pId);
		String str = p.getmList().get(0).getAccount();
		String[] starr = str.split(",");
	
		Object bank = starr[0];
		Object number = starr[2];
		
		mv.addObject("bank",bank);
		mv.addObject("number",number);
		mv.addObject("p",p);
		mv.addObject("ch",ch);
		mv.setViewName("admin/ad_payDetail");	
		
		return mv;
	}
	
	@RequestMapping("payinfo.do")
	public ModelAndView payinfo(Challenge ch,String chName,int price,String chId, 
			@RequestParam(value="viewPage",required=false,defaultValue="0")int viewPage,
			ModelAndView mv,HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		mv.addObject("ch",ch);
		mv.addObject("m",m);
		mv.addObject("viewPage", viewPage); // 챌린지 등록시 결제확인용
		mv.setViewName("user/payAgree");
		
		return mv;
	}
	
	@RequestMapping("payments.do")
	public void pay(HttpServletRequest request,HttpServletResponse response) throws IOException {

		int viewPage = Integer.parseInt(request.getParameter("viewPage"));

		String chId = request.getParameter("chId");
		String userId = request.getParameter("userId");
		int price = Integer.parseInt(request.getParameter("price"));
		String pmethod = request.getParameter("pmethod");
		String chName = request.getParameter("chName");
		String chPeople = request.getParameter("chPeople");
		String peoplePlus = chPeople.concat(","+userId);
		String[] peopleArr =  peoplePlus.split(",");
		int count = peopleArr.length-1;
		
		Pay pay = new Pay();
		pay.setChId(chId);
		pay.setUserId(userId);
		pay.setPrice(price);
		pay.setPmethod(pmethod);
		pay.setChName(chName);
		int payResult = pService.insertPay(pay);
		
		Challenge ch = new Challenge();
		ch.setChPeople(peoplePlus);
		ch.setChId(chId);
		ch.setChPeopleCount(count);
		
		if(payResult>0) {
	    int Plus = pService.updatepeoplePlus(ch); 
	    int CountPlus = pService.updateCountPlus(ch);
	    System.out.println("결제성공");
		String result = "index.jsp";
		response.getWriter().print(result);
		}else{
		System.out.println("결제실패");	
		}
	}
	
//	@RequestMapping("plistSearch.do")
//	public ModelAndView plistSearch(ModelAndView mv,@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage
//			,String selecter,String searchValue) {
//		
//		int listCount = 0;
//		
//		PageInfo pi = null;
//		
//		Pay p = new Pay();
//		Challenge ch = new Challenge();
//		ArrayList<Challenge> chsearch = null;
//		ArrayList<Pay> psearch = null;
//		if(selecter.equals("userId")) {
//			p.setUserId(searchValue);
//		}
//		if(selecter.equals("chName")) {
//			ch.setChName(searchValue);
//		}
//		if(selecter.equals("pNo")) {
//			p.setpId(searchValue);
//		}
//		
//		if(ch.getChName() != null) {
//			listCount = pService.getSearchListCount(ch); //1
//			pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
//			chsearch = pService.chSearch(ch,pi);
//			mv.addObject("list",chsearch);
//			mv.addObject("pi",pi);
//		}
//		
//		if(p.getUserId() != null || p.getpId() !=null) {
//			listCount = pService.getSearchListCount(p);
//		    pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
//		    psearch = pService.pSearch(p,pi);
//		    mv.addObject("list",psearch);
//		    mv.addObject("pi",pi);
//		}
//			
//		mv.setViewName("admin/ad_payList");
//	
//		return mv;
//	}
	
	@ResponseBody
	@RequestMapping("refund.do")
	public String refund(int[] result) {
		
		int refundAll = pService.refundAll(result);
		if(refundAll > 0) {
			return "success";
		}else{
			return "error";
		}
	
	}
	
	@ResponseBody
	@RequestMapping("refundOne.do")
	public String refundOne(int pId) {
		
		int refund = pService.refundOne(pId);
		if(refund > 0) {
			return "success";
		}else{
			return "error";
		}
	}
	
	@RequestMapping("refundYn.do")
	public void refundYn(HttpServletResponse response ,@RequestParam(value="currentPage",required=false,defaultValue="1") 
	int currentPage,int reIdx,String selecter,String searchValue) throws JsonIOException, IOException {
		response.setCharacterEncoding("UTF-8");
		int listCount = 0;
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		ArrayList<Pay> list = null;
		Map ad = new HashMap();
		if(searchValue == null || searchValue == "") {
			listCount = pService.getListCount();
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
			
			ad.put("pi",pi);
			
			if(reIdx != 0) { // reIdx값이 0이거나 1일때 y정렬 n정렬
				list = pService.refundYn(pi);
			}else {
				list = pService.refundNy(pi);
			}
			ad.put("list",list);
		}else {
			PageInfo pi = null;
			Pay p = new Pay();
			Challenge ch = new Challenge();
			ArrayList<Challenge> chsearch = null;
			ArrayList<Pay> psearch = null;
			if(selecter.equals("userId")) {
				p.setUserId(searchValue);
			}if(selecter.equals("chName")) {
				ch.setChName(searchValue);
			}if(selecter.equals("pNo")) {
				p.setpId(searchValue);
			}if(selecter.equals("chId")) {
				ch.setChId(searchValue);
			}
			if(ch.getChName() != null || ch.getChId() != null) { // 검색 값이 있는지 확인
				listCount = pService.getSearchListCount(ch); //1
				pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
				if(reIdx == 1) { // reIdx값이 0이거나 1일때 y정렬 n정렬
				chsearch = pService.chSearchY(ch,pi);
				}else if(reIdx == 0){
				chsearch = pService.chSearchN(ch,pi);	
				}else {
					listCount = pService.getSearchListCount(ch); //1
					pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
					chsearch = pService.chSearch(ch,pi);
				}
				ad.put("list",chsearch);
				ad.put("pi",pi);
			}
			if(p.getUserId() != null || p.getpId() !=null) { // 검색 값이 있는지 확인
				listCount = pService.getSearchListCount(p);
			    pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
			    if(reIdx == 1) { // reIdx값이 0이거나 1일때 y정렬 n정렬
			    psearch = pService.pSearchY(p,pi);
			    }else if(reIdx == 0){
			    psearch = pService.pSearchN(p,pi);	
			    }else {
			    	listCount = pService.getSearchListCount(p);
				    pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
				    psearch = pService.pSearch(p,pi);
			    }
			    ad.put("list",psearch);
			    ad.put("pi",pi);
			}
		}
		response.setContentType("applecation/json charset=utf-8"); 
		gson.toJson(ad,response.getWriter());
	}
	
	@RequestMapping("deleteCh.do")
	public String deleteCh(int chId) {
		
		int deleteChPay = pService.deleteChPay(chId);
		int deleteChallenge = pService.deleteChllenge(chId);
		System.out.println("deleteChPay : " + deleteChPay);
		System.out.println("deleteChallenge : " + deleteChallenge);
		if(deleteChallenge > 0) {
		return "redirect:clist.do";
		}else{
		System.out.println("실패");	
		return "errorPage";
		}
	}	
}
