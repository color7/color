package hql.color.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

/**
 * 公告实体
 */
public class Notice implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8137837241270830597L;
	private Integer noticeId;
	private String noticeContent;

	public Notice() {
	}

	public Notice(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Integer getNoticeId() {
		return this.noticeId;
	}

	public void setNoticeId(Integer noticeId) {
		this.noticeId = noticeId;
	}

	public String getNoticeContent() {
		return this.noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

}
