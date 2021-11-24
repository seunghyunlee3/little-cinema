package com.itwill.littlecinema.controller.intercepter;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthLoginAnnotationInterceptor extends HandlerInterceptorAdapter {
	
	public AuthLoginAnnotationInterceptor() {
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 1. handler 종류 확인
		// 우리가 관심 있는 것은 Controller에 있는 메서드이므로 HandlerMethod 타입인지 체크
		if (handler instanceof HandlerMethod == false) {
			// return true이면 Controller에 있는 메서드가 아니므로, 그대로 컨트롤러로 진행
			// static resource(css,js,html,image)
			return true;
		}
		// 2.형 변환
		HandlerMethod handlerMethod = (HandlerMethod) handler;
		// 3. @LoginCheck 받아오기
		LoginCheck loginCheck = handlerMethod.getMethodAnnotation(LoginCheck.class);

		// 4. method에 @LoginCheck가 없는 경우, 즉 인증이 필요 없는 요청
		if (loginCheck == null) {
			return true;
		}
		// 5. @LoginCheck가 있는 경우이므로, 세션이 있는지 체크
		// session 객체를 가져옴
		HttpSession session = request.getSession();
		// login처리를 담당하는 사용자 정보를 담고 있는 객체를 가져옴
		String sMemberId = (String) session.getAttribute("sMemberId");

		if (sMemberId == null) {
			// 로그인이 안되어 있는 상태임으로 로그인 폼으로 다시 돌려보냄(redirect)
		    response.setContentType("text/html;charset=utf-8");
		    PrintWriter out = response.getWriter();
		    out.println("<script>");
		    out.println("alert('로그인이 필요합니다.');");  
		    out.println("location.href='main';");
		    out.println("</script>");
		    out.flush();
		    out.close();
			//response.sendRedirect("main");
			return false; // 더이상 컨트롤러 요청으로 가지 않도록 false로 반환함
		}

		// preHandle의 return은 컨트롤러 요청 uri로 가도 되냐 안되냐를 허가하는 의미임
		// 따라서 true로하면 컨트롤러 uri로 가게 됨.
		return true;
	}

	// 컨트롤러가 수행되고 화면이 보여지기 직전에 수행되는 메서드
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		super.afterCompletion(request, response, handler, ex);
	}
}