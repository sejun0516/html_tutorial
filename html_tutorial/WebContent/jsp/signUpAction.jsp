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
			<!-- �α��� ���� -->
			<fieldset id="loginInfo">
				<legend>
					01 �α��� ����
					<!-- <img src="./img/idsearch_maintext01.gif"> -->
				</legend>
				<table class="login">
					<tr><!-- ���̵�  -->
						<td class="td0">
							<img src="../image/check_icon.gif">
						</td>
						<td class="td1">
							<img src="../image/idsearch_text01.gif">
							<!-- <label for="identity">�����ID</label> -->
						</td>
						<td class="td2">
							<input type="text" name="identity" value =<%=id%>>
						</td>
						
					</tr>
					<tr><!-- ��й�ȣ  -->
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
					<!-- ��������  -->
			<fieldset id="persnolInfo" class="box drop-shadow lifted">
				<legend>
					02 ���� ����
					<!-- <img src="./img/idsearch_maintext02.gif"> -->
				</legend>
				<table class="login">
					<tr><!-- �̸� -->
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
					<tr><!-- �ֹι�ȣ -->
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
							<input type="text" id="brithday1" name="brithday1" size="6" maxlength="4" value = <%=brithday1 %>> ��
							<input type="text" id="brithday2" name="brithday2" size="6" maxlength="2" value = <%=brithday2 %>> ��
							<input type="text" id="brithday3" name="brithday3" size="6" maxlength="2" value = <%=brithday3 %>> �� 
						</td>
						<td>
							<%
							if(mtype.equals("solar")) {
							%>
								<input type="radio" name="mtype" id="mtype" value = "solar" checked = "checked">���
								<input type="radio" name="mtype" id="mtype" value = "lunar">����
							<%
							}else {
							%>
								<input type="radio" name="mtype" id="mtype" value = "solar">���
								<input type="radio" name="mtype" id="mtype" value = "lunar" checked = "checked">����
							<%
							}	
							%>
						</td>
					</tr>
					<tr><!-- ��ȭ��ȣ -->
						<td>
							<img src="../image/check_icon.gif">
						</td>
						<td class="td1">
							<img src="../image/idsearch_text08.gif">
						</td>
						<td	colspan="2">
							<select id="phone1" name="phone1" selected = document.getElementByName(<%=phone1%>)>
				                    	<option value="">==����==</option>
				                    	<option value="02">����(02)</option>
				                    	<option value="051">�λ�(051)</option>
				                    	<option value="053">�뱸(053)</option>
				                    	<option value="032">��õ(032)</option>
				                    	<option value="062">����(062)</option>
				                    	<option value="042">����(042)</option>
				                    	<option value="052">���(052)</option>
				                    	<option value="031">���(031)</option>
				                    	<option value="033">����(033)</option>
				                    	<option value="043">���(043)</option>
				                    	<option value="041">�泲(041)</option>
				                    	<option value="063">����(063)</option>
				                    	<option value="061">����(061)</option>
				                    	<option value="054">���(054)</option>
				                    	<option value="055">�泲(055)</option>
				                    	<option value="064">����(064)</option>

							</select> -
							<input type="tel" id="phone2" name="phone2" size="6" maxlength="4" value =<%=phone2%>> -
							<input type="tel" id="phone3" name="phone3" size="6" maxlength="4" value =<%=phone3%>>
						</td>
						<td>
							<% 
							if(telplace.equals("office")) {
							%>
								<input type="radio" name="telplace" id="telplace" value="office" checked = "checked">����
								<input type="radio" name="telplace" id="telplace" value="home">����
							<%
							}else {
						    %>
								<input type="radio" name="telplace" id="telplace" value="office">����
								<input type="radio" name="telplace" id="telplace" value="home" checked = "checked">����
							<%
							}
							%>
						</td>
					</tr>
					<tr><!-- ����ȣ -->
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
					<tr><!-- �ּ�1 -->
						<td>
							<img src="../image/check_icon.gif">
						</td>
						<td class="td1">
							<img src="../image/idsearch_text11.gif">
						</td>
						<td colspan="2">
							<input type="text" id="zipcode1" name="zipcode2" size="6" maxlength="3" value = <%=zipcode2%>> -
							<input type="text" id="zipcode2" name="zipcode3" size="6" maxlength="3" value = <%=zipcode3%>>&nbsp;
							<input type="button" value="�����ȣã��" class="white"> 
						</td>
						<td>
							<%
							if(addrplace.equals("office")){
							%>
								<input type="radio" name="addrplace" id="addrplace" value="office" checked = "checked">����
								<input type="radio" name="addrplace" id="addrlace" value="home">����
							<%
							}else {
							%>
								<input type="radio" name="addrplace" id="addrplace" value="office">����
								<input type="radio" name="addrplace" id="addrlace" value="home" checked = "checked">����
							<%
							}
							%>
						</td>
					</tr>
					<tr><!-- �ּ�2 -->
						<td>
						</td>
						<td>
						</td>
						<td colspan="3">
							<input type="text" name="addr1" id="addr1" size="40" value = <%=addr1%>>
						</td>
					</tr>
					<tr><!-- �ּ�3 -->
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
			
			<!-- ��Ÿ����  -->
			<fieldset id="persnolInfo" class="box drop-shadow lifted">
				<legend>03 ��Ÿ����</legend>
				<table class="login">
					<tr><!-- ���� -->
						<td class="td0">
						</td>
						<td class="td1">
							<img src="../image/idsearch_text12.gif">
						</td>
						<td  colspan="2">
							<select name="job" id="job">
								<option value="" selected="selected">===�����ϼ���===</option>
								<option value="job1">ȸ���</option>
								<option value="job2">����������</option>
								<option value="job3">����</option>
								<option value="job4">�л�</option>
								<option value="job5">�Ϲ��ڿ���</option>
								<option value="job6">������</option>
								<option value="job7">�Ƿ���</option>
								<option value="job8">������</option>
								<option value="job9">����.���/������</option>
								<option value="job10">��.��.����/��������</option>
								<option value="job11">��ü</option>
								<option value="job12">�ֺ�</option>
								<option value="job13">����</option>
								<option value="job14">��Ÿ</option>
							</select>
						</td>
					</tr>
					<tr><!-- ȸ���(�б�) -->
						<td>
						</td>
						<td>
							<img src="../image/idsearch_text13.gif">
						</td>
						<td class="td2">
							<input type="text" id="company" name="company" size="20" value = <%=company%>>&nbsp;<input type="button" value="ã��" class="white">
						</td>
						<td>
							<%
							if(companyname.equals("office")) {
							%>
								<input type="radio" name="companyname" id="companyname" value="office" checked ="checked">����
								<input type="radio" name="companyname" id="companyname" value="home">����
							<%
							}else {
							%>
								<input type="radio" name="companyname" id="companyname" value="office">����
								<input type="radio" name="companyname" id="companyname" value="home" checked ="checked">����
							<%
							}
							%>
								
						</td>
					</tr>
					<tr><!-- ����� ��ȣ -->
						<td>
						</td>
						<td>
							<img src="../image/join_companyNum.gif">
						</td>
						<td colspan="2">
							<input type="text" id="compNo" name="compNo" size="20" value = <%=compNo%>> 
						</td>
					</tr>
					<tr><!-- �μ���(�а�) -->
						<td>
						</td>
						<td>
							<img src="../image/idsearch_text14.gif">
						</td>
						<td colspan="2">
							<input type="tel" id="partname" name="partname" size="20" value = <%=partname%>>
						</td>
					</tr>
					<tr><!-- ���� -->
						<td>
						</td>
						<td class="td1">
							<img src="../image/idsearch_text15.gif">
						</td>
						<td colspan="2">
							<input type="text" id="compostion" name="compostion" size="20" value = <%=compostion%>>
						</td>
					</tr>
					<tr><!-- ���ɺо� -->
						<td>
						</td>
						<td>
							<img src="../image/idsearch_text16.gif">
						</td>
						<td colspan="2">
							<select name="interest" id="interest">
								<option value="" selected="selected">===�����ϼ���===</option>
		        				<option value="inter1">��óâ��</option>
								<option value="inter2">business����</option>
								<option value="inter3">������å����</option>
								<option value="inter4">�ڱ�����</option>
								<option value="inter5">�ű���ҽ�</option>
								<option value="inter6">���/���</option>
								<option value="inter7">��Ÿ</option>
							</select>
						</td>
					</tr>
					<tr><!-- TP���� -->
						<td>
						</td>
						<td>
							<img src="../image/idsearch_text17.gif">
						</td>
						<td>
							<%
							if(webzine.equals("ture")) {
							%>
								<input type="radio" name="webzine" id="webzine" value="true" checked = "checked">���ŵ���
								<input type="radio" name="webzine" id="webzine" value="false">������������
							<%
							}else {
							%>
								<input type="radio" name="webzine" id="webzine" value="true">���ŵ���
								<input type="radio" name="webzine" id="webzine" value="false" checked = "checked">������������
							<%	
							}
							%>
						</td>
						<td>
							(TP���� �����ϴ� Webzine ���񽺸� �޾ƺ��ðڽ��ϱ�?)
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