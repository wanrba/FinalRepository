//$(document).ready(function() {	/**	 * 스케줄 관리를 위한 calendar 생성해주는 라이브러리 함수화	 * @returns	 */	function get_calendar() {		$('#calendar').fullCalendar({						// 2021-07-15 YoungJin			// fullCalendar 이벤트 작성 Start			eventClick: function(calEvent) {				location.href = "updateCalendarDetailForm.do?cidx=" + calEvent.id;			},			// fullCalendar 이벤트 작성 End 			header : {				left : 'prev,next today',				center : 'title',				right : ''			},			contentHeight : 590,			displayEventTime: false, // 07-20 YoungJin fullCalendar 시작시간 안보이게 설정			defaultDate : getToday(),			navLinks : false, // can click day/week names to navigate views			selectable : true,            selectAllow: function(selectInfo) {            	return moment().diff(selectInfo.end) < -1;            },  			selectHelper : true,			select : function(start, end) {				var startDay = moment(start).format('YYYY-MM-DD');				var endDay = moment(end).subtract(1, "days").format('YYYY-MM-DD');				location.href = "insertCalendarDetailForm.do?startDay=" + startDay + "&endDay=" + endDay;				eventData = {					title : title,					start : start,					end : end				};								$('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true				$('#calendar').fullCalendar('unselect');			},			editable : true,			eventLimit : true // allow "more" link when too many events//			events: { //	            url: 'getCalendarList.do',//	            type: 'POST',//	            dataType : "json",//	            error: function() {//	                alert('there was an error while fetching events!');//	            },//	            success: function(data) {//	            },//	            //color: 'yellow',   // a non-ajax option//	            textColor: 'black' // a non-ajax option//	         }					});	}	function getToday() { // 오늘날짜가 찍힘		var now = new Date();		var year = now.getFullYear();		var month = now.getMonth() + 1; // 1월이 0으로 되기때문에 +1을 함.		var date = now.getDate();		month = month >= 10 ? month : "0" + month;		date = date >= 10 ? date : "0" + date;		// ""을 빼면 year + month (숫자+숫자) 됨.. ex) 2018 + 12 = 2030이 리턴됨.		return year + "-" + month + "-" + date;	}//});