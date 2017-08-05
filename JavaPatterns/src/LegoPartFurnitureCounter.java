import java.math.BigDecimal;


public class LegoPartFurnitureCounter implements LegoPart{
	Observable observable;	
	LegoPart legoPart;
	static int numberOfParts = 0;
	
	public LegoPartFurnitureCounter(LegoPart legoPart) {
		observable = new Observable(this);
		this.legoPart = legoPart;
	}
	
	@Override
	public void add(LegoPart component) {
	}

	@Override
	public String getName() {
		numberOfParts ++;
		notifyObservers();
		return legoPart.getName();
	}

	@Override
	public BigDecimal getCost() {
		return legoPart.getCost();
	}

	public static int getNumberOfParts() {
		return numberOfParts;
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
		return legoPart.getName();	
	}
}
