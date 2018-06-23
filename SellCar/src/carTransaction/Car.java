package carTransaction;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.*;

public class Car {
	private String registration;
	private String factory;
	private String model;
	private String colour;
	private int cc;
	private int regdate;

	public Car () {}
	
	public Car(String registration, String factory, String model, String colour, int cc, int regdate) {
		this.registration = registration;
		this.factory = factory;
		this.model = model;
		this.colour = colour;
		this.cc = cc;
		this.regdate = regdate;
	}

	public String getRegistration() {
		return registration;
	}
	public String getFactory() {
		return factory;
	}
	public String getModel() {
		return model;
	}
	public String getColour() {
		return colour;
	}
	public int getCc() {
		return cc;
	}
	public int getRegdate() {
		return regdate;
	}

	public void setRegistration(String registration) {
		this.registration = registration;
	}
	public void setFactory(String factory) {
		this.factory = factory;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public void setColour(String colour) {
		this.colour = colour;
	}
	public void setCc(int cc) {
		this.cc = cc;
	}
	public void setRegdate(int regdate) {
		this.regdate = regdate;
	}

	public int insertValues() {
		DatabaseConnection dao = DatabaseConnection.getDbCon();
		String insertion = "INSERT INTO car VALUES ('"+this.registration+"', '"+this.factory+"', '"+this.model+"', '"+this.colour+"', "+this.cc+", "+this.regdate+");";
		int rowsAdded = 0;
		try {
			rowsAdded = dao.insert(insertion);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowsAdded;
	}

	public ArrayList <Car> findValues() {
		ArrayList<Car> rows = new ArrayList<Car>();
		DatabaseConnection dao = DatabaseConnection.getDbCon();
		String insertion = "SELECT * FROM car WHERE colour LIKE '%' ";
		if (this.registration != null)
			insertion += "AND registration = '" + this.registration + "' ";
		if (this.factory != null)
			insertion += "AND factory = '"+ this.factory +"' ";
		if (this.model != null) {
			insertion += "AND model = '"+ this.model +"' ";
		}
		if (this.cc != 0) {
			insertion += "AND cc = '"+ this.cc +"' ";
		}
		if (this.regdate != 0) {
			insertion += "AND regdate = '"+ this.regdate +"' ";
		}
		try {
			ResultSet rs = dao.query(insertion);
			if (rs.next()) {
				rs.beforeFirst();
				while (rs.next()) {
					Car car1 = new Car(rs.getString(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6));
//					this.registration = rs.getString(1);
//					this.factory = rs.getString(2);
//					this.model = rs.getString(3);
//					this.colour = rs.getString(4);
//					this.cc = rs.getInt(5);
//					this.regdate = rs.getInt(6);
					rows.add(car1);
				}
				return rows;
			}
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
