package hql.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

/**
 * 二定位默认赔率实体
 */
public class TwoDefaultOdds implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4938826235698519041L;
	private Integer twoDefaultOddsId;
	private Integer playId;
	private String playName;
	private BigDecimal defaultOdds;
	private SortedSet<TwoNumber> twoNumbers = new TreeSet<TwoNumber>();

	public TwoDefaultOdds() {
	}

	public TwoDefaultOdds(Integer playId, String playName,
			BigDecimal defaultOdds) {
		this.playId = playId;
		this.playName = playName;
		this.defaultOdds = defaultOdds;
	}

	public Integer getTwoDefaultOddsId() {
		return this.twoDefaultOddsId;
	}

	public void setTwoDefaultOddsId(Integer twoDefaultOddsId) {
		this.twoDefaultOddsId = twoDefaultOddsId;
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

	public SortedSet<TwoNumber> getTwoNumbers() {
		return twoNumbers;
	}

	public void setTwoNumbers(SortedSet<TwoNumber> twoNumbers) {
		this.twoNumbers = twoNumbers;
	}

}
