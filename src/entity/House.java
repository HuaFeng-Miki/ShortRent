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
 * House entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "house", catalog = "shortrent")
public class House implements java.io.Serializable {

	// Fields

	private Long id;
	private Long userId;
	private String name;
	private Long renttype;
	private String address;
	private Float dayprice;
	private Float bill;
	private Long kind;
	private String picture1;
	private String shotcut1;
	private String picture2;
	private String shotcut2;
	private String picture3;
	private String shotcut3;
	private Long guestnum;
	private Long bednum;
	private Long bedroomnum;
	private Long roomnum;
	private Long bedtype;
	private Long toiletnum;
	private String roomdesc;
	private String userule;
	private String facility;
	private Long minday;
	private Long maxday;
	private Long refundday;
	private String payrule;
	private Date createtime;
	private Long state;

	
	// Constructors

	/** default constructor */
	public House() {
	}

	/** full constructor */
	public House(Long userId, String name, Long renttype, String address,
			Float dayprice, Float bill, Long kind, String picture1,
			String shotcut1, String picture2, String shotcut2, String picture3,
			String shotcut3, Long guestnum, Long bednum, Long bedroomnum,
			Long roomnum, Long bedtype, Long toiletnum, String roomdesc,
			String userule, String facility, Long minday, Long maxday,
			Long refundday, String payrule, Date createtime, Long state) {
		this.userId = userId;
		this.name = name;
		this.renttype = renttype;
		this.address = address;
		this.dayprice = dayprice;
		this.bill = bill;
		this.kind = kind;
		this.picture1 = picture1;
		this.shotcut1 = shotcut1;
		this.picture2 = picture2;
		this.shotcut2 = shotcut2;
		this.picture3 = picture3;
		this.shotcut3 = shotcut3;
		this.guestnum = guestnum;
		this.bednum = bednum;
		this.bedroomnum = bedroomnum;
		this.roomnum = roomnum;
		this.bedtype = bedtype;
		this.toiletnum = toiletnum;
		this.roomdesc = roomdesc;
		this.userule = userule;
		this.facility = facility;
		this.minday = minday;
		this.maxday = maxday;
		this.refundday = refundday;
		this.payrule = payrule;
		this.createtime = createtime;
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

	@Column(name = "name", length = 50)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "renttype")
	public Long getRenttype() {
		return this.renttype;
	}

	public void setRenttype(Long renttype) {
		this.renttype = renttype;
	}

	@Column(name = "address", length = 200)
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "dayprice", precision = 12, scale = 0)
	public Float getDayprice() {
		return this.dayprice;
	}

	public void setDayprice(Float dayprice) {
		this.dayprice = dayprice;
	}

	@Column(name = "bill", precision = 12, scale = 0)
	public Float getBill() {
		return this.bill;
	}

	public void setBill(Float bill) {
		this.bill = bill;
	}

	@Column(name = "kind")
	public Long getKind() {
		return this.kind;
	}

	public void setKind(Long kind) {
		this.kind = kind;
	}

	@Column(name = "picture1", length = 200)
	public String getPicture1() {
		return this.picture1;
	}

	public void setPicture1(String picture1) {
		this.picture1 = picture1;
	}

	@Column(name = "shotcut1", length = 200)
	public String getShotcut1() {
		return this.shotcut1;
	}

	public void setShotcut1(String shotcut1) {
		this.shotcut1 = shotcut1;
	}

	@Column(name = "picture2", length = 200)
	public String getPicture2() {
		return this.picture2;
	}

	public void setPicture2(String picture2) {
		this.picture2 = picture2;
	}

	@Column(name = "shotcut2", length = 200)
	public String getShotcut2() {
		return this.shotcut2;
	}

	public void setShotcut2(String shotcut2) {
		this.shotcut2 = shotcut2;
	}

	@Column(name = "picture3", length = 200)
	public String getPicture3() {
		return this.picture3;
	}

	public void setPicture3(String picture3) {
		this.picture3 = picture3;
	}

	@Column(name = "shotcut3", length = 200)
	public String getShotcut3() {
		return this.shotcut3;
	}

	public void setShotcut3(String shotcut3) {
		this.shotcut3 = shotcut3;
	}

	@Column(name = "guestnum")
	public Long getGuestnum() {
		return this.guestnum;
	}

	public void setGuestnum(Long guestnum) {
		this.guestnum = guestnum;
	}

	@Column(name = "bednum")
	public Long getBednum() {
		return this.bednum;
	}

	public void setBednum(Long bednum) {
		this.bednum = bednum;
	}

	@Column(name = "bedroomnum")
	public Long getBedroomnum() {
		return this.bedroomnum;
	}

	public void setBedroomnum(Long bedroomnum) {
		this.bedroomnum = bedroomnum;
	}

	@Column(name = "roomnum")
	public Long getRoomnum() {
		return this.roomnum;
	}

	public void setRoomnum(Long roomnum) {
		this.roomnum = roomnum;
	}

	@Column(name = "bedtype")
	public Long getBedtype() {
		return this.bedtype;
	}

	public void setBedtype(Long bedtype) {
		this.bedtype = bedtype;
	}

	@Column(name = "toiletnum")
	public Long getToiletnum() {
		return this.toiletnum;
	}

	public void setToiletnum(Long toiletnum) {
		this.toiletnum = toiletnum;
	}

	@Column(name = "roomdesc", length = 200)
	public String getRoomdesc() {
		return this.roomdesc;
	}

	public void setRoomdesc(String roomdesc) {
		this.roomdesc = roomdesc;
	}

	@Column(name = "userule", length = 200)
	public String getUserule() {
		return this.userule;
	}

	public void setUserule(String userule) {
		this.userule = userule;
	}

	@Column(name = "facility", length = 200)
	public String getFacility() {
		return this.facility;
	}

	public void setFacility(String facility) {
		this.facility = facility;
	}

	@Column(name = "minday")
	public Long getMinday() {
		return this.minday;
	}

	public void setMinday(Long minday) {
		this.minday = minday;
	}

	@Column(name = "maxday")
	public Long getMaxday() {
		return this.maxday;
	}

	public void setMaxday(Long maxday) {
		this.maxday = maxday;
	}

	@Column(name = "refundday")
	public Long getRefundday() {
		return this.refundday;
	}

	public void setRefundday(Long refundday) {
		this.refundday = refundday;
	}

	@Column(name = "payrule", length = 200)
	public String getPayrule() {
		return this.payrule;
	}

	public void setPayrule(String payrule) {
		this.payrule = payrule;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "createtime", length = 10)
	public Date getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	@Column(name = "state")
	public Long getState() {
		return this.state;
	}

	public void setState(Long state) {
		this.state = state;
	}

}