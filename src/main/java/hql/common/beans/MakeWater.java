package hql.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.math.BigDecimal;

/**
 * 赚水实体
 */
public class MakeWater implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4069182622954179693L;
	private Integer makeWaterId;
	private User user;
	private User parent;
	private BigDecimal makeWaterValue;
	private Integer palyGroupId;

	public MakeWater() {
	}

	public MakeWater(User user, User parent, BigDecimal makeWaterValue,
			Integer palyGroupId) {
		this.user = user;
		this.parent = parent;
		this.makeWaterValue = makeWaterValue;
		this.palyGroupId = palyGroupId;
	}

	public Integer getMakeWaterId() {
		return this.makeWaterId;
	}

	public void setMakeWaterId(Integer makeWaterId) {
		this.makeWaterId = makeWaterId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public User getParent() {
		return this.parent;
	}

	public void setParent(User parent) {
		this.parent = parent;
	}

	public BigDecimal getMakeWaterValue() {
		return this.makeWaterValue;
	}

	public void setMakeWaterValue(BigDecimal makeWaterValue) {
		this.makeWaterValue = makeWaterValue;
	}

	public Integer getPalyGroupId() {
		return this.palyGroupId;
	}

	public void setPalyGroupId(Integer palyGroupId) {
		this.palyGroupId = palyGroupId;
	}

}
