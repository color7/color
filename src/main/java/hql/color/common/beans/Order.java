package hql.color.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

/**
 * 订单实体
 */
public class Order implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5520213183149088321L;
	private Integer orderId;
	private User user;
	private Integer playId;
	private Integer playGroupId;
	private String ip;
	private String betPath;
	private String issueNumber;
	private Date orderTime;
	private SortedSet<OrderDetail> orderDetails = new TreeSet<OrderDetail>();

	public Order() {
	}

	public Order(Date orderTime) {
		this.orderTime = orderTime;
	}

	public Order(User User, Integer playId, Integer playGroupId, String ip,
			String betPath, String issueNumber, Date orderTime) {
		this.user = user;
		this.playId = playId;
		this.playGroupId = playGroupId;
		this.ip = ip;
		this.betPath = betPath;
		this.issueNumber = issueNumber;
		this.orderTime = orderTime;
	}

	public Integer getOrderId() {
		return this.orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getPlayId() {
		return this.playId;
	}

	public void setPlayId(Integer playId) {
		this.playId = playId;
	}

	public Integer getPlayGroupId() {
		return this.playGroupId;
	}

	public void setPlayGroupId(Integer playGroupId) {
		this.playGroupId = playGroupId;
	}

	public String getIp() {
		return this.ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getBetPath() {
		return this.betPath;
	}

	public void setBetPath(String betPath) {
		this.betPath = betPath;
	}

	public String getIssueNumber() {
		return this.issueNumber;
	}

	public void setIssueNumber(String issueNumber) {
		this.issueNumber = issueNumber;
	}

	public Date getOrderTime() {
		return this.orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}

	public SortedSet<OrderDetail> getOrderDetails() {
		return this.orderDetails;
	}

	public void setOrderDetails(SortedSet<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

}
