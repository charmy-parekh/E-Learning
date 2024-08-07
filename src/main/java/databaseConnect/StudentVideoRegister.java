package databaseConnect;

import Eportal.servlet.DataBaseDetails;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

public class StudentVideoRegister extends DataBaseDetails
{

	public String getDate()
	{
		Date date = new Date();
		String now = date.toString();
		return(now);
	}
	
	public boolean AlreadySaw(int Sid, String VideoID)
	{
		boolean flag = false;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, dbname, dbpass);

			String query = "select * from stuvideoregister where Sid = ? and VideoId = ?";
			
			PreparedStatement st = con.prepareStatement(query);
			st.setInt(1, Sid);
			st.setString(2, VideoID);
			
			ResultSet rd = st.executeQuery();
			
			if(rd.next())
			{
				flag = true;
			}
			
			st.close();
			con.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return(flag);
	}
	
	public boolean VideoSeenNow(String VideoId, int Sid, int Cid, String date)
	{
		System.out.println(Sid+"---"+Cid+"--"+VideoId);
		boolean flag = false;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, dbname, dbpass);
			
			String query = "insert into stuvideoregister values(?,?,?,?)";
			
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, VideoId);
			st.setInt(2, Sid);
			st.setInt(3, Cid);
			st.setString(4, date);
			
			int c = st.executeUpdate();
			System.out.println(c+"row's Affected");
			
			flag = true;
			
			st.close();
			con.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return(flag);
	}
	
}
