
public class Main {

	public static void main(String[] args) {
		InvoiceCreator invoiceCreator = new InvoiceCreator();
		CompositeInvoiceLegoPart invoice = invoiceCreator.getInvoice();
		System.out.println(invoice.toString());

	}

}
