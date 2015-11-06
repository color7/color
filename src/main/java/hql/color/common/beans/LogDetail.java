package hql.color.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

/**
 * 日志明细实体
 */
public class LogDetail implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4439373944139829627L;
	private Integer logDetailId;
	private Log log;
	private String logDetail;
	private Short detailType;

	public LogDetail() {
	}

	public LogDetail(Log log, String logDetail, Short detailType) {
		this.log = log;
		this.logDetail = logDetail;
		this.detailType = detailType;
	}

	public Integer getLogDetailId() {
		return this.logDetailId;
	}

	public void setLogDetailId(Integer logDetailId) {
		this.logDetailId = logDetailId;
	}

	public Log getLog() {
		return this.log;
	}

	public void setLog(Log log) {
		this.log = log;
	}

	public String getLogDetail() {
		return this.logDetail;
	}

	public void setLogDetail(String logDetail) {
		this.logDetail = logDetail;
	}

	public Short getDetailType() {
		return this.detailType;
	}

	public void setDetailType(Short detailType) {
		this.detailType = detailType;
	}

}
