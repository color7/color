package hql.color.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

/**
 * 日志实体
 */
public class Log implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -995132576941884689L;
	private Integer logId;
	private User operaUser;
	private User beOperaUser;
	private Date logOperaTime;
	private String operaIp;
	private Short isLeapfrogOpera;
	private SortedSet<LogDetail> logDetails = new TreeSet<LogDetail>();

	public Log() {
	}

	public Log(Date logOperaTime) {
		this.logOperaTime = logOperaTime;
	}

	public Log(User operaUser, User beOperaUser,
			Date logOperaTime, String operaIp, Short isLeapfrogOpera) {
		this.operaUser = operaUser;
		this.beOperaUser = beOperaUser;
		this.logOperaTime = logOperaTime;
		this.operaIp = operaIp;
		this.isLeapfrogOpera = isLeapfrogOpera;
	}

	public Integer getLogId() {
		return this.logId;
	}

	public void setLogId(Integer logId) {
		this.logId = logId;
	}

	public User getOperaUser() {
		return this.operaUser;
	}

	public void setOperaUser(User operaUser) {
		this.operaUser = operaUser;
	}

	public User getBeOperaUser() {
		return this.beOperaUser;
	}

	public void setBeOperaUser(User beOperaUser) {
		this.beOperaUser = beOperaUser;
	}

	public Date getLogOperaTime() {
		return this.logOperaTime;
	}

	public void setLogOperaTime(Date logOperaTime) {
		this.logOperaTime = logOperaTime;
	}

	public String getOperaIp() {
		return this.operaIp;
	}

	public void setOperaIp(String operaIp) {
		this.operaIp = operaIp;
	}

	public Short getIsLeapfrogOpera() {
		return this.isLeapfrogOpera;
	}

	public void setIsLeapfrogOpera(Short isLeapfrogOpera) {
		this.isLeapfrogOpera = isLeapfrogOpera;
	}

	public SortedSet<LogDetail> getLogDetails() {
		return this.logDetails;
	}

	public void setLogDetails(SortedSet<LogDetail> logDetails) {
		this.logDetails = logDetails;
	}

}
