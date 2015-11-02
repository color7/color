package hql.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

/**
 * 消息推送实体
 */
public class MsgPush implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 434143220126827597L;
	private Integer msgPushId;
	private Integer pushContent;

	public MsgPush() {
	}

	public MsgPush(Integer pushContent) {
		this.pushContent = pushContent;
	}

	public Integer getMsgPushId() {
		return this.msgPushId;
	}

	public void setMsgPushId(Integer msgPushId) {
		this.msgPushId = msgPushId;
	}

	public Integer getPushContent() {
		return this.pushContent;
	}

	public void setPushContent(Integer pushContent) {
		this.pushContent = pushContent;
	}

}
