package country;
import com.mysql.jdbc.Connection;
import java.sql.*;
import java.sql.DriverManager;

public final class DatabaseConnection {
	public Connection conn;
	private PreparedStatement statement;
	public static DatabaseConnection db;
	private DatabaseConnection() {
		String url= "jdbc:mysql://localhost/eu_countries?characterEncoding=utf8&amp;allowMultiQueries=true";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "kriki1989";
		String password = "1234";
		try {
			Class.forName(driver).newInstance();
			this.conn = (Connection)DriverManager.getConnection(url,userName,password);
		}
		catch (Exception sqle) {
			sqle.printStackTrace();
		}
	} // end DatabaseConnection()

	public static synchronized DatabaseConnection getDbCon() {
		if ( db == null ) {
			db = new DatabaseConnection();
		}
		return db;
	} // end getDbCon()

	public ResultSet query(String query) throws SQLException{
		statement = db.conn.prepareStatement(query, ResultSet.CONCUR_UPDATABLE);
		ResultSet res = statement.executeQuery();
		return res;
	} // end query()

	public int insert(String insertQuery) throws SQLException {
		statement = db.conn.prepareStatement(insertQuery);
		int result = statement.executeUpdate();
		return result;
	} // end insert()
} // end of class