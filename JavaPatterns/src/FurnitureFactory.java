import java.math.BigDecimal;


public class FurnitureFactory extends AbstractFurnitureFactory{

	public static final String SOFA = "Sofa";
	public static final String DOUBLE_BED = "Double bed";
	public static final String BED = "Bed";
	public static final String TABLE = "Table";
	public static final String CHAIR = "Chair";
	
	@Override
	public LegoPart getFurniture(String name) {

		switch (name) {
		case SOFA:
			return new LegoPartFurnitureCounter(new FurnitureAdaptor(new Furniture(SOFA, new BigDecimal("52.90"), "Italy")));
		case DOUBLE_BED: 
			return new LegoPartFurnitureCounter(new FurnitureAdaptor(new Furniture(DOUBLE_BED, new BigDecimal("31.70"), "France")));
		case BED: 
			return new LegoPartFurnitureCounter(new FurnitureAdaptor(new Furniture(BED, new BigDecimal("27.50"), "Holand")));
		case TABLE: 
			return new LegoPartFurnitureCounter(new FurnitureAdaptor(new Furniture(TABLE, new BigDecimal("15.30"), "Ireland")));
		case CHAIR: 
			return new LegoPartFurnitureCounter(new FurnitureAdaptor(new Furniture(CHAIR, new BigDecimal("9.30"), "Italy")));
		default:
			return new LegoPartFurnitureCounter(new FurnitureAdaptor(new Furniture(CHAIR, new BigDecimal("9.30"), "Italy")));
		}
	}
}
