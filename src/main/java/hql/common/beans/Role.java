package hql.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

/**
 * 角色实体
 */
public class Role implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8267297295351723418L;
	private int roleId;
	private String roleName;
	private String roleAlias;
	private String roleNote;
	private Short allowDel;
	private Short allowEdit;
	private Short roleEnabled;

	public Role() {
	}

	public Role(int roleId, String roleName) {
		this.roleId = roleId;
		this.roleName = roleName;
	}

	public Role(int roleId, String roleName, String roleAlias, String roleNote,
			Short allowDel, Short allowEdit, Short roleEnabled) {
		this.roleId = roleId;
		this.roleName = roleName;
		this.roleAlias = roleAlias;
		this.roleNote = roleNote;
		this.allowDel = allowDel;
		this.allowEdit = allowEdit;
		this.roleEnabled = roleEnabled;
	}

	public int getRoleId() {
		return this.roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRoleAlias() {
		return this.roleAlias;
	}

	public void setRoleAlias(String roleAlias) {
		this.roleAlias = roleAlias;
	}

	public String getRoleNote() {
		return this.roleNote;
	}

	public void setRoleNote(String roleNote) {
		this.roleNote = roleNote;
	}

	public Short getAllowDel() {
		return this.allowDel;
	}

	public void setAllowDel(Short allowDel) {
		this.allowDel = allowDel;
	}

	public Short getAllowEdit() {
		return this.allowEdit;
	}

	public void setAllowEdit(Short allowEdit) {
		this.allowEdit = allowEdit;
	}

	public Short getRoleEnabled() {
		return this.roleEnabled;
	}

	public void setRoleEnabled(Short roleEnabled) {
		this.roleEnabled = roleEnabled;
	}

}
