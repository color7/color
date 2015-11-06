package hql.color.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.math.BigDecimal;
import java.util.Date;

/**
 * 订单明细实体
 */
public class OrderDetail implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1346205282460199587L;
	private Integer orderDetailId;
	private Order order;
	private String orderNumber;
	private BigDecimal orderOdds;
	private BigDecimal orderMoney;
	private BigDecimal winningMoney;
	private Short orderStatus;
	private Date cancelTime;
	private BigDecimal backWater;
	private Short isWinning;

	public OrderDetail() {
	}

	public OrderDetail(Date cancelTime) {
		this.cancelTime = cancelTime;
	}

	public OrderDetail(Order TOrder, String orderNumber,
			BigDecimal orderOdds, BigDecimal orderMoney,
			BigDecimal winningMoney, Short orderStatus, Date cancelTime,
			BigDecimal backWater, Short isWinning) {
		this.order = order;
		this.orderNumber = orderNumber;
		this.orderOdds = orderOdds;
		this.orderMoney = orderMoney;
		this.winningMoney = winningMoney;
		this.orderStatus = orderStatus;
		this.cancelTime = cancelTime;
		this.backWater = backWater;
		this.isWinning = isWinning;
	}

	public Integer getOrderDetailId() {
		return this.orderDetailId;
	}

	public void setOrderDetailId(Integer orderDetailId) {
		this.orderDetailId = orderDetailId;
	}

	public Order getOrder() {
		return this.order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public String getOrderNumber() {
		return this.orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public BigDecimal getOrderOdds() {
		return this.orderOdds;
	}

	public void setOrderOdds(BigDecimal orderOdds) {
		this.orderOdds = orderOdds;
	}

	public BigDecimal getOrderMoney() {
		return this.orderMoney;
	}

	public void setOrderMoney(BigDecimal orderMoney) {
		this.orderMoney = orderMoney;
	}

	public BigDecimal getWinningMoney() {
		return this.winningMoney;
	}

	public void setWinningMoney(BigDecimal winningMoney) {
		this.winningMoney = winningMoney;
	}

	public Short getOrderStatus() {
		return this.orderStatus;
	}

	public void setOrderStatus(Short orderStatus) {
		this.orderStatus = orderStatus;
	}

	public Date getCancelTime() {
		return this.cancelTime;
	}

	public void setCancelTime(Date cancelTime) {
		this.cancelTime = cancelTime;
	}

	public BigDecimal getBackWater() {
		return this.backWater;
	}

	public void setBackWater(BigDecimal backWater) {
		this.backWater = backWater;
	}

	public Short getIsWinning() {
		return this.isWinning;
	}

	public void setIsWinning(Short isWinning) {
		this.isWinning = isWinning;
	}

}
