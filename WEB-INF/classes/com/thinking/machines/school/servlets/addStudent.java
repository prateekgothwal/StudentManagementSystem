package com.thinking.machines.school.servlets;
import com.thinking.machines.school.dao.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import com.thinking.machines.school.dao.*;
import com.thinking.machines.school.tags.*;
import com.thinking.machines.school.beans.*;
public class addStudent extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
try
{
StudentBean sb=(StudentBean)request.getAttribute("studentBean");
int rn=sb.getRollNumber();
String nn=sb.getName().trim();
String aa=sb.getAddress().trim();
int cc=sb.getCityCode();
String gg=sb.getGender();
Boolean ind;
if(sb.getIndian()==false)
{
ind=false;
}
else
{
ind=true;
}
String dateString=sb.getDateOfBirth();
Date dob=Date.valueOf(dateString);
//code to save to db
Connection connection=DAOConnection.getConnection();
PreparedStatement ps=connection.prepareStatement("insert into student(roll_number,name,address,city_code,gender,indian,date_of_birth) values(?,?,?,?,?,?,?)");
ps.setInt(1,rn);
ps.setString(2,nn);
ps.setString(3,aa);
ps.setInt(4,cc);
ps.setString(5,gg);
ps.setBoolean(6,ind);
ps.setDate(7,dob);
ps.executeUpdate();
ps.close();
connection.close();

MessageBean mb=new MessageBean();
mb.setMessage("Student added");
request.setAttribute("messageBean",mb);
request.setAttribute("scenario","added");
RequestDispatcher rd=request.getRequestDispatcher("/Students.jsp");
rd.forward(request,response);
}catch(Exception e)
{
System.out.println(e);
}
}
}