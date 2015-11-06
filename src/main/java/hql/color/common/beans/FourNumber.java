package hql.color.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.math.BigDecimal;

/**
 * 鍥涘畾浣嶅彿鐮佸疄浣�
 */
public class FourNumber implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2919380715790722916L;
	private Integer fourNumberId;
	private FourDefaultOdds fourDefaultOdds;
	private String numberName;
	private BigDecimal currentOdds;
	private BigDecimal defaultOdds;

	public FourNumber() {
	}

	public FourNumber(FourDefaultOdds fourDefaultOdds, String numberName,
			BigDecimal currentOdds, BigDecimal defaultOdds) {
		this.fourDefaultOdds = fourDefaultOdds;
		this.numberName = numberName;
		this.currentOdds = currentOdds;
		this.defaultOdds = defaultOdds;
	}

	public Integer getFourNumberId() {
		return this.fourNumberId;
	}

	public void setFourNumberId(Integer fourNumberId) {
		this.fourNumberId = fourNumberId;
	}

	public FourDefaultOdds getFourDefaultOdds() {
		return this.fourDefaultOdds;
	}

	public void setFourDefaultOdds(FourDefaultOdds fourDefaultOdds) {
		this.fourDefaultOdds = fourDefaultOdds;
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
