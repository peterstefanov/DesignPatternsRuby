import java.math.BigDecimal;

public interface LegoPart extends LegoPartObservable{

	public void add(LegoPart component);
	
	public String getName();
	
	public BigDecimal getCost();
	
}
