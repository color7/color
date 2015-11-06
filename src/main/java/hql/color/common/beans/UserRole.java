package hql.color.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.math.BigDecimal;

/**
 * 用户角色实体
 */
public class UserRole implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1561279376443237627L;
	private Integer userRoleId;
	private User user;
	private Role role;
	private BigDecimal parentPercentMax;
	private BigDecimal percentMax;
	private Integer parentId;

	public UserRole() {
	}

	public UserRole(User user, Role role, BigDecimal parentPercentMax,
			BigDecimal percentMax, Integer parentId) {
		this.user = user;
		this.role = role;
		this.parentPercentMax = parentPercentMax;
		this.percentMax = percentMax;
		this.parentId = parentId;
	}

	public Integer getUserRoleId() {
		return this.userRoleId;
	}

	public void setUserRoleId(Integer userRoleId) {
		this.userRoleId = userRoleId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public BigDecimal getParentPercentMax() {
		return this.parentPercentMax;
	}

	public void setParentPercentMax(BigDecimal parentPercentMax) {
		this.parentPercentMax = parentPercentMax;
	}

	public BigDecimal getPercentMax() {
		return this.percentMax;
	}

	public void setPercentMax(BigDecimal percentMax) {
		this.percentMax = percentMax;
	}

	public Integer getParentId() {
		return this.parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

}
