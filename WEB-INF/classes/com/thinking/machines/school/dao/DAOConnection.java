package com.thinking.machines.school.dao;
import java.sql.*;
public class DAOConnection
{
private DAOConnection(){}
public static Connection getConnection() throws DAOException
{
try
{
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection connection=DriverManager.getConnection("jdbc:derby://localhost:1527/schooldb");
return connection;
}catch(ClassNotFoundException cnfe)
{
throw new DAOException("Driver class : org.apache.derby.jdbc.ClientDriver missing in classpath");
}catch(SQLException sqe)
{
throw new DAOException("Unable to connect : "+sqe.getMessage());
}
}
}