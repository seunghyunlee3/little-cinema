package com.itwill.littlecinema.controller.rest;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.littlecinema.domain.Movie;
import com.itwill.littlecinema.domain.Time;
import com.itwill.littlecinema.service.interface_service.MovieService;
import com.itwill.littlecinema.service.interface_service.ReviewService;
import com.itwill.littlecinema.service.interface_service.TimeService;

@RestController
public class MovieRestController {
	
	private TimeService timeService;
	private ReviewService reviewService;
	private MovieService movieService;
	
	public MovieRestController(TimeService timeService, ReviewService reviewService, MovieService movieService) {
		super();
		this.timeService = timeService;
		this.reviewService = reviewService;
		this.movieService = movieService;
	}

	//모든 영화 상영일자 조회
	@RequestMapping(value="/timetable-rest")
	public List<Date> movieDateTableRest() throws Exception {
		return timeService.findAllDate();
	}
	
	@RequestMapping(value = "/timetable-detail-rest", produces = "application/json;charset=utf-8")
	public List<Map<String, Object>> movieTimeTableJSON(@RequestParam String movieDate) throws Exception {
		
		List<Movie> movieList = movieService.findPlayingList();
		List<Map<String, Object>> mapList = new ArrayList<Map<String,Object>>();
		
		for(Movie movie : movieList) {
			//JSON으로 만들어줄 Map객체
			Map<String, Object> jsonMap = new HashMap<>();
			jsonMap.put("movieNo", movie.getMovieNo());
			jsonMap.put("posterImage", movie.getPosterImage());
			jsonMap.put("rating", movie.getRating());
			jsonMap.put("title", movie.getTitle());
			jsonMap.put("dateTimeTable", timeService.findTimeTable(movie.getMovieNo(), movieDate));
			mapList.add(jsonMap);
		}
		return mapList;
	}
	
	@RequestMapping("/rest_avg")
	public Double avg(@RequestParam int movieNo) throws Exception {
		if (reviewService.findAvgScore(movieNo) == null) {
			return 0.0;
		}
		
		return Math.round((reviewService.findAvgScore(movieNo) * 10)) / 10.0;
	}
	
	@RequestMapping("/rest_now_playing")
	public List<Map<String, Object>> indexTimeTableJSON(String movieDate) throws Exception {
		List<Movie> movieList = movieService.findPlayingList();
		List<Map<String, Object>> mapList = new ArrayList<Map<String,Object>>();
		
		for(Movie movie : movieList) {
			//JSON으로 만들어줄 Map객체
			Map<String, Object> jsonMap = new HashMap<>();
			jsonMap.put("movieNo", movie.getMovieNo());
			jsonMap.put("posterImage", movie.getPosterImage());
			jsonMap.put("rating", movie.getRating());
			jsonMap.put("title", movie.getTitle());
			jsonMap.put("genre", movie.getGenre());
			jsonMap.put("runningtime", movie.getRunningtime());
			jsonMap.put("summary", movie.getSummary());
			jsonMap.put("dateTimeTable", timeService.findTimeTable(movie.getMovieNo(), movieDate));
			mapList.add(jsonMap);
		}
		return mapList;
	}
}
