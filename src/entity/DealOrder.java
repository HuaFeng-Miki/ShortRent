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
 * DealOrder entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "dealorder", catalog = "shortrent")
public class DealOrder implements java.io.Serializable {

	// Fields

	private Long id;
	private Long userId;
	private Long houseId;
	private Long ordernum;
	private Date checkindate;
	private Date checkoutdate;
	private Float unitprice;
	private Date orderdate;
	private Date checktime;
	private Float total;
	private Long state;

	// Constructors

	/** default constructor */
	public DealOrder() {
	}

	/** full constructor */
	public DealOrder(Long userId, Long houseId, Long ordernum,
			Date checkindate, Date checkoutdate, Float unitprice,
			Date orderdate, Date checktime, Float total, Long state) {
		this.userId = userId;
		this.houseId = houseId;
		this.ordernum = ordernum;
		this.checkindate = checkindate;
		this.checkoutdate = checkoutdate;
		this.unitprice = unitprice;
		this.orderdate = orderdate;
		this.checktime = checktime;
		this.total = total;
		this.state = state;
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

	@Column(name = "user_id")
	public Long getUserId() {
		return this.userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	@Column(name = "house_id")
	public Long getHouseId() {
		return this.houseId;
	}

	public void setHouseId(Long houseId) {
		this.houseId = houseId;
	}

	@Column(name = "ordernum")
	public Long getOrdernum() {
		return this.ordernum;
	}

	public void setOrdernum(Long ordernum) {
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

	@Column(name = "unitprice", precision = 12, scale = 0)
	public Float getUnitprice() {
		return this.unitprice;
	}

	public void setUnitprice(Float unitprice) {
		this.unitprice = unitprice;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "orderdate", length = 10)
	public Date getOrderdate() {
		return this.orderdate;
	}

	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "checktime", length = 10)
	public Date getChecktime() {
		return this.checktime;
	}

	public void setChecktime(Date checktime) {
		this.checktime = checktime;
	}

	@Column(name = "total", precision = 12, scale = 0)
	public Float getTotal() {
		return this.total;
	}

	public void setTotal(Float total) {
		this.total = total;
	}

	@Column(name = "state")
	public Long getState() {
		return this.state;
	}

	public void setState(Long state) {
		this.state = state;
	}

}