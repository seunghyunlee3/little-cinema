let calcAvg = function (entity) {
	$(entity).each(function(i, element) {
		$.ajax({
			url: "rest_avg",
			data: "movieNo=" + $(element).attr("movieNo"),
			success: function(result) {
				$(entity +"[movieNo="+ $(element).attr("movieNo") +"] .info.info-short .info-text.avg").text(result);
			}
		});
	});
}

let insertVideo = function (entity) {
	let	video = {
		"1" : "https://www.youtube.com/watch?v=EBRf5RSRwz8",
		"2" : "https://www.youtube.com/watch?v=V6aWnlhH6ug",
		"3" : "https://www.youtube.com/watch?v=NX963VjqOSA",
		"4" : "https://www.youtube.com/watch?v=SvgssDtmqfQ",
		"5" : "https://www.youtube.com/watch?v=kCzbDJ2G_B8",
		"6" : "https://www.youtube.com/watch?v=-5Dc8EMVYBo",
		"7" : "https://www.youtube.com/watch?v=zGNxA4IDSyQ",
		"8" : "https://www.youtube.com/watch?v=Kwdb2UO9PCI",
		"9" : "https://www.youtube.com/watch?v=BdkSkI61aGo",
		"10" : "https://www.youtube.com/watch?v=q4XcfUHNCis",
		"11" : "https://www.youtube.com/watch?v=uNuVQoIKOFM",
		"12" : "https://www.youtube.com/watch?v=z_LMLtdNVxA"
	}
	
	$(entity).each(function(i, element) {
		$(element).find("div.entity-play a").attr("href", video[$(element).attr("movieNo") ]);
	});
}

let insertImage = function (entity){
	let image = {
		"9": "https://i1.wp.com/thefutureoftheforce.com/wp-content/uploads/2021/08/Marvel-Studios-Eternals-Header.jpg?fit=1920%2C1080&ssl=1",
		"10": "https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211021_88%2F1634778460505oJEks_JPEG%2Fmovie_image.jpg",
		"11": "https://d113476tpvf3xp.cloudfront.net/2021/upload/9c/af/9caf29221f455bca8d487853a047d13c.jpg",
		"12": "https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211022_261%2F1634888892079rr59M_JPEG%2Fmovie_image.jpg",
	}
	$(entity).each(function(i, element) {
		$(element).find("div.entity-preview img.embed-responsive-item").attr("src", image[$(element).attr('movieNo')]);
	});
}

let nowPlayingList = function (date) {
	$.ajax({
	    url: "rest_now_playing",
	    data: "movieDate=" + date ,
	    success: function (data) {
	        let html = "";
	        $.each(data, function (i, movie) {
				if(movie.dateTimeTable.length>0) {
	                html += `
	              <article class="movie-line-entity playing" movieNo="${movie.movieNo}">
	                       <div class="movie-poster entity-poster" data-role="hover-wrap">
	                           <div class="embed-responsive embed-responsive-poster">
	                               <img class="embed-responsive-item" src="${movie.posterImage}" alt="" />
	                           </div>
	                           <div class="d-over bg-theme-lighted collapse animated faster" data-show-class="fadeIn show"
	                               data-hide-class="fadeOut show">
	                               <div class="entity-play">
	                                   <a class="action-icon-theme action-icon-bordered rounded-circle"
	                                       href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
	                                       <span class="icon-content"><i class="fas fa-play"></i></span>
	                                   </a>
	                               </div>
	                           </div>
	                       </div>
	                       
	                       <div class="entity-content">
	                           <h4 class="entity-title">
	                               <a class="content-link" href="movie-info?movieNo=${movie.movieNo}">${movie.title}</a>
	                           </h4>
	                           <div class="entity-category">
	                               ${movie.genre}
	                           </div>
	                           <div class="entity-info">
	                               <div class="info-lines">
	                                   <div class="info info-short">
	                                       <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
	                                       <span class="info-text avg">평점</span>
	                                       <span class="info-rest">/ 5</span>
	                                   </div>
	                                   <div class="info info-short">
	                                       <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
	                                       <span class="info-text">${movie.runningtime}</span>
	                                   </div>
	                               </div>
	                           </div>
	                           <p class="text-short entity-text">
	                              ${movie.summary}
	                           </p>
	                       </div>
	                       <div class="entity-extra">
	                           <div class="text-uppercase entity-extra-title">Showtime</div>
	                           <div class="entity-showtime">
	                               <div class="showtime-wrap">
	              `;
	               $.each(movie.dateTimeTable, function(i, time) {
	                    html += `
	                   <div class="showtime-item">
	                       <a class="btn-time btn time-btn" aria-disabled="false" href="booking?timeCode=${time.timeCode}">
	                       ${time.screen.screenName}<hr>
	                       ${time.startTime}<br>
							<p style="font-size:10px">잔여석 ${96-time.bookedCount}석</p>
	                       </a>
	                   </div>
	                   `;
	                });
	                html += `
	                         </div>
	                     </div>
	                 </div>
	             </article>
	             `;
				}	//if문
	        });
	        $("#list-table").html(html);
     		calcAvg("article.movie-line-entity.playing");
     		insertVideo("article.movie-line-entity");
	 		magPop();

	    }
	});
}