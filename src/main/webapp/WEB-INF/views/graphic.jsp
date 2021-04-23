<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<li id="ui-widget-content"><br><br>
	<c:forEach var="vo" items="${list_Graphic}">
	<img src="${vo.img}"><br><br>
	${vo.subject}/<br>
	${vo.company}/${vo.indate}/${vo.series}/<br>
	${vo.chipline}/${vo.chipset}/${vo.base}/<br>
	${vo.boost}/${vo.cuda}/${vo.itf}/${vo.fee}원<br><br>
	<a href="add2?cart_image=${vo.img}&
									product_id=${vo.subject}&
									cart_price=${vo.fee}&
									user_id=${user_id}&
									cart_count=1" class="w3-button w3-black w3-round-xlarge">장바구니</a>
	<a href="graphselect?id=${vo.id}" class="w3-button w3-black w3-round-xlarge">상세페이지</a><hr color="green" width="500px"><br>
	</c:forEach>
</li>