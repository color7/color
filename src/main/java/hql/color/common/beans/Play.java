package hql.color.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.math.BigDecimal;

/**
 * 玩法实体
 */
public class Play implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3501098292678171801L;
	private Integer playId;
	private PlayGroup playGroup;
	private String palyName;
	private Short palyEnabled;
	private BigDecimal oddsMax;
	private Integer palyMin;
	private Integer singleMax;
	private Integer singleItemMax;

	public Play() {
	}

	public Play(PlayGroup playGroup, String palyName, Short palyEnabled,
			BigDecimal oddsMax, Integer palyMin, Integer singleMax,
			Integer singleItemMax) {
		this.playGroup = playGroup;
		this.palyName = palyName;
		this.palyEnabled = palyEnabled;
		this.oddsMax = oddsMax;
		this.palyMin = palyMin;
		this.singleMax = singleMax;
		this.singleItemMax = singleItemMax;
	}

	public Integer getPlayId() {
		return this.playId;
	}

	public void setPlayId(Integer playId) {
		this.playId = playId;
	}

	public PlayGroup getPlayGroup() {
		return this.playGroup;
	}

	public void setPlayGroup(PlayGroup playGroup) {
		this.playGroup = playGroup;
	}

	public String getPalyName() {
		return this.palyName;
	}

	public void setPalyName(String palyName) {
		this.palyName = palyName;
	}

	public Short getPalyEnabled() {
		return this.palyEnabled;
	}

	public void setPalyEnabled(Short palyEnabled) {
		this.palyEnabled = palyEnabled;
	}

	public BigDecimal getOddsMax() {
		return this.oddsMax;
	}

	public void setOddsMax(BigDecimal oddsMax) {
		this.oddsMax = oddsMax;
	}

	public Integer getPalyMin() {
		return this.palyMin;
	}

	public void setPalyMin(Integer palyMin) {
		this.palyMin = palyMin;
	}

	public Integer getSingleMax() {
		return this.singleMax;
	}

	public void setSingleMax(Integer singleMax) {
		this.singleMax = singleMax;
	}

	public Integer getSingleItemMax() {
		return this.singleItemMax;
	}

	public void setSingleItemMax(Integer singleItemMax) {
		this.singleItemMax = singleItemMax;
	}

}
