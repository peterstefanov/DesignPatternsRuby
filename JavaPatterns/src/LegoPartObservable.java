
public interface LegoPartObservable {

	public void registerObserver(Observer observer);
	
	public void notifyObservers();
}
