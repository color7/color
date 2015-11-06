package hql.color.rear.userAction;

import hql.color.common.action.ActionSupper;
import hql.color.common.beans.JsonBean;
import hql.color.common.utils.GetRequestUtil;
import hql.color.rear.userService.UserService;
import hql.color.rear.vo.UserVo;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;

/**
 * @ClassName: LoginAction
 * @Description: (这里用一句话描述这个类的作用)
 * @author 林润树
 * @ApplicationType(应用程序类/WEB类/公共工具类)：(如：公共工具类)
 * 应用程序类：指有main()方法的类
 * WEB类：指Web访问使用的类
 * 公共工具类：指相对通用，与具体项目无关，不同项目可公用的类
 --------------------------------------------------------------------------------------
 * History：
   Date			Author			Version			Modifications
   2015年11月4日   @callsure		V01.00.000		根据需求XXX，新建类

 --------------------------------------------------------------------------------------
 */
@Controller
public class LoginAction extends ActionSupper implements ModelDriven<UserVo>{
	
	private UserVo userVo;
	
	private UserService userServiceF;
	
	public String userLogin(){
		JsonBean jb = userServiceF.loginUser(userVo);
		if(jb.isSuccess()){
			//登录成功
			GetRequestUtil.setLoginUserVo((UserVo) jb.getObj());
		}else{
			return "false";
		}
		return "success";
	}

	@Override
	public UserVo getModel() {
		if(userVo == null){
			userVo = new UserVo();
		}
		return userVo;
	}

	public UserVo getUserVo() {
		return userVo;
	}

	public void setUserVo(UserVo userVo) {
		this.userVo = userVo;
	}

	public UserService getUserServiceF() {
		return userServiceF;
	}

	@Autowired
	public void setUserServiceF(UserService userServiceF) {
		this.userServiceF = userServiceF;
	}

}
