/**  
 * @Package： hql.rear.userServiceImpl
 * @FileName: UserServiceImpl.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: 林润树
 * @Date: 2015年11月4日
 */
package hql.color.rear.userServiceImpl;

import java.lang.reflect.InvocationTargetException;

import org.apache.commons.beanutils.BeanUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;









import hql.color.common.beans.JsonBean;
import hql.color.common.beans.User;
import hql.color.common.dao.UserDao;
import hql.color.rear.userService.UserService;
import hql.color.rear.vo.UserVo;

/**
 * @ClassName: UserServiceImpl
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
@Service("userServiceF")
public class UserServiceImpl implements UserService {
	
	private Logger loger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	private UserDao userDao;

	@Override
	public JsonBean loginUser(UserVo userVo) {
		JsonBean jb = new JsonBean();
		jb.setSuccess(false);
		User user = userDao.getUserAccount(userVo);
		if(user != null){
			user = userDao.getUserLogin(userVo);
			if(user != null){
				jb.setSuccess(true);
				try {
					BeanUtils.copyProperties(userVo,user);
				} catch (IllegalAccessException | InvocationTargetException e) {
					e.printStackTrace();
				}
				jb.setObj(userVo);
			}
		}
		return jb;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}


}
