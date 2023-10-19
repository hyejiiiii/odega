<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8">

   <!--css-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
   
  	
<script type="text/javascript">
	function login() {
		if (document.joinform.user_name.value == "") {
			alert("이름을 입력하세요.");
			reg_frm.user_name.focus();
			return false;
		}

		if (document.joinform.user_id.value.length == 0) {
			alert("아이디를 입력하세요");
			reg_frm.user_id.focus();
			return false;
		}

		if (document.joinform.user_id.value.length < 4) {
			alert("아이디는 4글자이상이어야 합니다.");
			reg_frm.user_id.focus();
			return false;
		}

		if (document.joinform.user_pw.value == "") {
			alert("패스워드를 입력하세요.");
			reg_frm.user_pw.focus();
			return false;
		}
<%--		//비밀번호 확인결과가 같은지 체크 
		if (document.joinform.password.value != document.joinform.chkPassword.value) {
			alert("패스워드가 일치하지 않습니다.");
			reg_frm.pwd_re.focus();
			return false;
		}
--%>
		return true;
	}
</script>


</head>

<body>
 	  
  <%@ include file="./top.jsp"%>
  <font face="Yang Rounded">
  
<form action="join_ok.jsp" method="post">  

<br></br>
 
	 <tr>
        <td>
         <table width="750px" align="center" border=0
          style="background-color: white">
          <tr>
           <td align="center">></td>
           <td>JOIN</td>
           <td><div id="sub-title">| 회원가입 페이지입니다.</td>
           <td width="300px"></td>
          </tr>
         </table>
        </td>
       </tr>
       
       <br></br> 
       
		<div class="container" width="1330px" height="430px" align="center">
		
			<p class="input-box">
				<label for="user_name">이름</label> 
				<input id="user_name" type="text" name="user_name" placeholder="이름" required autofocus >  		
					
			<p class="input-box">
				<label for="user_id">아이디</label> 
				<input id="user_id" type="text" name="user_id" placeholder="아이디" >  
				
			<p class="input-box">
				<label for="user_pw">비밀번호</label>
				<input id="user_pw" type="text" name="user_pw" placeholder="비밀번호"  >  
				 
	<%--			
			<p class="input-box">
				<label for="chkpassword">비밀번호 확인</label> 
				<input id="user_pw" type="text" 
				name="chkPassword" placeholder="비밀번호 확인"  >  
			
					<br></br>
		 
					<label for="email">이메일</label> 
					<td><input type="text" id="firstmail" name="firstmail" placeholder="이메일"><select id="mail" name="mail" size="1">
							<option value="">선택하세요</option>
							<option value="gmail">@gmail.com</option>
							<option value="naver">@naver.com</option>
							<option value="daum">@daum.net</option>
							<option value="nate">@nate.com</option>
					</select></td>
				</tr>
		--%>
		
			<p class="input-box">
				<label for="nickname">닉네임</label> 
				<input id="nickname" type="text" name="nickname" placeholder="닉네임"  >  
			
		 	<p class="input-box">
				<label for="birth">생년월일</label> 
				<input id="birth" type="text" name="birth" placeholder="생년월일"  >  
		
		<br></br>		
				
				<tr>
					<label for="area">지역</label> 
					<td><select id="area" name="area" size="5">
							<option value="">선택하세요.</option>
							<option value="서울특별시">서울특별시</option>
							<option value="경기도">경기도</option>
							<option value="강원도">강원도</option>
							<option value="충청도">충청도</option>
							<option value="경상도">경상도</option>
							<option value="전라도">전라도</option>
					
					</select></td>
				</tr>
				
				<br></br>
				<tr>
					<label for="interest">관심분야</label> 
					<td>
					<input type="checkbox" name="interest" value="데이트">데이트
					<input type="checkbox" name="interest" value="여행">여행
					</td>
				</tr>
			</table>
			<br></br>
			<button type= "submit" value="가입">JOIN</button>
				<br></br>
				</form>
		</font>
		
		</div>
	
	</body>
	
	<footer class="bg-dark text-white d-flex justify-content-between align-items-center" >  							  
			
			<h4><b><p>&copy; illuwa </p></b></h4>
			<h6>창완 영림 유미 예린 혜지 </h6>
			
		</footer>
	
</html>

