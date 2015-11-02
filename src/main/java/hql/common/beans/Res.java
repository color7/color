package hql.common.beans;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.util.HashSet;
import java.util.Set;

/**
 * 资源实体
 */
public class Res implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6240159462215969299L;
	private Integer resId;
	private String resName;
	private String resAlias;
	private Integer resSn;
	private Integer resParentId;
	private String resDefaultAddress;
	private String resPath;

	public Res() {
	}

	public Res(String resName, String resAlias, Integer resSn,
			Integer resParentId, String resDefaultAddress, String resPath) {
		this.resName = resName;
		this.resAlias = resAlias;
		this.resSn = resSn;
		this.resParentId = resParentId;
		this.resDefaultAddress = resDefaultAddress;
		this.resPath = resPath;
	}

	public Integer getResId() {
		return this.resId;
	}

	public void setResId(Integer resId) {
		this.resId = resId;
	}

	public String getResName() {
		return this.resName;
	}

	public void setResName(String resName) {
		this.resName = resName;
	}

	public String getResAlias() {
		return this.resAlias;
	}

	public void setResAlias(String resAlias) {
		this.resAlias = resAlias;
	}

	public Integer getResSn() {
		return this.resSn;
	}

	public void setResSn(Integer resSn) {
		this.resSn = resSn;
	}

	public Integer getResParentId() {
		return this.resParentId;
	}

	public void setResParentId(Integer resParentId) {
		this.resParentId = resParentId;
	}

	public String getResDefaultAddress() {
		return this.resDefaultAddress;
	}

	public void setResDefaultAddress(String resDefaultAddress) {
		this.resDefaultAddress = resDefaultAddress;
	}

	public String getResPath() {
		return this.resPath;
	}

	public void setResPath(String resPath) {
		this.resPath = resPath;
	}

}
