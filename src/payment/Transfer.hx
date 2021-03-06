package payment;

/**
 * ...
 * @author fbarbut
 */
class Transfer extends payment.PaymentType
{
	
	public static var TYPE(default, never) = "transfer";

	public function new() 
	{
		var t = sugoi.i18n.Locale.texts;
		this.type = TYPE;
		this.icon = '<i class="icon icon-bank-transfer" aria-hidden="true"></i>';
		this.name = t._("Bank transfer");
		this.link = "/transaction/transfer";
	}
	
}