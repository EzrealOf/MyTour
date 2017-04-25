package com.ezreal.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.ezreal.beans.UserBean;

/**
 * @author Ezreal#
 *
 */
/**
 * @author Ezreal#
 *
 */
/**
 * @author Ezreal#
 *
 */
/**
 * @author Ezreal#
 *
 */
public interface UserMapper {
	
	
	/**登陆
	 * @param username
	 * @param password
	 * @return
	 * @throws Exception
	 */
	@Select("select * from t_user where username = #{username} and password = #{password}")
	 @Results({
			@Result(id=true,property="userid",column="userid",javaType=Integer.class),
			@Result(property="username",column="username",javaType=String.class),
			@Result(property="password",column="password",javaType=String.class),
			@Result(property="mailbox",column="mailbox",javaType=String.class),
			@Result(property="telephone",column="telephone",javaType=String.class),
			@Result(property="permission",column="permission",javaType=Integer.class)
		})
	public UserBean login(@Param("username")String username,@Param("password")String password) throws Exception;
	
	/**注册
	 * @param user
	 * @return
	 * @throws Exception
	 */

	public int insertUser(UserBean user) throws Exception;
	
	
	/**
	 * 
	 * @param username
	 * @return
	 * @throws Exception
	 */
	@Select("SELECT COUNT(1) FROM t_user where username =#(username)")
	public int checkUserNameExist(String username) throws Exception;
	
	public int checkUserEmailExist(String mailbox)throws Exception;
	/**修改
	 * @param user
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public int updateUser (@Param("u")UserBean user,@Param("id")int id) throws Exception;
	
	/**删除
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public int deleteUser(int id) throws Exception;
	
	/**查询
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public UserBean selectUserByID(int id) throws Exception;
	
	/**查询
	 * @return
	 * @throws Exception
	 */
	public List<UserBean> selectAllUser() throws Exception;
	
	
	
}
