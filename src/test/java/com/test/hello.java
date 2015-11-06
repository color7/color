/**  
 * @Package： com.test
 * @FileName: hello.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: 林润树
 * @Date: 2015年10月22日
 */
package com.test;

import hql.color.common.beans.User;

import org.hibernate.SessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @ClassName: hello
 * @Description: (这里用一句话描述这个类的作用)
 * @author 林润树
 * @ApplicationType(应用程序类/WEB类/公共工具类)：(如：公共工具类)
 * 应用程序类：指有main()方法的类
 * WEB类：指Web访问使用的类
 * 公共工具类：指相对通用，与具体项目无关，不同项目可公用的类
 --------------------------------------------------------------------------------------
 * History：
   Date			Author			Version			Modifications
   2015年10月22日   linrunshu		V01.00.000		根据需求XXX，新建类

 --------------------------------------------------------------------------------------
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath*:spring/spring-hibernate.xml")
public class hello {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Test
	public void saveTest(){
//		Criteria crit = SessionUtil.openSession().createCriteria(User.class);
//		List<User> user = crit.add(Restrictions.eq("userAccount", "lin")).list();
		String hql = "from User where userAccount = ? ";
		User user = (User) sessionFactory.openSession().createQuery(hql).setParameter(0, "lin");
		System.out.println(user);
	}

}
