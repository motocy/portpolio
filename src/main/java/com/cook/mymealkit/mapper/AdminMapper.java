package com.cook.mymealkit.mapper;

import java.util.List;

import com.cook.mymealkit.domain.ChartVO;
import com.cook.mymealkit.domain.UserVO;

public interface AdminMapper {

	List<ChartVO> getUserCountByRegDate(ChartVO vo);

	List<ChartVO> getUserBuyCountByBuyDate(ChartVO vo);
	
	//public UserVO adminpage(UserVO vo);// 관리자페이지
}
