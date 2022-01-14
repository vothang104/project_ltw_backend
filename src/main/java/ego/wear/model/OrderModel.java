package ego.wear.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class OrderModel extends AbstractModel implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int totalPrice;
	private String status;
	private Timestamp shipDate;
	private long userId;
	public OrderModel(long id, String createdBy, Timestamp createdDate, String modifiedBy, Timestamp modifiedDate,
			int totalPrice, String status, Timestamp shipDate, long userId) {
		super(id, createdBy, createdDate, modifiedBy, modifiedDate);
		this.totalPrice = totalPrice;
		this.status = status;
		this.shipDate = shipDate;
		this.userId = userId;
	}
	public OrderModel() {
		
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Timestamp getShipDate() {
		return shipDate;
	}
	public void setShipDate(Timestamp shipDate) {
		this.shipDate = shipDate;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	
}
