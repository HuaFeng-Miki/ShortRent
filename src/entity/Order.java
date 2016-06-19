package entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "order", catalog = "shortrent")
public class Order implements java.io.Serializable {

	// Fields

	private Long id;
	private Long houseId;
	private Long userId;
	private String ordernum;
	private Date checkindate;
	private Date checkoutdate;
	private Long state;
	private Float unitprice;
	private Date ordertime;
	private Float total;

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** full constructor */
	public Order(Long houseId, Long userId, String ordernum, Date checkindate,
			Date checkoutdate, Long state, Float unitprice, Date ordertime,
			Float total) {
		this.houseId = houseId;
		this.userId = userId;
		this.ordernum = ordernum;
		this.checkindate = checkindate;
		this.checkoutdate = checkoutdate;
		this.state = state;
		this.unitprice = unitprice;
		this.ordertime = ordertime;
		this.total = total;
	}

	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "id", unique = true, nullable = false)
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "house_id")
	public Long getHouseId() {
		return this.houseId;
	}

	public void setHouseId(Long houseId) {
		this.houseId = houseId;
	}

	@Column(name = "user_id")
	public Long getUserId() {
		return this.userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	@Column(name = "ordernum", length = 50)
	public String getOrdernum() {
		return this.ordernum;
	}

	public void setOrdernum(String ordernum) {
		this.ordernum = ordernum;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "checkindate", length = 10)
	public Date getCheckindate() {
		return this.checkindate;
	}

	public void setCheckindate(Date checkindate) {
		this.checkindate = checkindate;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "checkoutdate", length = 10)
	public Date getCheckoutdate() {
		return this.checkoutdate;
	}

	public void setCheckoutdate(Date checkoutdate) {
		this.checkoutdate = checkoutdate;
	}

	@Column(name = "state")
	public Long getState() {
		return this.state;
	}

	public void setState(Long state) {
		this.state = state;
	}

	@Column(name = "unitprice", precision = 12, scale = 0)
	public Float getUnitprice() {
		return this.unitprice;
	}

	public void setUnitprice(Float unitprice) {
		this.unitprice = unitprice;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "ordertime", length = 10)
	public Date getOrdertime() {
		return this.ordertime;
	}

	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}

	@Column(name = "total", precision = 12, scale = 0)
	public Float getTotal() {
		return this.total;
	}

	public void setTotal(Float total) {
		this.total = total;
	}

}