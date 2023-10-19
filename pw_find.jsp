<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
 <HEAD>
   
<!--boot css-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
   
 
  <TITLE> PW_find </TITLE>

<style>

tr {
 border: 0px solid none;
}

k:hover {
 text-decoration: none;
 color: #9354ED
}

</style>


   <script>

  function gologin() {
  var frm = document.pwfindscreen;
  frm.method = "post";
  frm.action = "./login.jsp";
  frm.submit();
 }

 function gohome() {
  var frm = document.pwfindscreen;
  frm.method = "post";
  frm.action = "./top.jsp"; //넘어간화면
  frm.submit(); //등록이 될수 있는 조건이면, 정보를 보내겠다.
 }
 
 function gojoin() {
  var frm = document.pwfindscreen;
  frm.method = "post";
  frm.action = "./joinform.jsp";
  frm.submit();
 }

 function goidfind(){
  var frm = document.pwfindscreen;
  frm.method = "post";
  frm.action = "./id_find.jsp";
  frm.submit();
 }
 
 function gopwfind(){
  var frm = document.pwfindscreen;
  frm.method = "post";
  frm.action = "./pw_find.jsp";
  frm.submit();
 }
 <%--
 function logout(){
     var frm=document.pwfindscreen;
      frm.method="post";
   frm.action="./logoutCtl.jsp";
   frm.submit();  
 }
--%>
   function enter(){

  var frm=document.pwfindscreen;

  if(frm.id.value.length<3){
   alert("아이디를 올바르게 입력해주세요");
   return;
  }

  if(frm.phone1.value.length<1){
   alert("연락처를 올바르게 입력해주세요");
   return;
  }
  if(frm.phone2.value.length<1){
   alert("연락처를 올바르게 입력해주세요");
   return;
  }
  frm.method="post";
  frm.action="./pw_searchCtl.jsp"; //넘어간화면
  frm.submit(); //등록이 될수 있는 조건이면, 정보를 보내겠다.
  }
  

 </script>


 </HEAD>

 <BODY>

  <%@ include file="./top.jsp" %>
  
  <form name="pwfindscreen">
  <font face="Yang Rounded">
 
 
         <table width="750px" align="center" border=0
          style="background-color: white" margin-top: 3%">
          
           <header>
           <td align="center"></td>
           <td><b><h2>비밀번호 찾기</h2></b></td>
           <td width="300px"></td>
          </header>
          
     </table>
    </td> 
    </tr>   
        
   <tr> 
    <td>
   <table width="700px" height="300px" align=center " border="6"
       style="font-size: 20px; border-color: #F6F6F6; border-style: solid; margin-top: 4%">
       <tr>
        <td>
        
         <table width="300px" height="30px" border="0"
             style="margin-top: 3%; color: black; font-size: 18px;">
          <tr>
         
           <td>*아이디와 핸드폰번호를 입력하세요.</td>
           
           </tr>
            </table>
           </td>
          </tr>

          <tr>

           <td>
           
         <table width="380px" height="70px" align="center" border="0"

             style="font-size: 16px;">

             <tr>

              <td>ID</td>
              <td><input type="text" name="user_id"  
              style="width: 240px"></td>

             </tr>
          
          <tr>
          
           <td>휴대폰</td>
        <td><select name="phone">
        <option value ="010" selected="selected">010</option>
        <option value ="011">011</option>
        <option value ="016">016</option>
        <option value ="017">017</option>
        </select> -
        <input type="text" name="phone1" style="width:70px"> -
        <input type="text" name="phone2" style="width:70px"></td>
        </tr>
            </table>
           </td>
          </tr>

      <tr>
           <td>

            <table width="140px" height="10px" border="0"

             style="margin-top: 2%;" align="center">

             <tr>

              <td><input type="button" name="enter1" value="  찾기  "

               align="center"

               style="cursor: pointer; background: white; color: black; border-color: black;"

               onClick="pw_search1()"></td>

              <td><input type="button" name="cancle1"

               value="  취소  " align="center"

               style="cursor: pointer; background: white; color: black; border-color: black;"

               onClick="cancle()"></td>
               
             </tr>
            </table>
           </td>
          </tr>

         

         </table>
        </td>
       </tr>
      </table>
     </td>
   </table>
 <br></br> <br></br> <br></br> <br></br> <br></br> <br></br>
  </font>
 </form>

</BODY>

<footer class="bg-dark text-white d-flex justify-content-between align-items-center" >  							  
			
			<h4><b><p>&copy; illuwa </p></b></h4>
			<h6>창완 영림 유미 예린 혜지 </h6>
			
		</footer>
</HTML> 