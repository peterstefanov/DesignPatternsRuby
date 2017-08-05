
public class LegoPartObserverImpl implements Observer{

	@Override
	public void update(LegoPartObservable legoPart) {
		System.out.println("A lego part: " + legoPart.toString() + " was just added to the invoice!");
		
	}

}
