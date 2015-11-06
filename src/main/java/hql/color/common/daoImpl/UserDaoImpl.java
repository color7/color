package hql.color.common.daoImpl;

import hql.color.common.beans.User;
import hql.color.common.dao.UserDao;
import hql.color.rear.vo.UserVo;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 * @ClassName: UserDaoImpl
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
@Repository("userDao")
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {
	
	@Override
	public User getUserAccount(UserVo userVo) {
		Criteria crit = this.getCurrentSession().createCriteria(User.class);
		return (User) crit.add(Restrictions.eq("userAccount", userVo.getUserAccount())).uniqueResult();
//		String hql = "from User where userAccount = :userAccount";
//		Map<String, Object> params = new HashMap<String, Object>();
//		params.put("userAccount", userVo.getUserAccount());
//		User user = (User) this.get(hql, params);
//		return user;
	}
	
	@Override
	public User getUserLogin(UserVo userVo){
		Criteria crit = this.getCurrentSession().createCriteria(User.class);
		return (User) crit.add(Restrictions.eq("userAccount", userVo.getUserAccount()))
				.add(Restrictions.eq("userPassword", userVo.getUserPassword())).uniqueResult();
	}
	
}
