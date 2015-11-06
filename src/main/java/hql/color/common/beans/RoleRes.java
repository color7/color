package hql.color.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

/**
 * 角色资源实体
 */
public class RoleRes implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5870610384888809358L;
	private Integer roleResId;
	private Role role;
	private Res res;

	public RoleRes() {
	}

	public RoleRes(Role role, Res res) {
		this.role = role;
		this.res = res;
	}

	public Integer getRoleResId() {
		return this.roleResId;
	}

	public void setRoleResId(Integer roleResId) {
		this.roleResId = roleResId;
	}

	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Res getRes() {
		return this.res;
	}

	public void setRes(Res res) {
		this.res = res;
	}

}
