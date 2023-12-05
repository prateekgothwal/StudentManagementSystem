package com.thinking.machines.school.beans;
import java.sql.*;
public class StudentBean implements java.io.Serializable
{
private int rollNumber;
private String name;
private String address;
//public City city;
private String gender;
private Boolean indian;
private String dateOfBirth;
private int cityCode;
private String cityName;
public StudentBean()
{
this.rollNumber=0;
this.name="";
this.address="";
this.gender="";
this.indian=false;
this.dateOfBirth="";
//this.city=null;
this.cityCode=0;
this.cityName="";
}
/*
public static class City
{
private int code;
private String name;
public City()
{
this.code=0;
this.name="";
}
public void setCode(int code)
{
this.code=code;
}
public int getCode()
{
return this.code;
}
public void setName(String name)
{
this.name=name;
}
public String getName()
{
return this.name;
}
}
*/
public void setRollNumber(int roll)
{
this.rollNumber=roll;
}
public int getRollNumber()
{
return this.rollNumber;
}
public void setName(String name)
{
this.name=name;
}
public String getName()
{
return this.name;
}
public void setAddress(String address)
{
this.address=address;
}
public String getAddress()
{
return this.address;
}

/*
public void setCity(City city)
{
this.city=city;
}
public City getCity()
{
return this.city;
}
*/
public void setGender(String gender)
{
this.gender=gender;
}
public String getGender()
{
return this.gender;
}
public void setIndian(Boolean indian)
{
this.indian=indian;
}
public Boolean getIndian()
{
return this.indian;
}
public void setDateOfBirth(String dateOfBirth)
{
this.dateOfBirth=dateOfBirth;
}
public String getDateOfBirth()
{
return this.dateOfBirth;
}
public void setCityCode(int cityCode)
{
this.cityCode=cityCode;
}
public int getCityCode()
{
return this.cityCode;
}
public void setCityName(String cityName)
{
this.cityName=cityName;
}
public String getCityName()
{
return this.cityName;
}
}