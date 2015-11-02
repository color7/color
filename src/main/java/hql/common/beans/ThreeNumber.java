package hql.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.math.BigDecimal;

/**
 * 三定位号码实体
 */
public class ThreeNumber implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3934229166855765469L;
	private Integer threeNumberId;
	private ThreeDefaultOdds threeDefaultOdds;
	private String numberName;
	private BigDecimal currentOdds;
	private BigDecimal defaultOdds;

	public ThreeNumber() {
	}

	public ThreeNumber(ThreeDefaultOdds threeDefaultOdds, String numberName,
			BigDecimal currentOdds, BigDecimal defaultOdds) {
		this.threeDefaultOdds = threeDefaultOdds;
		this.numberName = numberName;
		this.currentOdds = currentOdds;
		this.defaultOdds = defaultOdds;
	}

	public Integer getThreeNumberId() {
		return this.threeNumberId;
	}

	public void setThreeNumberId(Integer threeNumberId) {
		this.threeNumberId = threeNumberId;
	}

	public ThreeDefaultOdds getThreeDefaultOdds() {
		return this.threeDefaultOdds;
	}

	public void setThreeDefaultOdds(ThreeDefaultOdds threeDefaultOdds) {
		this.threeDefaultOdds = threeDefaultOdds;
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
