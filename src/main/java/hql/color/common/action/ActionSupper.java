package hql.color.common.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ActionSupper extends ActionSupport implements SessionAware, ServletRequestAware,
ServletResponseAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3288352164530203883L;
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	protected Map<String, Object> session;
	
	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		this.response=arg0;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request=arg0;
	}

	@Override
	public void setSession(Map<String , Object> arg0) {
		this.session=arg0;
	}

}
