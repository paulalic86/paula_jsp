<%@ page import = "jared.simpledatabase.*" %>
<%@ 
	page language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" 
%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String sex = request.getParameter("sex");
	String major = request.getParameter("major");
	String grade = request.getParameter("grade");
	String[] sport = request.getParameterValues("sport");
	String intro = request.getParameter("intro");
	
	out.println("姓名:" + name + "<br/>");
	out.println("年齡:" + age + "<br/>");
	out.println("性別:" + sex + "<br/>");
	out.println("科系:" + major + "<br/>");
 	out.println("年級:" + grade + "<br/>");

	if(sport != null){
		for(int i = 0; i < sport.length; i++){
		out.println("參加的系隊:" + sport[i] + "<br/>");
		}
	}else
		out.println("參加的系隊:未選擇" + "<br/>");

 	out.println("自我介紹:" + intro + "<br/>");
	
%>