<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("EUC-KR");
			String sysId = "jjdev";
			String sysPw = "1234";
			String id = request.getParameter("identity");
			String pw = request.getParameter("password");
			String name = request.getParameter("name");
			String jumin1 = request.getParameter("jumin1");
			String jumin2 = request.getParameter("jumin2");
			String brithday1 = request.getParameter("brithday1");
			String brithday2 = request.getParameter("brithday2");
			String brithday3 = request.getParameter("brithday3");
			String mtype = request.getParameter("mtype")==null?"":request.getParameter("mtype");
			String telplace = request.getParameter("telplace")==null?"":request.getParameter("telplace");
			String phone1 = request.getParameter("phone1");
			String phone2 = request.getParameter("phone2");
			String phone3 = request.getParameter("phone3");
			String hphone1 = request.getParameter("hphone1");
			String hphone2 = request.getParameter("hphone2");
			String hphone3 = request.getParameter("hphone3");
			String email = request.getParameter("email");
			String zipcode2 = request.getParameter("zipcode2");
			String zipcode3 = request.getParameter("zipcode3");
			String addrplace = request.getParameter("addrplace")==null?"":request.getParameter("addrplace");
			String addr1 = request.getParameter("addr1");
			String addr2 = request.getParameter("addr2");
			String company = request.getParameter("company");
			String companyname = request.getParameter("companyname")==null?"":request.getParameter("companyname");
			String compNo = request.getParameter("compNo");
			String partname = request.getParameter("partname");
			String compostion= request.getParameter("compostion");
			String webzine = request.getParameter("webzine")==null?"":request.getParameter("webzine");
			String homepage= request.getParameter("homepage");
			String self= request.getParameter("self");		
		%>
		
		<div>
			<form>
			<!-- 로그인 정보 -->
			<fieldset id="loginInfo">
				<legend>
					01 로그인 정보
					<!-- <img src="./img/idsearch_maintext01.gif"> -->
				</legend>
				<table class="login">
					<tr><!-- 아이디  -->
						<td class="td0">
							<img src="../image/check_icon.gif">
						</td>
						<td class="td1">
							<img src="../image/idsearch_text01.gif">
							<!-- <label for="identity">사용자ID</label> -->
						</td>
						<td class="td2">
							<input type="text" name="identity" value =<%=id%>>
						</td>
						
					</tr>
					<tr><!-- 비밀번호  -->
						<td>
							<img src="../image/check_icon.gif">
						</td>
						<td>
							<img src="../image/idsearch_text02.gif">
						</td>
						<td>
							<input type="password" name="password" value=<%=pw%>>
						</td>
						<td colspan="2">
							<font></font>
						</td>
					</tr>
				</table>
			</fieldset>
					<!-- 개인정보  -->
			<fieldset id="persnolInfo" class="box drop-shadow lifted">
				<legend>
					02 개인 정보
					<!-- <img src="./img/idsearch_maintext02.gif"> -->
				</legend>
				<table class="login">
					<tr><!-- 이름 -->
						<td class="td0">
							<img src="../image/check_icon.gif">
						</td>
						<td class="td1">
							<img src="../image/idsearch_text06.gif">
						</td>
						<td class="td2">
							<input type="text" name="name" value = <%=name%>>
						</td>
						<td>
						</td>
						<td>
						</td>
					</tr>
					<tr><!-- 주민번호 -->
						<td>
						</td>
						<td>
							<img src="../image/idsearch_text07.gif">
						</td>
						<td colspan="3">
							<input type="text" id="jumin1" name="jumin1" size="15" maxlength="6" value = <%=jumin1%>>
							 - <input type="text" id="jumin2" name="jumin2" size="15" maxlength="7" value =<%=jumin2%>> 
						</td>
					</tr>
					<tr><!-- birthday -->
						<td>
						</td>
						<td>
							<img src="../image/idsearch_text20.gif">
						</td>
						<td colspan="2">
							<input type="text" id="brithday1" name="brithday1" size="6" maxlength="4" value = <%=brithday1 %>> 년
							<input type="text" id="brithday2" name="brithday2" size="6" maxlength="2" value = <%=brithday2 %>> 월
							<input type="text" id="brithday3" name="brithday3" size="6" maxlength="2" value = <%=brithday3 %>> 일 
						</td>
						<td>
							<%
							if(mtype.equals("solar")) {
							%>
								<input type="radio" name="mtype" id="mtype" value = "solar" checked = "checked">양력
								<input type="radio" name="mtype" id="mtype" value = "lunar">음력
							<%
							}else {
							%>
								<input type="radio" name="mtype" id="mtype" value = "solar">양력
								<input type="radio" name="mtype" id="mtype" value = "lunar" checked = "checked">음력
							<%
							}	
							%>
						</td>
					</tr>
					<tr><!-- 전화번호 -->
						<td>
							<img src="../image/check_icon.gif">
						</td>
						<td class="td1">
							<img src="../image/idsearch_text08.gif">
						</td>
						<td	colspan="2">
							<select id="phone1" name="phone1" selected = document.getElementByName(<%=phone1%>)>
				                    	<option value="">==선택==</option>
				                    	<option value="02">서울(02)</option>
				                    	<option value="051">부산(051)</option>
				                    	<option value="053">대구(053)</option>
				                    	<option value="032">인천(032)</option>
				                    	<option value="062">광주(062)</option>
				                    	<option value="042">대전(042)</option>
				                    	<option value="052">울산(052)</option>
				                    	<option value="031">경기(031)</option>
				                    	<option value="033">강원(033)</option>
				                    	<option value="043">충북(043)</option>
				                    	<option value="041">충남(041)</option>
				                    	<option value="063">전북(063)</option>
				                    	<option value="061">전남(061)</option>
				                    	<option value="054">경북(054)</option>
				                    	<option value="055">경남(055)</option>
				                    	<option value="064">제주(064)</option>

							</select> -
							<input type="tel" id="phone2" name="phone2" size="6" maxlength="4" value =<%=phone2%>> -
							<input type="tel" id="phone3" name="phone3" size="6" maxlength="4" value =<%=phone3%>>
						</td>
						<td>
							<% 
							if(telplace.equals("office")) {
							%>
								<input type="radio" name="telplace" id="telplace" value="office" checked = "checked">자택
								<input type="radio" name="telplace" id="telplace" value="home">직장
							<%
							}else {
						    %>
								<input type="radio" name="telplace" id="telplace" value="office">자택
								<input type="radio" name="telplace" id="telplace" value="home" checked = "checked">직장
							<%
							}
							%>
						</td>
					</tr>
					<tr><!-- 폰번호 -->
						<td>
							<img src="../image/check_icon.gif">
						</td>
						<td class="td1">
							<img src="../image/idsearch_text09.gif">
						</td>
						<td colspan="3">
							<input type="text" id="hphone1" name="hphone1" size="6" maxlength="3" value = <%=hphone1%>> -
							<input type="text" id="hphone2" name="hphone2" size="6" maxlength="3" value = <%=hphone2%>> -
							<input type="text" id="hphone3" name="hphone3" size="6" maxlength="3" value = <%=hphone3%>>
						</td>
					</tr>
					<tr><!-- email -->
						<td>
							<img src="../image/check_icon.gif">
						</td>
						<td>
							<img src="../image/idsearch_text10.gif">
						</td>
						<td colspan="3">
							<input type="email" id="eamil" name="email" placeholder="example@example.com" size="40" value = <%=email%>>
						</td>
					</tr>
					<tr><!-- 주소1 -->
						<td>
							<img src="../image/check_icon.gif">
						</td>
						<td class="td1">
							<img src="../image/idsearch_text11.gif">
						</td>
						<td colspan="2">
							<input type="text" id="zipcode1" name="zipcode2" size="6" maxlength="3" value = <%=zipcode2%>> -
							<input type="text" id="zipcode2" name="zipcode3" size="6" maxlength="3" value = <%=zipcode3%>>&nbsp;
							<input type="button" value="우편번호찾기" class="white"> 
						</td>
						<td>
							<%
							if(addrplace.equals("office")){
							%>
								<input type="radio" name="addrplace" id="addrplace" value="office" checked = "checked">자택
								<input type="radio" name="addrplace" id="addrlace" value="home">직장
							<%
							}else {
							%>
								<input type="radio" name="addrplace" id="addrplace" value="office">자택
								<input type="radio" name="addrplace" id="addrlace" value="home" checked = "checked">직장
							<%
							}
							%>
						</td>
					</tr>
					<tr><!-- 주소2 -->
						<td>
						</td>
						<td>
						</td>
						<td colspan="3">
							<input type="text" name="addr1" id="addr1" size="40" value = <%=addr1%>>
						</td>
					</tr>
					<tr><!-- 주소3 -->
						<td>
						</td>
						<td>
						</td>
						<td colspan="3">
							<input type="text" name="addr2" id="addr2" size="40" value = <%=addr2%>>
						</td>
					</tr>
				</table>
			</fieldset>
			
			<!-- 기타정보  -->
			<fieldset id="persnolInfo" class="box drop-shadow lifted">
				<legend>03 기타정보</legend>
				<table class="login">
					<tr><!-- 직업 -->
						<td class="td0">
						</td>
						<td class="td1">
							<img src="../image/idsearch_text12.gif">
						</td>
						<td  colspan="2">
							<select name="job" id="job">
								<option value="" selected="selected">===선택하세요===</option>
								<option value="job1">회사원</option>
								<option value="job2">연구전문직</option>
								<option value="job3">교수</option>
								<option value="job4">학생</option>
								<option value="job5">일반자영업</option>
								<option value="job6">공무원</option>
								<option value="job7">의료인</option>
								<option value="job8">법조인</option>
								<option value="job9">종교.언론/예술인</option>
								<option value="job10">농.축.수산/광공업인</option>
								<option value="job11">단체</option>
								<option value="job12">주부</option>
								<option value="job13">무직</option>
								<option value="job14">기타</option>
							</select>
						</td>
					</tr>
					<tr><!-- 회사명(학교) -->
						<td>
						</td>
						<td>
							<img src="../image/idsearch_text13.gif">
						</td>
						<td class="td2">
							<input type="text" id="company" name="company" size="20" value = <%=company%>>&nbsp;<input type="button" value="찾기" class="white">
						</td>
						<td>
							<%
							if(companyname.equals("office")) {
							%>
								<input type="radio" name="companyname" id="companyname" value="office" checked ="checked">자택
								<input type="radio" name="companyname" id="companyname" value="home">직장
							<%
							}else {
							%>
								<input type="radio" name="companyname" id="companyname" value="office">자택
								<input type="radio" name="companyname" id="companyname" value="home" checked ="checked">직장
							<%
							}
							%>
								
						</td>
					</tr>
					<tr><!-- 사업자 번호 -->
						<td>
						</td>
						<td>
							<img src="../image/join_companyNum.gif">
						</td>
						<td colspan="2">
							<input type="text" id="compNo" name="compNo" size="20" value = <%=compNo%>> 
						</td>
					</tr>
					<tr><!-- 부서명(학과) -->
						<td>
						</td>
						<td>
							<img src="../image/idsearch_text14.gif">
						</td>
						<td colspan="2">
							<input type="tel" id="partname" name="partname" size="20" value = <%=partname%>>
						</td>
					</tr>
					<tr><!-- 직위 -->
						<td>
						</td>
						<td class="td1">
							<img src="../image/idsearch_text15.gif">
						</td>
						<td colspan="2">
							<input type="text" id="compostion" name="compostion" size="20" value = <%=compostion%>>
						</td>
					</tr>
					<tr><!-- 관심분야 -->
						<td>
						</td>
						<td>
							<img src="../image/idsearch_text16.gif">
						</td>
						<td colspan="2">
							<select name="interest" id="interest">
								<option value="" selected="selected">===선택하세요===</option>
		        				<option value="inter1">벤처창업</option>
								<option value="inter2">business동향</option>
								<option value="inter3">정부정책동향</option>
								<option value="inter4">자금지원</option>
								<option value="inter5">신기술소식</option>
								<option value="inter6">취업/고용</option>
								<option value="inter7">기타</option>
							</select>
						</td>
					</tr>
					<tr><!-- TP웹진 -->
						<td>
						</td>
						<td>
							<img src="../image/idsearch_text17.gif">
						</td>
						<td>
							<%
							if(webzine.equals("ture")) {
							%>
								<input type="radio" name="webzine" id="webzine" value="true" checked = "checked">수신동의
								<input type="radio" name="webzine" id="webzine" value="false">수신하지않음
							<%
							}else {
							%>
								<input type="radio" name="webzine" id="webzine" value="true">수신동의
								<input type="radio" name="webzine" id="webzine" value="false" checked = "checked">수신하지않음
							<%	
							}
							%>
						</td>
						<td>
							(TP에서 제공하는 Webzine 서비스를 받아보시겠습니까?)
						</td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							<img src="../image/idsearch_text18.gif">
						</td>
						<td colspan="2">
							<input type="text" name="homepage" id="homepage" size="47" value = <%=homepage%>>
						</td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							<img src="../image/idsearch_text19.gif">
						</td>
						<td colspan="2">
							<textarea name="self" id="self" value = <%=self%>></textarea>
						</td>
					</tr>
				</table>
			</fieldset>
					
			
			</form>
		</div>
	</body>
</html>