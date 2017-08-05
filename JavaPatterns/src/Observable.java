import java.util.ArrayList;
import java.util.Iterator;

public class Observable implements LegoPartObservable{
	
	ArrayList<Observer> observers = new ArrayList<Observer>();
	LegoPartObservable legoPart;
	
	public Observable(LegoPartObservable legoPart) {
		this.legoPart = legoPart;
	}

	@Override
	public void notifyObservers() {
		Iterator<Observer> it = observers.iterator();
		while(it.hasNext()) {
			Observer observer = (Observer)it.next();
			observer.update(legoPart);
		}		
	}

	@Override
	public void registerObserver(Observer observer) {
		observers.add(observer);		
	}
}
