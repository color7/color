package hql.color.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.math.BigDecimal;

/**
 * 浜屽畾浣嶅彿鐮佸疄浣�
 */
public class TwoNumber implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8751206403317357515L;
	private Integer twoNumberId;
	private TwoDefaultOdds twoDefaultOdds;
	private String numberName;
	private BigDecimal currentOdds;
	private BigDecimal defaultOdds;

	public TwoNumber() {
	}

	public TwoNumber(TwoDefaultOdds twoDefaultOdds, String numberName,
			BigDecimal currentOdds, BigDecimal defaultOdds) {
		this.twoDefaultOdds = twoDefaultOdds;
		this.numberName = numberName;
		this.currentOdds = currentOdds;
		this.defaultOdds = defaultOdds;
	}

	public Integer getTwoNumberId() {
		return this.twoNumberId;
	}

	public void setTwoNumberId(Integer twoNumberId) {
		this.twoNumberId = twoNumberId;
	}

	public TwoDefaultOdds getTwoDefaultOdds() {
		return this.twoDefaultOdds;
	}

	public void setTwoDefaultOdds(TwoDefaultOdds twoDefaultOdds) {
		this.twoDefaultOdds = twoDefaultOdds;
	}

	public String getNumberName() {
		return this.numberName;
	}

	public void setNumberName(String numberName) {
		this.numberName = numberName;
	}

	public BigDecimal getCurrentOdds() {
		return this.currentOdds;
	}

	public void setCurrentOdds(BigDecimal currentOdds) {
		this.currentOdds = currentOdds;
	}

	public BigDecimal getDefaultOdds() {
		return this.defaultOdds;
	}

	public void setDefaultOdds(BigDecimal defaultOdds) {
		this.defaultOdds = defaultOdds;
	}

}
