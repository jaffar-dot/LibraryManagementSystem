package com.mvc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class RegistrationDao {

	Connection con = null;
	int i;

	public int register_user(String reg_id, String name, String branch, String contact, String email, String uname,
			String pass) {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/training?autoReconnect=true&useSSL=false",
					"root", "8618");
			PreparedStatement pst = con.prepareStatement("insert into user_details values(?,?,?,?,?,?,?)");

			pst.setString(1, reg_id);
			pst.setString(2, name);
			pst.setString(3, branch);
			pst.setString(4, contact);
			pst.setString(5, email);
			pst.setString(6, uname);
			pst.setString(7, pass);

			i = pst.executeUpdate();
			System.out.println(i);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return i;

	}

}
