package mall;
import java.sql.*;
import java.util.*;

public class OrderDAO {
	public void insert(String id, String pid, int count) {
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_c", "root", "12345678");
			Statement stmt = conn.createStatement();
			stmt.executeUpdate("insert into _order (id, pid, count) values ('" + id + "','" + pid + "'," + count + ")");
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public List select() {
		
		List orderList = new ArrayList();
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_c", "root", "12345678");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from _order");  // resultset으로 되어있음
			// 	rs.next();
			
			
			while(rs.next()) {
				int oid = rs.getInt("oid");
				String id = rs.getString("id");
				String pid = rs.getString("pid");
				int count = rs.getInt("count");
				
				OrderVO vo = new OrderVO();
				vo.setOid(oid);
				vo.setId(pid);
				vo.setPid(pid);
				vo.setCount(count);

				orderList.add(vo);
			}
			
			rs.close();
			stmt.close();
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return orderList;
	}
}
