package egg.finalproject.payment;

public class IamportPayment {
	private String pg;	// pg사
	private String pay_method;	// 결제방법
	private String merchant_uid;	// 승인번호
	private String name;	// 상품명
	private int amount;		// 금액
	private String buyer_email;	// 구매자 이메일
	private String buyer_name;	// 구매자 성명
	private String buyer_tel;	// 구매자 연락처
	private String buyer_addr;	// 구매자 주소
	private String buyer_postcode;	// 구매자 우편번호
	private String route;	// 바로구매 or 장바구니 구매
	
	public IamportPayment() {}
	public IamportPayment(String pg, String pay_method, String merchant_uid, String name, int amount,
			String buyer_email, String buyer_name, String buyer_tel, String buyer_addr, String buyer_postcode,
			String route) {
		super();
		this.pg = pg;
		this.pay_method = pay_method;
		this.merchant_uid = merchant_uid;
		this.name = name;
		this.amount = amount;
		this.buyer_email = buyer_email;
		this.buyer_name = buyer_name;
		this.buyer_tel = buyer_tel;
		this.buyer_addr = buyer_addr;
		this.buyer_postcode = buyer_postcode;
		this.route = route;
	}
	public String getPg() {
		return pg;
	}
	public void setPg(String pg) {
		this.pg = pg;
	}
	public String getPay_method() {
		return pay_method;
	}
	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}
	public String getMerchant_uid() {
		return merchant_uid;
	}
	public void setMerchant_uid(String merchant_uid) {
		this.merchant_uid = merchant_uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getBuyer_email() {
		return buyer_email;
	}
	public void setBuyer_email(String buyer_email) {
		this.buyer_email = buyer_email;
	}
	public String getBuyer_name() {
		return buyer_name;
	}
	public void setBuyer_name(String buyer_name) {
		this.buyer_name = buyer_name;
	}
	public String getBuyer_tel() {
		return buyer_tel;
	}
	public void setBuyer_tel(String buyer_tel) {
		this.buyer_tel = buyer_tel;
	}
	public String getBuyer_addr() {
		return buyer_addr;
	}
	public void setBuyer_addr(String buyer_addr) {
		this.buyer_addr = buyer_addr;
	}
	public String getBuyer_postcode() {
		return buyer_postcode;
	}
	public void setBuyer_postcode(String buyer_postcode) {
		this.buyer_postcode = buyer_postcode;
	}
	public String getRoute() {
		return route;
	}
	public void setRoute(String route) {
		this.route = route;
	}
	
	@Override
	public String toString() {
		return "IamportPayment [pg=" + pg + ", pay_method=" + pay_method + ", merchant_uid=" + merchant_uid + ", name="
				+ name + ", amount=" + amount + ", buyer_email=" + buyer_email + ", buyer_name=" + buyer_name
				+ ", buyer_tel=" + buyer_tel + ", buyer_addr=" + buyer_addr + ", buyer_postcode=" + buyer_postcode
				+ ", route=" + route + "]";
	}
}
