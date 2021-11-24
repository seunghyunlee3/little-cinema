package com.itwill.littlecinema.controller;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.littlecinema.domain.Movie;
import com.itwill.littlecinema.domain.Time;
import com.itwill.littlecinema.service.interface_service.MovieService;
import com.itwill.littlecinema.service.interface_service.ReviewService;
import com.itwill.littlecinema.service.interface_service.TimeService;

@Controller
public class MovieController {

	private MovieService movieService;
	private TimeService timeService;
	private ReviewService reviewService;
	
	public MovieController(MovieService movieService, TimeService timeService, ReviewService reviewService) {
		this.movieService = movieService;
		this.timeService = timeService;
		this.reviewService = reviewService;
	}

	@RequestMapping(value = {"/", "/main", "/index"})
	public String index(Model model) throws Exception {
		List<Date> dateList = timeService.findAllDate();	
		
		model.addAttribute("movieList", movieService.findPlayingList());
		model.addAttribute("firstDate", dateList.get(0));
		
		List<Movie> scheduledMovieList = movieService.findScheduledList();
		model.addAttribute("scheduledMovieList", scheduledMovieList);
		return "index";
	}
	
	
	@RequestMapping(value="/timetable")
	public String movieDateTable(Model model) throws Exception {
		
		List<Date> dateList = timeService.findAllDate();
		model.addAttribute("dateList", dateList);
		
		return "movie-timetable";
	}

	
	//movieNo 없이 요청되면 영화목록으로
	@RequestMapping(value="/movie-info", params="!movieNo")
	public String movie_info_no_param() {
		return "redirect:playing";
	}

	//정상적인 영화 상세 정보 페이지 요청
	@RequestMapping(value="/movie-info", params="movieNo")
	public String movie_info(@RequestParam int movieNo, Model model) throws Exception {
		
		//movieNo으로 영화정보 조회
		Movie movie = movieService.findDetailByNo(movieNo);
		if(null==movie) {
			return "404";
		}
		model.addAttribute("movie", movie);
		//movieNo으로 영화 상영일자 조회
		List<Date> dateList = timeService.findDateByNo(movieNo);
		model.addAttribute("dateList", dateList);
		//movieNo으로 영화 상영시간 조회
		List<Time> timeList = timeService.findMovieTimeList(movieNo);
		model.addAttribute("timeList", timeList);
		//movieNo으로 영화 리뷰 평점 조회
		Double avgScore = reviewService.findAvgScore(movieNo);
		model.addAttribute("avgScore", avgScore);
		//현재상영중영화(사이드바에 적용)
		model.addAttribute("movieList", movieService.findPlayingList());
		//상영예정영화(사이드바에 적용)
		List<Movie> scheduledMovieList = movieService.findScheduledList();
		model.addAttribute("scheduledMovieList", scheduledMovieList);
		return "movie-info";
	}

	
	@RequestMapping("/playing")
	public String playing(Model model) throws Exception {
		model.addAttribute("movieList", movieService.findPlayingList());
		return "movie-playing-list";
	}

	
	// 상영예정영화 리스트
	@RequestMapping("/scheduled-movies")
	public String scheduled_movies(Model model) throws Exception {
		List<Movie> scheduledMovieList = movieService.findScheduledList();
		model.addAttribute("scheduledMovieList", scheduledMovieList);
		return "movie-scheduled-list";
	}
	
	// 상영예정영화 상세
	@RequestMapping(value="/scheduled-movie-info", params="movieNo")
	public String scheduled_movie_info(@RequestParam int movieNo, Model model) throws Exception {
		
		//movieNo으로 영화정보 조회
		Movie movie = movieService.findDetailByNo(movieNo);
		model.addAttribute("movie", movie);
		
		//현재상영중영화(사이드바에 적용)
		model.addAttribute("movieList", movieService.findPlayingList());
		
		//상영예정영화(사이드바에 적용)
		List<Movie> scheduledMovieList = movieService.findScheduledList();
		model.addAttribute("scheduledMovieList", scheduledMovieList);
		
		return "movie-scheduled-info";
	}
	
	//좌석배치도
	@RequestMapping(value = "/seattable")
	public String seattable(Model model) throws Exception {
		return "seattable";
	}
	
	//자주묻는질문
	@RequestMapping(value="/faq")
	public String faq() throws Exception {
		return "faq";
	}
	
	
}
