<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "entity.QnAEntity" %>
<%@ page import = "vo.QnAVO" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("UTF-8");%>

<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");
  String passwd = request.getParameter("passwd");

  QnAEntity dbPro = QnAEntity.getInstance();
  int check = dbPro.deleteBoard(num, passwd);

  if(check==1){
%>
	  <meta http-equiv="Refresh" content="0;url=../qnaController?choice=getAll-board" >
<% }else{%>
       <script language="JavaScript">      
       <!--      
         alert("비밀번호가 맞지 않습니다");
         history.go(-1);
       -->
      </script>
<%
    }
 %>