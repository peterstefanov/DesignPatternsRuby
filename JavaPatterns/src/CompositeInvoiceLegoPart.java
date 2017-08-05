import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;


public class CompositeInvoiceLegoPart implements LegoPart{

	List<LegoPart> components = new ArrayList<LegoPart>();
	private String name;
	private BigDecimal cost;
	private Observable observable;

	public CompositeInvoiceLegoPart(String name, BigDecimal cost) {
		observable = new Observable(this);
		this.name = name;
		this.cost = cost;
	}
	
	public CompositeInvoiceLegoPart() {
		observable = new Observable(this);
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
	 
	@Override
	public void registerObserver(Observer observer) {
		observable.registerObserver(observer);
	}

	@Override
	public void notifyObservers() {
		observable.notifyObservers();		
	}
	
	public String toString() {
		BigDecimal total = BigDecimal.ZERO;
		String text = "";
		
		for (LegoPart component : components) {
			total = total.add(((LegoPart) component).getCost());
			text += ((LegoPart) component).getName() + ": " + ((LegoPart) component).getCost() + "\n";
		}
		
		return text + "TOTAL: " + total.toString() + " including " + LegoPartFurnitureCounter.getNumberOfParts() + " furniture parts";	
	}
}
