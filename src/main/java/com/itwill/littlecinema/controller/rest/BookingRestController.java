package com.itwill.littlecinema.controller.rest;

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
import com.itwill.littlecinema.service.interface_service.TimeService;

@RestController
public class BookingRestController {

	/*
	 * 필드 주입은 외부에서 변경이 불가능하다는 단점이 존재하는데,
	 * 
	 * 점차 테스트 코드의 중요성이 부각됨에 따라 필드의 객체를
	 * 수정할 수 없는 필드 주입은 거의 사용되지 않게 되었다고 함.
	 * 
	 * 그렇기에 애플리케이션의 실제 코드와 무관한 테스트 코드나
	 * 설정을 위해 불가피한 경우에만 이용하는게 좋다고 함.
	 * 
	 * 참고: https://mangkyu.tistory.com/125
	 */
	private MovieService movieService;
	private TimeService timeService;
	
	//생성자가 1개만 있을 경우에 @Autowired를 생략해도 주입이 가능
	public BookingRestController(MovieService movieService, TimeService timeService) {
		this.movieService = movieService;
		this.timeService = timeService;
	}
	
	@RequestMapping(value = "MovieTimeTableJSON", produces = "application/json;charset=utf-8")
	public Map<String, Object> movieTimeTableJSON(@RequestParam int movieNo,
												  @RequestParam String movieDate) throws Exception {
		//JSON으로 만들어줄 Map객체
		Map<String, Object> jsonMap = new HashMap<>();
		
		Movie movie = movieService.findDetailByNo(movieNo);
		
		jsonMap.put("moiveNo", movieNo);
		jsonMap.put("posterImage", movie.getPosterImage());
		jsonMap.put("rating", movie.getRating());
		jsonMap.put("title", movie.getTitle());
		jsonMap.put("dateTimeTable", timeService.findTimeTable(movieNo, movieDate));
		
		return jsonMap;
	}

	@RequestMapping("/rest_movie_list")
	public List<Movie> movieList() throws Exception {
		return movieService.findPlayingList();
	}
	
	@RequestMapping("/rest_movie_detail")
	public Movie movieDetail(@RequestParam int movieNo) throws Exception {
		return movieService.findDetailByNo(movieNo);
	}
	
	@RequestMapping("/rest_movie_date_list")
	public List<Date> dateList(@RequestParam int movieNo) throws Exception {
		return timeService.findDateByNo(movieNo);
	}
	
	@RequestMapping("/rest_movie_date_time_list")
	public List<Time> timeList(@RequestParam int movieNo, 
								@RequestParam String movieDate) throws Exception {
		Map<String, Object> movieNoDate = new HashMap<>();
		movieNoDate.put("movieDate", movieDate);
		movieNoDate.put("movieNo", movieNo);
		return timeService.findTimeTableByNoDate(movieNoDate);
	}
	
}
