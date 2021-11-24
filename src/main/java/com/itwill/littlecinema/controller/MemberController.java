package com.itwill.littlecinema.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.itwill.littlecinema.controller.intercepter.LoginCheck;
import com.itwill.littlecinema.domain.Member;
import com.itwill.littlecinema.domain.Ticket;
import com.itwill.littlecinema.service.interface_service.MemberService;
import com.itwill.littlecinema.service.interface_service.ReviewService;
import com.itwill.littlecinema.service.interface_service.TicketService;

@Controller
public class MemberController {

	private MemberService memberService;
	private TicketService ticketService;
	private ReviewService reviewService;

	public MemberController(MemberService memberService, TicketService ticketService, ReviewService reviewService) {
		this.memberService = memberService;
		this.ticketService = ticketService;
		this.reviewService = reviewService;
	}

	// SignupController

	@RequestMapping(value = "/signup")
	public String signup() {
		return "signup";
	}

	@PostMapping(value = "signup-action")
	public String signup_post(@ModelAttribute Member member, Model model) throws Exception {
		String forwardPath = "";
		int result = memberService.add(member);
		if (result > 0) {
			forwardPath = "redirect:login-signup";
		} else {
			model.addAttribute("msg", member.getId() + "는 사용중인 아이디입니다.");
			model.addAttribute("fmember", member);
			forwardPath = "login-signup";
		}
		return forwardPath;
	}

	@GetMapping(value = "signup-action")
	public String signup_get() {
		return "redirect:signup";
	}

	// MemberModifyController

	@LoginCheck
	@PostMapping(value = "/member-modify-action")
	public String member_modify_action(@ModelAttribute Member member, HttpSession session) throws Exception {
		String forwardPath = "";
		String loginMemberId = (String) session.getAttribute("sMemberId");
		member.setId(loginMemberId);
		memberService.modify(member);
		forwardPath = "redirect:member-info";
		return forwardPath;

	}

	@LoginCheck
	@GetMapping(value = "/member-modify-action")
	public String member_modify_action_myinfo_get() throws Exception {
		return "redirect:member-info";
	}

	// MemberInfoController

	
	@LoginCheck
	@RequestMapping(value = "/member-info")
	public String member_info(@SessionAttribute("sMemberId") String sMemberId, Model model) throws Exception {
		model.addAttribute("loginMember", memberService.findMember(sMemberId));
		model.addAttribute("reviewList", reviewService.findMyReviews(sMemberId));
		model.addAttribute("ticketList", ticketService.findTicketList(sMemberId));
		return "member-info";
	}

	// LoginController

	@RequestMapping(value = "/login-signup")
	public String login() {
		return "login-signup";
	}

	@PostMapping(value = "/login-action")
	public String login_post(@ModelAttribute Member member, HttpSession session, Model model) throws Exception {
		String forwardPath = "";
		int result = memberService.login(member.getId(), member.getPassword());
		if (result == 0) {
			// 아이디존재X
			model.addAttribute("msg1", "아이디나 패스워드가 일치하지 않습니다");
			model.addAttribute("fmember", member);
			forwardPath = "login-signup";
		} else if (result == 1) {
			// 패쓰워드 불일치
			model.addAttribute("msg2", "아이디나 패스워드가 일치하지 않습니다");
			model.addAttribute("fmember", member);
			forwardPath = "login-signup";
		} else if (result == 2) {
			// 로그인성공
			session.setAttribute("sMemberId", member.getId());
			forwardPath = "redirect:index";
		}
		return forwardPath;
	}
	
	@ResponseBody
	@RequestMapping(value="/duplicate")
	public int isDuplicateMemberId(@RequestParam String id) throws Exception {
		int cnt = memberService.isDuplicateMemberId(id);
		return cnt;
	}
	
	

	@GetMapping(value = "/login-action")
	public String login_get() {
		return "redirect:index";

	}

	@LoginCheck
	@RequestMapping(value = "/logout-action")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index";
	}

	// MemberController

	@PostMapping(value = "/member-remove-action")
	public String member_remove_action(@SessionAttribute("sMemberId") String sMemberId) throws Exception {
		/*
		 * 세션에서 sMemberId를 받은 다음 서비스에서 삭제시킨 후 logout으로 redirect
		 */
		memberService.remove(sMemberId);
		return "redirect:logout-action";
	}

	@LoginCheck
	@PostMapping("member-modify-password-action")
	public String member_modify_password_action(@RequestParam String member_password,
			@RequestParam String member_new_password, @RequestParam String member_new_repassword, HttpSession session)
			throws Exception {
		Member member = memberService.findMember((String) session.getAttribute("sMemberId"));
		if (!member.getPassword().equals(member_password)) {
			return "404";
		} else {
			memberService.updateMemberPassword(member.getId(), member_new_password);
			return "redirect:member-info";
		}

	}
	
	// =========== test page ===============
	@LoginCheck
	@RequestMapping(value = "/member_modify")
	public String member_modify(@SessionAttribute("sMemberId") String sMemberId, Model model) throws Exception {
		System.out.println(memberService.findMember(sMemberId));
		model.addAttribute("loginMember", memberService.findMember(sMemberId));
		return "member_modify";
	}
	
	@LoginCheck
	@RequestMapping(value = "/member_ticket_history")
	public String member_ticket_history(@SessionAttribute("sMemberId") String sMemberId, Model model) throws Exception {
		List<Ticket> memberTicketList = ticketService.findTicketList(sMemberId);

		model.addAttribute("memberTicketList", memberTicketList);

		return "member_ticket_history";
	}
	
}