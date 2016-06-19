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
 * RentLock entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="rentlock"
    ,catalog="shortrent"
)

public class RentLock  implements java.io.Serializable {


    // Fields    

     private Long id;
     private Long houseId;
     private Date rentdate;
     private Long state;


    // Constructors

    /** default constructor */
    public RentLock() {
    }

    
    /** full constructor */
    public RentLock(Long houseId, Date rentdate, Long state) {
        this.houseId = houseId;
        this.rentdate = rentdate;
        this.state = state;
    }

   
    // Property accessors
    @Id @GeneratedValue
    
    @Column(name="id", unique=true, nullable=false)

    public Long getId() {
        return this.id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    @Column(name="house_id")

    public Long getHouseId() {
        return this.houseId;
    }
    
    public void setHouseId(Long houseId) {
        this.houseId = houseId;
    }
    @Temporal(TemporalType.DATE)
    @Column(name="rentdate", length=10)

    public Date getRentdate() {
        return this.rentdate;
    }
    
    public void setRentdate(Date rentdate) {
        this.rentdate = rentdate;
    }
    
    @Column(name="state")

    public Long getState() {
        return this.state;
    }
    
    public void setState(Long state) {
        this.state = state;
    }
   








}