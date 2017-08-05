import java.math.BigDecimal;


public class InvoiceCreator {

	private CompositeInvoiceLegoPart invoice;

	public InvoiceCreator() {
		LegoPartObserverImpl lpo = new LegoPartObserverImpl();
		
		invoice = new CompositeInvoiceLegoPart();
		
		LegoPart block = new Block("Block", new BigDecimal("10.00"));
		block.registerObserver(lpo);
		
		LegoPart door = new Door("Door", new BigDecimal("12.50"));
		door.registerObserver(lpo);
		
		LegoPart window = new Window("Window", new BigDecimal("17.50"));
		window.registerObserver(lpo);
		
		FurnitureFactory furnitureFactory = new FurnitureFactory();
		
		LegoPart bed = furnitureFactory.getFurniture(FurnitureFactory.BED);
		bed.registerObserver(lpo);
		
		LegoPart doubleBed = furnitureFactory.getFurniture(FurnitureFactory.DOUBLE_BED);
		doubleBed.registerObserver(lpo);
		
		LegoPart table = furnitureFactory.getFurniture(FurnitureFactory.TABLE);
		table.registerObserver(lpo);
		
		LegoPart sofa = furnitureFactory.getFurniture(FurnitureFactory.SOFA);
		sofa.registerObserver(lpo);
		
		LegoPart chair = furnitureFactory.getFurniture(FurnitureFactory.CHAIR);
		chair.registerObserver(lpo);
		
		invoice = new CompositeInvoiceLegoPart();
			
		invoice.add(block);
		invoice.add(door);
		invoice.add(window);
		invoice.add(bed);
		invoice.add(doubleBed);
		invoice.add(table);
		invoice.add(sofa);
		invoice.add(chair);
	}
	
	public CompositeInvoiceLegoPart getInvoice() {
		return invoice;
	}
}
