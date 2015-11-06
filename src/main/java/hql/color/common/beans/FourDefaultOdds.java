package hql.color.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.math.BigDecimal;
import java.util.SortedSet;
import java.util.TreeSet;

/**
 * 鍥涘畾浣嶉粯璁よ禂鐜囧疄浣�
 */
public class FourDefaultOdds implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2778182570444418214L;
	private Integer fourDefaultOddsId;
	private Integer playId;
	private String playName;
	private BigDecimal defaultOdds;
	private SortedSet<FourNumber> fourNumbers = new TreeSet<>();

	public FourDefaultOdds() {
	}

	public FourDefaultOdds(Integer playId, String playName,
			BigDecimal defaultOdds) {
		this.playId = playId;
		this.playName = playName;
		this.defaultOdds = defaultOdds;
	}

	public Integer getFourDefaultOddsId() {
		return this.fourDefaultOddsId;
	}

	public void setFourDefaultOddsId(Integer fourDefaultOddsId) {
		this.fourDefaultOddsId = fourDefaultOddsId;
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

	public SortedSet<FourNumber> getFourNumbers() {
		return this.fourNumbers;
	}

	public void setFourNumbers(SortedSet<FourNumber> fourNumbers) {
		this.fourNumbers = fourNumbers;
	}

}
