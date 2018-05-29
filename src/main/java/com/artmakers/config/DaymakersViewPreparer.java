package com.artmakers.config;

import java.security.Principal;
import java.util.Map;

import org.apache.tiles.Attribute;
import org.apache.tiles.AttributeContext;
import org.apache.tiles.preparer.ViewPreparer;
import org.apache.tiles.request.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.artmakers.entity.Member;
import com.artmakers.service.member.MemberService;


public class DaymakersViewPreparer implements ViewPreparer {

	@Autowired
	private MemberService memberService;
	

	@Override
	public void execute(Request tilesRequest, 
			AttributeContext attributeContext) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		// 인증된 사용자의 Course 정보 얻는 방법
	       if (!(auth instanceof AnonymousAuthenticationToken)) {
	         
	         // 인증객체를 통해서 인증에 사용된 id를 얻는다.
	           final UserDetails userDetails = (UserDetails) auth.getPrincipal();
	           final String id = userDetails.getUsername();
	           Member member = memberService.getMember(id);
	           Map<String, Object> model = tilesRequest.getContext("request");
	           model.put("member", member);

	       }

	}
}
