package hql.color.common.dao;

import hql.color.common.beans.User;
import hql.color.rear.vo.UserVo;

/**
 * @ClassName: UserDao
 * @Description: (这里用一句话描述这个类的作用)
 * @author 林润树
 * @ApplicationType(应用程序类/WEB类/公共工具类)：(如：公共工具类)
 * 应用程序类：指有main()方法的类
 * WEB类：指Web访问使用的类
 * 公共工具类：指相对通用，与具体项目无关，不同项目可公用的类
 --------------------------------------------------------------------------------------
 * History：
   Date			Author			Version			Modifications
   2015年11月5日   @callsure		V01.00.000		根据需求XXX，新建类

 --------------------------------------------------------------------------------------
 */
public interface UserDao extends BaseDao<User> {
	public User getUserAccount(UserVo userVo);
	
	public User getUserLogin(UserVo userVo);

}
