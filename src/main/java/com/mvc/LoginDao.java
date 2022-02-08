package com.mvc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDao {

	public String validate(String uname, String pass) {

		Connection con = null;
		String password = null;
		String result = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/training?autoReconnect=true&useSSL=false",
					"root", "8618");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("SELECT password FROM user_details WHERE userName='" + uname + "'");
			System.out.println("SELECT upass FROM user_details WHERE uname='" + uname + "'");
			while (rs.next()) {
				password = rs.getString(1);
			}

			if (password.equals(pass)) {
				result = "Success";

			} else {
				result = "Fail";
			}

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

		System.out.println("Result  ::" + result);

		return result;
	}
}
