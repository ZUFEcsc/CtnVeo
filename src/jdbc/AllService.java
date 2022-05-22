package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import entity.PointEntity;
import entity.RoleScoreEntity;
import entity.RoleTimeEntity;
import entity.VideoEntity;

public class AllService {
	public static Connection getConn() {
//		?useUnicode=true&characterEncoding=UTF-8
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
	
//	public static void main(String[] args) {
//
//		PointEntity ssd = AllService.FindSSD("SVID_1");
//		
//            if(ssd!=null)
//            {
//            	System.out.println("数据库连接成功!");
//            	System.out.println(ssd.getSsdF1());
//            }
//            
//            else System.out.println("数据库连接失败！");
//	}

	// FindSSD
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

	// Find video
	public static VideoEntity FindVeo(String vname) {

		try {

			Connection conn = getConn();

			QueryRunner runner = new QueryRunner();

			// SELECT * FROM video WHERE vname='SVID_1'
			String sql = "SELECT * FROM video WHERE vname=?";

			List<VideoEntity> video = runner.query(conn, sql, new BeanListHandler<VideoEntity>(VideoEntity.class),
					vname);

			DbUtils.closeQuietly(conn);

			if (video.size() > 0) {
				return video.get(0);
			} else {
				return null;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	// Find vtime
	public static RoleTimeEntity FindRoleTimeVeo(String vname) {

		try {

			Connection conn = getConn();

			QueryRunner runner = new QueryRunner();

			// SELECT * FROM vtime WHERE vname='SVID_1'
			String sql = "SELECT * FROM vtime WHERE vname=?";

			List<RoleTimeEntity> video = runner.query(conn, sql,
					new BeanListHandler<RoleTimeEntity>(RoleTimeEntity.class), vname);

			DbUtils.closeQuietly(conn);

			if (video.size() > 0) {
				return video.get(0);
			} else {
				return null;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	// Find vscore
	public static RoleScoreEntity FindRoleScoreVeo(String vname) {

		try {

			Connection conn = getConn();

			QueryRunner runner = new QueryRunner();

			// SELECT * FROM vscore WHERE vname='SVID_1'
			String sql = "SELECT * FROM vscore WHERE vname=?";

			List<RoleScoreEntity> video = runner.query(conn, sql,
					new BeanListHandler<RoleScoreEntity>(RoleScoreEntity.class), vname);

			DbUtils.closeQuietly(conn);

			if (video.size() > 0) {
				return video.get(0);
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
