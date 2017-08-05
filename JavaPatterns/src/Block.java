import java.math.BigDecimal;


public class Block implements LegoPart{

	private String name;
	private BigDecimal cost;
	private Observable observable;
	
	public Block(String name, BigDecimal cost) {
		observable = new Observable(this);
		this.name = name;
		this.cost = cost;
	}
	
	public String getName() {
		notifyObservers();
		return name;
	}
	
	public BigDecimal getCost() {
		return cost;
	}	
	
	public void add(LegoPart component) {
		// this is a leaf node so adding is not applicable here
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
		return name;	
	}
 }