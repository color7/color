package hql.color.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.util.SortedSet;
import java.util.TreeSet;

/**
 * 玩法组实体
 */
public class PlayGroup implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4516528979496331706L;
	private Integer playGroupId;
	private String playGroupName;
	private Short playGroupEnabled;
	private SortedSet<Play> plays = new TreeSet<Play>();

	public PlayGroup() {
	}

	public PlayGroup(String playGroupName, Short playGroupEnabled) {
		this.playGroupName = playGroupName;
		this.playGroupEnabled = playGroupEnabled;
	}

	public Integer getPlayGroupId() {
		return this.playGroupId;
	}

	public void setPlayGroupId(Integer playGroupId) {
		this.playGroupId = playGroupId;
	}

	public String getPlayGroupName() {
		return this.playGroupName;
	}

	public void setPlayGroupName(String playGroupName) {
		this.playGroupName = playGroupName;
	}

	public Short getPlayGroupEnabled() {
		return this.playGroupEnabled;
	}

	public void setPlayGroupEnabled(Short playGroupEnabled) {
		this.playGroupEnabled = playGroupEnabled;
	}

	public SortedSet<Play> getPlays() {
		return plays;
	}

	public void setPlays(SortedSet<Play> plays) {
		this.plays = plays;
	}

}
