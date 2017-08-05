import java.math.BigDecimal;


public class FurnitureAdaptor implements LegoPart{

	private Furniture furniture;
	private Observable observable;
	
	public FurnitureAdaptor(Furniture furniture) {
		observable = new Observable(this);
		this.furniture = furniture;
	}
	
	public String getName() {
		return furniture.getNameAndManufacturer();
	}
	
	public BigDecimal getCost() {
		return furniture.getCost();
	}	
	
	public void add(LegoPart component) {
		// this is a leaf node so adding is not applicable here
	}
	
	public void registerObserver(Observer observer) {
		observable.registerObserver(observer);
	}

	public void notifyObservers() {
		observable.notifyObservers();		
	}
}
