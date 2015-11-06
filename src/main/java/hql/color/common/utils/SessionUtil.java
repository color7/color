/**  
 * @Package： hql.common.utils
 * @FileName: SessionUtil.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: 林润树
 * @Date: 2015年11月5日
 */
package hql.color.common.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @ClassName: SessionUtil
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
public class SessionUtil {
	
	@Autowired
	private static SessionFactory sessionFactory;
	
	/**
	 * @Title: getCurrentSession
	 * @Description: (获取当前事物)
	 * @return
	 * @Author: 林润树
	 */
	public static Session getCurrentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public static Session openSession(){
		return sessionFactory.openSession();
	}

}
