<%@page import="Model.Question"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CHECK ANSWER</title>
</head>
<body>
<% ArrayList<String> userAnswer= ( ArrayList<String>)request.getAttribute("userAnswerList");
ArrayList <Question> questionAnswerList=(ArrayList <Question>)request.getAttribute("questionList");
%>

<% 
	for(int i=0;i<userAnswer.size();i++)
	{
	if(((questionAnswerList.get(i).getAnswerKey()).equals(userAnswer.get(i))))
	{
		%>	
		
	<h4 align="left" style="color:Green">Question no: <%=i%> <%=questionAnswerList.get(i).getQuestion() %></h4>
	<div align="left">
	<% 
		int j=1; 
	%>
	<span><%=j++ %>. </span><label style="font-size:20px"><%=questionAnswerList.get(i).getOption1() %></label>
 	<span><%=j++ %>. </span><label style="font-size:20px"> <%=questionAnswerList.get(i).getOption2() %></label>
 	<span><%=j++ %>. </span><label style="font-size:20px"> <%=questionAnswerList.get(i).getOption3() %></label>
 	<span><%=j++ %>. </span><label style="font-size:20px"> <%=questionAnswerList.get(i).getOption4() %></label>
 	<span><%=j++ %>. </span><h5>CORRECT ANSWER IS:-<%=questionAnswerList.get(i).getAnswerKey() %> </h5>
	</div>
	
<% 	}
		else
		{
%>	
<h4 align="left" style="color:Red">Question no: <%=i%> <%=questionAnswerList.get(i).getQuestion() %></h4>
	<div align="left">
	<% int j=1; 
	%>
	<span><%=j++ %>. </span><label style="font-size:20px"><%=questionAnswerList.get(i).getOption1() %></label>
 	<span><%=j++ %>. </span><label style="font-size:20px"> <%=questionAnswerList.get(i).getOption2() %></label>
 	<span><%=j++ %>. </span><label style="font-size:20px"> <%=questionAnswerList.get(i).getOption3() %></label>
 	<span><%=j++ %>. </span><label style="font-size:20px"> <%=questionAnswerList.get(i).getOption4() %></label>
 	<span><%=j++ %>. </span><h5>CORRECT ANSWER IS:-<%=questionAnswerList.get(i).getQuestion() %> </h5>
	</div>
<% 

		}
	}




%>
</body>
</html>