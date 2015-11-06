package hql.color.common.utils;

import hql.color.common.beans.User;
import hql.color.rear.vo.UserVo;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

/**
 * 获取用户登录信息工具
 */
public class GetRequestUtil {
	
	
	/**
	 * 将已登录的后台用户信息存进session中
	 */
	public static void setLoginUserVo(UserVo userVo){
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.put(CommonUtil.LOGIN_ADMIN, userVo);
	}
	
	/**
	 * 将session中的用户信息取出来
	 */
	public static UserVo getLoginUserVo(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		return (UserVo) session.get(CommonUtil.LOGIN_ADMIN);
	}
}

