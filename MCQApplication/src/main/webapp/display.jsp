<%@page import="Model.Question"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DISPLAY</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>
<%   Object data=request.getAttribute("DISPLAYDATA"); %> 
<% ArrayList <Question> questionData= (ArrayList <Question>)data; %>
<% int i=1; %>
<div align="center">
<div style="width:50%">
<form action="submitAnswers" method="post">
<% for(Question q: questionData) {%>
<h4>Question no: <%=i%> <%=q.getQuestion() %></h4>
<div align="left">
<h5><input type="radio" name="<%= q.getQuestionId() %>" value="1" reqired="requied"><label style="font-size:20px"></label> <%=q.getOption1() %></h5>
 <h5> <input type="radio" name="<%= q.getQuestionId() %>" value="2" ><label style="font-size:20px"></label> <%=q.getOption2() %></h5>
 <h5> <input type="radio" name="<%= q.getQuestionId() %>" value="3" ><label style="font-size:20px"></label> <%=q.getOption3() %></h5>
<h5> <input type="radio" name="<%= q.getQuestionId() %>" value="4" ><label style="font-size:20px"></label> <%=q.getOption4() %></h5>
</div>
<%= "===================================================================================================================================" %>
<% i++;
  }%>
  <input type="submit" value="SUBMIT-ANSWERS" class="btn btn-outline-primary">

  </form>
  </div>
   </div>
</body>
</html>