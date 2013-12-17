//INCOMPLETE

package net.tryapp.spring3.staticdata;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Categories 
{	
	static List<String> CategoryList;
	ApplicationContext context;
    private DataSource dataSource;
	
	public Categories() 
	{		
		 context = new ClassPathXmlApplicationContext("/WEB-INF/spring-servlet.xml");
	     dataSource = (DataSource)context.getBean("dataSource");
	}
	
	public static List<String> getCategories()
	{
		return CategoryList;
	}
	
	public void setCategories(String Category)
	{
		String sql = "INSERT INTO users " +	"(user_id,username,password,enabled) VALUES (?,?,?,?)";
		Connection conn = null;
 
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
		//	ps.setString(1, arg1)
			ps.executeUpdate();
			ps.close();
 
		} catch (SQLException e) {
			throw new RuntimeException(e);
 
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
	}
}
