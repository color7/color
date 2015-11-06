package hql.color.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

/**
 * 三定位默认赔率实体
 */
public class ThreeDefaultOdds implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4058073435190427192L;
	private Integer threeDefaultOddsId;
	private Integer playId;
	private String playName;
	private BigDecimal defaultOdds;
	private SortedSet<ThreeNumber> threeNumbers = new TreeSet<ThreeNumber>();

	public ThreeDefaultOdds() {
	}

	public ThreeDefaultOdds(Integer playId, String playName,
			BigDecimal defaultOdds) {
		this.playId = playId;
		this.playName = playName;
		this.defaultOdds = defaultOdds;
	}

	public Integer getThreeDefaultOddsId() {
		return this.threeDefaultOddsId;
	}

	public void setThreeDefaultOddsId(Integer threeDefaultOddsId) {
		this.threeDefaultOddsId = threeDefaultOddsId;
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

	public SortedSet<ThreeNumber> getThreeNumbers() {
		return threeNumbers;
	}

	public void setThreeNumbers(SortedSet<ThreeNumber> threeNumbers) {
		this.threeNumbers = threeNumbers;
	}

}
