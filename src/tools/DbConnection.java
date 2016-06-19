package tools;

import java.sql.*;
//测试mysql数据库连接
public class DbConnection {
	//定义相关参数
	final static String driverName="com.mysql.jdbc.Driver";
	final static String url="jdbc:mysql://localhost:3306/shortrent";
	static String username= "root";
	static String password="root";
	
	//获取数据库连接，需要处理异常
	public static Connection getConnection(){
		Connection conn=null;
		try {
			Class.forName(driverName);
			conn=DriverManager.getConnection(url, username, password);
			return conn;
		} catch (Exception e) {
			System.out.println("无法连接数据库，出现异常");
			e.printStackTrace();
			return conn;
		}
	}
	
	//在main函数测试
	public static void main(String[] args) {
		Connection conn = DbConnection.getConnection();
		if (conn!=null) {
			System.out.println("数据库连接成功！");
		}else {
			System.out.println("数据库连接失败!");
		}
	}
}
