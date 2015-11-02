package hql.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

/**
 * 信用额度实体
 */
public class HonorLimit implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3311046207198195249L;
	private Integer honorLimitId;
	private Integer honorLimitMax;
	private Integer residueHonorLimit;
	private Integer usedHonorLimit;
	private User user;
	private User parent;

	public HonorLimit() {
	}

	public HonorLimit(Integer honorLimitMax, Integer residueHonorLimit,
			Integer usedHonorLimit, User user, User parent) {
		this.honorLimitMax = honorLimitMax;
		this.residueHonorLimit = residueHonorLimit;
		this.usedHonorLimit = usedHonorLimit;
		this.user = user;
		this.parent = parent;
	}

	public Integer getHonorLimitId() {
		return this.honorLimitId;
	}

	public void setHonorLimitId(Integer honorLimitId) {
		this.honorLimitId = honorLimitId;
	}

	public Integer getHonorLimitMax() {
		return this.honorLimitMax;
	}

	public void setHonorLimitMax(Integer honorLimitMax) {
		this.honorLimitMax = honorLimitMax;
	}

	public Integer getResidueHonorLimit() {
		return this.residueHonorLimit;
	}

	public void setResidueHonorLimit(Integer residueHonorLimit) {
		this.residueHonorLimit = residueHonorLimit;
	}

	public Integer getUsedHonorLimit() {
		return this.usedHonorLimit;
	}

	public void setUsedHonorLimit(Integer usedHonorLimit) {
		this.usedHonorLimit = usedHonorLimit;
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

}
