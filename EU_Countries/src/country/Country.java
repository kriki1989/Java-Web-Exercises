package country;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Country {

	private String country;
	private String capital;
	private String language;
	private String currency;

	public String getCountry() {
		return country;
	}
	public String getCapital() {
		return capital;
	}
	public String getLanguage() {
		return language;
	}
	public String getCurrency() {
		return currency;
	}

	public void setCountry(String countryName) throws SQLException {
		DatabaseConnection dao = DatabaseConnection.getDbCon();
		String getCountry="SELECT * FROM eu_countries.eu_countries WHERE country = '" + countryName + "';";
		ResultSet rs = dao.query(getCountry);
		if (rs.next()) {
			rs.beforeFirst();
			while (rs.next()) {
				this.country = rs.getString(1);
				this.capital = rs.getString(2);
				this.language = rs.getString(3);
				this.currency = rs.getString(4);
			}
		}else {
			this.country = "No entry";
			this.capital = "No entry";
			this.language = "No entry";
			this.currency = "No entry";
		}
	}

}
