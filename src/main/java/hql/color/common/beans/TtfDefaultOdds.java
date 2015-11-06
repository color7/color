package hql.color.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.math.BigDecimal;

/**
 * 二三四字现默认赔率实体
 */
public class TtfDefaultOdds implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer ttfDefaultOddsId;
	private Integer playId;
	private String playName;
	private BigDecimal defaultOdds;

	public TtfDefaultOdds() {
	}

	public TtfDefaultOdds(Integer playId, String playName,
			BigDecimal defaultOdds) {
		this.playId = playId;
		this.playName = playName;
		this.defaultOdds = defaultOdds;
	}

	public Integer getTtfDefaultOddsId() {
		return this.ttfDefaultOddsId;
	}

	public void setTtfDefaultOddsId(Integer ttfDefaultOddsId) {
		this.ttfDefaultOddsId = ttfDefaultOddsId;
	}

	public Integer getPlayId() {
		return this.playId;
	}

	public void setPlayId(Integer playId) {
		this.playId = playId;
	}

	public String getPlayName() {
		return this.playName;
	}

	public void setPlayName(String playName) {
		this.playName = playName;
	}

	public BigDecimal getDefaultOdds() {
		return this.defaultOdds;
	}

	public void setDefaultOdds(BigDecimal defaultOdds) {
		this.defaultOdds = defaultOdds;
	}

}
