package com.thinking.machines.school.servlets;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import com.thinking.machines.school.dao.*;
import com.thinking.machines.school.tags.*;
import com.thinking.machines.school.beans.*;
public class deleteStudent extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
try
{
StudentBean sb=(StudentBean)request.getAttribute("studentBean");
int rollNumber=sb.getRollNumber();

//int roll=Integer.parseInt(rq.getParameter("rollNumber"));
//code to save to db
Connection connection=DAOConnection.getConnection();
PreparedStatement ps=connection.prepareStatement("delete from student where roll_number=?");
ps.setInt(1,rollNumber);
ps.executeUpdate();
ps.close();
connection.close();
System.out.println("Record Deleted");

MessageBean messageBean;
messageBean=new MessageBean();
messageBean.setMessage("Student with roll number : "+rollNumber+" deleted");
request.setAttribute("messageBean",messageBean);
RequestDispatcher rd;
rd=request.getRequestDispatcher("/Students.jsp");
rd.forward(request,response);
}catch(Exception e)
{
System.out.println(e);
}
}
}