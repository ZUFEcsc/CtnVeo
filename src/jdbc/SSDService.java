package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import entity.PointEntity;
import entity.VideoEntity;

public class SSDService {
	public static Connection getConn() {
		String url = "JDBC:mysql://localhost:3306/doraemon_vis?useUnicode=true&characterEncoding=UTF-8";

		Connection conn = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(url, "root", "123456");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return conn;
	}

	// FindVeo
	public static PointEntity FindSSD(String vname) {

		try {

			Connection conn = getConn();

			QueryRunner runner = new QueryRunner();

			// SELECT * FROM ssd WHERE vname='SVID_1'
			String sql = "SELECT * FROM ssd WHERE vname=?";

			List<PointEntity> ssds = runner.query(conn, sql, new BeanListHandler<PointEntity>(PointEntity.class),
					vname);

			DbUtils.closeQuietly(conn);

			if (ssds.size() > 0) {
				return ssds.get(0);
			} else {
				return null;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
