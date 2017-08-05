import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;


public class CompositeLegoPart implements LegoPart{

	List<LegoPart> components = new ArrayList<LegoPart>();
	private String name;
	private BigDecimal cost;

	public CompositeLegoPart(String name, BigDecimal cost) {
		this.name = name;
		this.cost = cost;
	}
	
	public CompositeLegoPart() {
	}

	public void add(LegoPart component) {
		components.add(component);
	}

	public String getName() {
		return name;
	}
	
	public BigDecimal getCost() {
		return cost;
	}
	
	public void remove(LegoPart component) {
		components.remove(component);
	}
	 
	public String toString() {
		BigDecimal total = BigDecimal.ZERO;
		String text = "";
		
		for (LegoPart component : components) {
			total = total.add(((LegoPart) component).getCost());
			text += ((LegoPart) component).getName() + ": " + ((LegoPart) component).getCost() + "\n";
		}
		
		return text + "TOTAL: " + total.toString();	
	}
}
