/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

package com.liferay.training.parts.model;

import aQute.bnd.annotation.ProviderType;

import com.liferay.expando.kernel.model.ExpandoBridge;

import com.liferay.portal.kernel.model.ModelWrapper;
import com.liferay.portal.kernel.service.ServiceContext;

import java.io.Serializable;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/**
 * <p>
 * This class is a wrapper for {@link Manufacturer}.
 * </p>
 *
 * @author Samir
 * @see Manufacturer
 * @generated
 */
@ProviderType
public class ManufacturerWrapper implements Manufacturer,
	ModelWrapper<Manufacturer> {
	public ManufacturerWrapper(Manufacturer manufacturer) {
		_manufacturer = manufacturer;
	}

	@Override
	public Class<?> getModelClass() {
		return Manufacturer.class;
	}

	@Override
	public String getModelClassName() {
		return Manufacturer.class.getName();
	}

	@Override
	public Map<String, Object> getModelAttributes() {
		Map<String, Object> attributes = new HashMap<String, Object>();

		attributes.put("manufacturerId", getManufacturerId());
		attributes.put("companyId", getCompanyId());
		attributes.put("groupId", getGroupId());
		attributes.put("userId", getUserId());
		attributes.put("name", getName());
		attributes.put("emailAddress", getEmailAddress());
		attributes.put("website", getWebsite());
		attributes.put("phoneNumber", getPhoneNumber());
		attributes.put("createDate", getCreateDate());
		attributes.put("modifiedDate", getModifiedDate());
		attributes.put("userName", getUserName());
		attributes.put("resourceBlockId", getResourceBlockId());
		attributes.put("status", getStatus());
		attributes.put("statusByUserId", getStatusByUserId());
		attributes.put("statusByUserName", getStatusByUserName());
		attributes.put("statusDate", getStatusDate());

		return attributes;
	}

	@Override
	public void setModelAttributes(Map<String, Object> attributes) {
		Long manufacturerId = (Long)attributes.get("manufacturerId");

		if (manufacturerId != null) {
			setManufacturerId(manufacturerId);
		}

		Long companyId = (Long)attributes.get("companyId");

		if (companyId != null) {
			setCompanyId(companyId);
		}

		Long groupId = (Long)attributes.get("groupId");

		if (groupId != null) {
			setGroupId(groupId);
		}

		Long userId = (Long)attributes.get("userId");

		if (userId != null) {
			setUserId(userId);
		}

		String name = (String)attributes.get("name");

		if (name != null) {
			setName(name);
		}

		String emailAddress = (String)attributes.get("emailAddress");

		if (emailAddress != null) {
			setEmailAddress(emailAddress);
		}

		String website = (String)attributes.get("website");

		if (website != null) {
			setWebsite(website);
		}

		String phoneNumber = (String)attributes.get("phoneNumber");

		if (phoneNumber != null) {
			setPhoneNumber(phoneNumber);
		}

		Date createDate = (Date)attributes.get("createDate");

		if (createDate != null) {
			setCreateDate(createDate);
		}

		Date modifiedDate = (Date)attributes.get("modifiedDate");

		if (modifiedDate != null) {
			setModifiedDate(modifiedDate);
		}

		String userName = (String)attributes.get("userName");

		if (userName != null) {
			setUserName(userName);
		}

		Long resourceBlockId = (Long)attributes.get("resourceBlockId");

		if (resourceBlockId != null) {
			setResourceBlockId(resourceBlockId);
		}

		Integer status = (Integer)attributes.get("status");

		if (status != null) {
			setStatus(status);
		}

		Long statusByUserId = (Long)attributes.get("statusByUserId");

		if (statusByUserId != null) {
			setStatusByUserId(statusByUserId);
		}

		String statusByUserName = (String)attributes.get("statusByUserName");

		if (statusByUserName != null) {
			setStatusByUserName(statusByUserName);
		}

		Date statusDate = (Date)attributes.get("statusDate");

		if (statusDate != null) {
			setStatusDate(statusDate);
		}
	}

	@Override
	public Manufacturer toEscapedModel() {
		return new ManufacturerWrapper(_manufacturer.toEscapedModel());
	}

	@Override
	public Manufacturer toUnescapedModel() {
		return new ManufacturerWrapper(_manufacturer.toUnescapedModel());
	}

	/**
	* Returns <code>true</code> if this manufacturer is approved.
	*
	* @return <code>true</code> if this manufacturer is approved; <code>false</code> otherwise
	*/
	@Override
	public boolean isApproved() {
		return _manufacturer.isApproved();
	}

	@Override
	public boolean isCachedModel() {
		return _manufacturer.isCachedModel();
	}

	/**
	* Returns <code>true</code> if this manufacturer is denied.
	*
	* @return <code>true</code> if this manufacturer is denied; <code>false</code> otherwise
	*/
	@Override
	public boolean isDenied() {
		return _manufacturer.isDenied();
	}

	/**
	* Returns <code>true</code> if this manufacturer is a draft.
	*
	* @return <code>true</code> if this manufacturer is a draft; <code>false</code> otherwise
	*/
	@Override
	public boolean isDraft() {
		return _manufacturer.isDraft();
	}

	@Override
	public boolean isEscapedModel() {
		return _manufacturer.isEscapedModel();
	}

	/**
	* Returns <code>true</code> if this manufacturer is expired.
	*
	* @return <code>true</code> if this manufacturer is expired; <code>false</code> otherwise
	*/
	@Override
	public boolean isExpired() {
		return _manufacturer.isExpired();
	}

	/**
	* Returns <code>true</code> if this manufacturer is inactive.
	*
	* @return <code>true</code> if this manufacturer is inactive; <code>false</code> otherwise
	*/
	@Override
	public boolean isInactive() {
		return _manufacturer.isInactive();
	}

	/**
	* Returns <code>true</code> if this manufacturer is incomplete.
	*
	* @return <code>true</code> if this manufacturer is incomplete; <code>false</code> otherwise
	*/
	@Override
	public boolean isIncomplete() {
		return _manufacturer.isIncomplete();
	}

	@Override
	public boolean isNew() {
		return _manufacturer.isNew();
	}

	/**
	* Returns <code>true</code> if this manufacturer is pending.
	*
	* @return <code>true</code> if this manufacturer is pending; <code>false</code> otherwise
	*/
	@Override
	public boolean isPending() {
		return _manufacturer.isPending();
	}

	/**
	* Returns <code>true</code> if this manufacturer is scheduled.
	*
	* @return <code>true</code> if this manufacturer is scheduled; <code>false</code> otherwise
	*/
	@Override
	public boolean isScheduled() {
		return _manufacturer.isScheduled();
	}

	@Override
	public ExpandoBridge getExpandoBridge() {
		return _manufacturer.getExpandoBridge();
	}

	@Override
	public com.liferay.portal.kernel.model.CacheModel<Manufacturer> toCacheModel() {
		return _manufacturer.toCacheModel();
	}

	@Override
	public int compareTo(Manufacturer manufacturer) {
		return _manufacturer.compareTo(manufacturer);
	}

	/**
	* Returns the status of this manufacturer.
	*
	* @return the status of this manufacturer
	*/
	@Override
	public int getStatus() {
		return _manufacturer.getStatus();
	}

	@Override
	public int hashCode() {
		return _manufacturer.hashCode();
	}

	@Override
	public Serializable getPrimaryKeyObj() {
		return _manufacturer.getPrimaryKeyObj();
	}

	@Override
	public java.lang.Object clone() {
		return new ManufacturerWrapper((Manufacturer)_manufacturer.clone());
	}

	/**
	* Returns the email address of this manufacturer.
	*
	* @return the email address of this manufacturer
	*/
	@Override
	public java.lang.String getEmailAddress() {
		return _manufacturer.getEmailAddress();
	}

	/**
	* Returns the name of this manufacturer.
	*
	* @return the name of this manufacturer
	*/
	@Override
	public java.lang.String getName() {
		return _manufacturer.getName();
	}

	/**
	* Returns the phone number of this manufacturer.
	*
	* @return the phone number of this manufacturer
	*/
	@Override
	public java.lang.String getPhoneNumber() {
		return _manufacturer.getPhoneNumber();
	}

	/**
	* Returns the status by user name of this manufacturer.
	*
	* @return the status by user name of this manufacturer
	*/
	@Override
	public java.lang.String getStatusByUserName() {
		return _manufacturer.getStatusByUserName();
	}

	/**
	* Returns the status by user uuid of this manufacturer.
	*
	* @return the status by user uuid of this manufacturer
	*/
	@Override
	public java.lang.String getStatusByUserUuid() {
		return _manufacturer.getStatusByUserUuid();
	}

	/**
	* Returns the user name of this manufacturer.
	*
	* @return the user name of this manufacturer
	*/
	@Override
	public java.lang.String getUserName() {
		return _manufacturer.getUserName();
	}

	/**
	* Returns the user uuid of this manufacturer.
	*
	* @return the user uuid of this manufacturer
	*/
	@Override
	public java.lang.String getUserUuid() {
		return _manufacturer.getUserUuid();
	}

	/**
	* Returns the website of this manufacturer.
	*
	* @return the website of this manufacturer
	*/
	@Override
	public java.lang.String getWebsite() {
		return _manufacturer.getWebsite();
	}

	@Override
	public java.lang.String toString() {
		return _manufacturer.toString();
	}

	@Override
	public java.lang.String toXmlString() {
		return _manufacturer.toXmlString();
	}

	/**
	* Returns the create date of this manufacturer.
	*
	* @return the create date of this manufacturer
	*/
	@Override
	public Date getCreateDate() {
		return _manufacturer.getCreateDate();
	}

	/**
	* Returns the modified date of this manufacturer.
	*
	* @return the modified date of this manufacturer
	*/
	@Override
	public Date getModifiedDate() {
		return _manufacturer.getModifiedDate();
	}

	/**
	* Returns the status date of this manufacturer.
	*
	* @return the status date of this manufacturer
	*/
	@Override
	public Date getStatusDate() {
		return _manufacturer.getStatusDate();
	}

	/**
	* Returns the company ID of this manufacturer.
	*
	* @return the company ID of this manufacturer
	*/
	@Override
	public long getCompanyId() {
		return _manufacturer.getCompanyId();
	}

	/**
	* Returns the group ID of this manufacturer.
	*
	* @return the group ID of this manufacturer
	*/
	@Override
	public long getGroupId() {
		return _manufacturer.getGroupId();
	}

	/**
	* Returns the manufacturer ID of this manufacturer.
	*
	* @return the manufacturer ID of this manufacturer
	*/
	@Override
	public long getManufacturerId() {
		return _manufacturer.getManufacturerId();
	}

	/**
	* Returns the primary key of this manufacturer.
	*
	* @return the primary key of this manufacturer
	*/
	@Override
	public long getPrimaryKey() {
		return _manufacturer.getPrimaryKey();
	}

	/**
	* Returns the resource block ID of this manufacturer.
	*
	* @return the resource block ID of this manufacturer
	*/
	@Override
	public long getResourceBlockId() {
		return _manufacturer.getResourceBlockId();
	}

	/**
	* Returns the status by user ID of this manufacturer.
	*
	* @return the status by user ID of this manufacturer
	*/
	@Override
	public long getStatusByUserId() {
		return _manufacturer.getStatusByUserId();
	}

	/**
	* Returns the user ID of this manufacturer.
	*
	* @return the user ID of this manufacturer
	*/
	@Override
	public long getUserId() {
		return _manufacturer.getUserId();
	}

	@Override
	public void persist() {
		_manufacturer.persist();
	}

	@Override
	public void setCachedModel(boolean cachedModel) {
		_manufacturer.setCachedModel(cachedModel);
	}

	/**
	* Sets the company ID of this manufacturer.
	*
	* @param companyId the company ID of this manufacturer
	*/
	@Override
	public void setCompanyId(long companyId) {
		_manufacturer.setCompanyId(companyId);
	}

	/**
	* Sets the create date of this manufacturer.
	*
	* @param createDate the create date of this manufacturer
	*/
	@Override
	public void setCreateDate(Date createDate) {
		_manufacturer.setCreateDate(createDate);
	}

	/**
	* Sets the email address of this manufacturer.
	*
	* @param emailAddress the email address of this manufacturer
	*/
	@Override
	public void setEmailAddress(java.lang.String emailAddress) {
		_manufacturer.setEmailAddress(emailAddress);
	}

	@Override
	public void setExpandoBridgeAttributes(ExpandoBridge expandoBridge) {
		_manufacturer.setExpandoBridgeAttributes(expandoBridge);
	}

	@Override
	public void setExpandoBridgeAttributes(
		com.liferay.portal.kernel.model.BaseModel<?> baseModel) {
		_manufacturer.setExpandoBridgeAttributes(baseModel);
	}

	@Override
	public void setExpandoBridgeAttributes(ServiceContext serviceContext) {
		_manufacturer.setExpandoBridgeAttributes(serviceContext);
	}

	/**
	* Sets the group ID of this manufacturer.
	*
	* @param groupId the group ID of this manufacturer
	*/
	@Override
	public void setGroupId(long groupId) {
		_manufacturer.setGroupId(groupId);
	}

	/**
	* Sets the manufacturer ID of this manufacturer.
	*
	* @param manufacturerId the manufacturer ID of this manufacturer
	*/
	@Override
	public void setManufacturerId(long manufacturerId) {
		_manufacturer.setManufacturerId(manufacturerId);
	}

	/**
	* Sets the modified date of this manufacturer.
	*
	* @param modifiedDate the modified date of this manufacturer
	*/
	@Override
	public void setModifiedDate(Date modifiedDate) {
		_manufacturer.setModifiedDate(modifiedDate);
	}

	/**
	* Sets the name of this manufacturer.
	*
	* @param name the name of this manufacturer
	*/
	@Override
	public void setName(java.lang.String name) {
		_manufacturer.setName(name);
	}

	@Override
	public void setNew(boolean n) {
		_manufacturer.setNew(n);
	}

	/**
	* Sets the phone number of this manufacturer.
	*
	* @param phoneNumber the phone number of this manufacturer
	*/
	@Override
	public void setPhoneNumber(java.lang.String phoneNumber) {
		_manufacturer.setPhoneNumber(phoneNumber);
	}

	/**
	* Sets the primary key of this manufacturer.
	*
	* @param primaryKey the primary key of this manufacturer
	*/
	@Override
	public void setPrimaryKey(long primaryKey) {
		_manufacturer.setPrimaryKey(primaryKey);
	}

	@Override
	public void setPrimaryKeyObj(Serializable primaryKeyObj) {
		_manufacturer.setPrimaryKeyObj(primaryKeyObj);
	}

	/**
	* Sets the resource block ID of this manufacturer.
	*
	* @param resourceBlockId the resource block ID of this manufacturer
	*/
	@Override
	public void setResourceBlockId(long resourceBlockId) {
		_manufacturer.setResourceBlockId(resourceBlockId);
	}

	/**
	* Sets the status of this manufacturer.
	*
	* @param status the status of this manufacturer
	*/
	@Override
	public void setStatus(int status) {
		_manufacturer.setStatus(status);
	}

	/**
	* Sets the status by user ID of this manufacturer.
	*
	* @param statusByUserId the status by user ID of this manufacturer
	*/
	@Override
	public void setStatusByUserId(long statusByUserId) {
		_manufacturer.setStatusByUserId(statusByUserId);
	}

	/**
	* Sets the status by user name of this manufacturer.
	*
	* @param statusByUserName the status by user name of this manufacturer
	*/
	@Override
	public void setStatusByUserName(java.lang.String statusByUserName) {
		_manufacturer.setStatusByUserName(statusByUserName);
	}

	/**
	* Sets the status by user uuid of this manufacturer.
	*
	* @param statusByUserUuid the status by user uuid of this manufacturer
	*/
	@Override
	public void setStatusByUserUuid(java.lang.String statusByUserUuid) {
		_manufacturer.setStatusByUserUuid(statusByUserUuid);
	}

	/**
	* Sets the status date of this manufacturer.
	*
	* @param statusDate the status date of this manufacturer
	*/
	@Override
	public void setStatusDate(Date statusDate) {
		_manufacturer.setStatusDate(statusDate);
	}

	/**
	* Sets the user ID of this manufacturer.
	*
	* @param userId the user ID of this manufacturer
	*/
	@Override
	public void setUserId(long userId) {
		_manufacturer.setUserId(userId);
	}

	/**
	* Sets the user name of this manufacturer.
	*
	* @param userName the user name of this manufacturer
	*/
	@Override
	public void setUserName(java.lang.String userName) {
		_manufacturer.setUserName(userName);
	}

	/**
	* Sets the user uuid of this manufacturer.
	*
	* @param userUuid the user uuid of this manufacturer
	*/
	@Override
	public void setUserUuid(java.lang.String userUuid) {
		_manufacturer.setUserUuid(userUuid);
	}

	/**
	* Sets the website of this manufacturer.
	*
	* @param website the website of this manufacturer
	*/
	@Override
	public void setWebsite(java.lang.String website) {
		_manufacturer.setWebsite(website);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}

		if (!(obj instanceof ManufacturerWrapper)) {
			return false;
		}

		ManufacturerWrapper manufacturerWrapper = (ManufacturerWrapper)obj;

		if (Objects.equals(_manufacturer, manufacturerWrapper._manufacturer)) {
			return true;
		}

		return false;
	}

	@Override
	public Manufacturer getWrappedModel() {
		return _manufacturer;
	}

	@Override
	public boolean isEntityCacheEnabled() {
		return _manufacturer.isEntityCacheEnabled();
	}

	@Override
	public boolean isFinderCacheEnabled() {
		return _manufacturer.isFinderCacheEnabled();
	}

	@Override
	public void resetOriginalValues() {
		_manufacturer.resetOriginalValues();
	}

	private final Manufacturer _manufacturer;
}