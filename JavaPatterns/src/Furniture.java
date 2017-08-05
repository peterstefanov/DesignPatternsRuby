import java.math.BigDecimal;


public class Furniture {
	private String name;
	private BigDecimal cost;
	private String manufacturer;
	
	public Furniture(String name, BigDecimal cost, String manufacturer) {
		this.name = name;
		this.cost = cost;
		this.manufacturer = manufacturer;
	}
	
	public String getNameAndManufacturer() {
		return name+ " is made in " + manufacturer;
	}
	
	public BigDecimal getCost() {
		return cost;
	}	
}
