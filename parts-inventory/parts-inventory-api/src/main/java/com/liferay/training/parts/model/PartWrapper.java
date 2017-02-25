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
 * This class is a wrapper for {@link Part}.
 * </p>
 *
 * @author Samir
 * @see Part
 * @generated
 */
@ProviderType
public class PartWrapper implements Part, ModelWrapper<Part> {
	public PartWrapper(Part part) {
		_part = part;
	}

	@Override
	public Class<?> getModelClass() {
		return Part.class;
	}

	@Override
	public String getModelClassName() {
		return Part.class.getName();
	}

	@Override
	public Map<String, Object> getModelAttributes() {
		Map<String, Object> attributes = new HashMap<String, Object>();

		attributes.put("partId", getPartId());
		attributes.put("companyId", getCompanyId());
		attributes.put("groupId", getGroupId());
		attributes.put("userId", getUserId());
		attributes.put("manufacturerId", getManufacturerId());
		attributes.put("name", getName());
		attributes.put("partNumber", getPartNumber());
		attributes.put("orderDate", getOrderDate());
		attributes.put("quantity", getQuantity());
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
		Long partId = (Long)attributes.get("partId");

		if (partId != null) {
			setPartId(partId);
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

		Long manufacturerId = (Long)attributes.get("manufacturerId");

		if (manufacturerId != null) {
			setManufacturerId(manufacturerId);
		}

		String name = (String)attributes.get("name");

		if (name != null) {
			setName(name);
		}

		String partNumber = (String)attributes.get("partNumber");

		if (partNumber != null) {
			setPartNumber(partNumber);
		}

		Date orderDate = (Date)attributes.get("orderDate");

		if (orderDate != null) {
			setOrderDate(orderDate);
		}

		Integer quantity = (Integer)attributes.get("quantity");

		if (quantity != null) {
			setQuantity(quantity);
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
	public Part toEscapedModel() {
		return new PartWrapper(_part.toEscapedModel());
	}

	@Override
	public Part toUnescapedModel() {
		return new PartWrapper(_part.toUnescapedModel());
	}

	/**
	* Returns <code>true</code> if this part is approved.
	*
	* @return <code>true</code> if this part is approved; <code>false</code> otherwise
	*/
	@Override
	public boolean isApproved() {
		return _part.isApproved();
	}

	@Override
	public boolean isCachedModel() {
		return _part.isCachedModel();
	}

	/**
	* Returns <code>true</code> if this part is denied.
	*
	* @return <code>true</code> if this part is denied; <code>false</code> otherwise
	*/
	@Override
	public boolean isDenied() {
		return _part.isDenied();
	}

	/**
	* Returns <code>true</code> if this part is a draft.
	*
	* @return <code>true</code> if this part is a draft; <code>false</code> otherwise
	*/
	@Override
	public boolean isDraft() {
		return _part.isDraft();
	}

	@Override
	public boolean isEscapedModel() {
		return _part.isEscapedModel();
	}

	/**
	* Returns <code>true</code> if this part is expired.
	*
	* @return <code>true</code> if this part is expired; <code>false</code> otherwise
	*/
	@Override
	public boolean isExpired() {
		return _part.isExpired();
	}

	/**
	* Returns <code>true</code> if this part is inactive.
	*
	* @return <code>true</code> if this part is inactive; <code>false</code> otherwise
	*/
	@Override
	public boolean isInactive() {
		return _part.isInactive();
	}

	/**
	* Returns <code>true</code> if this part is incomplete.
	*
	* @return <code>true</code> if this part is incomplete; <code>false</code> otherwise
	*/
	@Override
	public boolean isIncomplete() {
		return _part.isIncomplete();
	}

	@Override
	public boolean isNew() {
		return _part.isNew();
	}

	/**
	* Returns <code>true</code> if this part is pending.
	*
	* @return <code>true</code> if this part is pending; <code>false</code> otherwise
	*/
	@Override
	public boolean isPending() {
		return _part.isPending();
	}

	/**
	* Returns <code>true</code> if this part is scheduled.
	*
	* @return <code>true</code> if this part is scheduled; <code>false</code> otherwise
	*/
	@Override
	public boolean isScheduled() {
		return _part.isScheduled();
	}

	@Override
	public ExpandoBridge getExpandoBridge() {
		return _part.getExpandoBridge();
	}

	@Override
	public com.liferay.portal.kernel.model.CacheModel<Part> toCacheModel() {
		return _part.toCacheModel();
	}

	@Override
	public int compareTo(Part part) {
		return _part.compareTo(part);
	}

	/**
	* Returns the quantity of this part.
	*
	* @return the quantity of this part
	*/
	@Override
	public int getQuantity() {
		return _part.getQuantity();
	}

	/**
	* Returns the status of this part.
	*
	* @return the status of this part
	*/
	@Override
	public int getStatus() {
		return _part.getStatus();
	}

	@Override
	public int hashCode() {
		return _part.hashCode();
	}

	@Override
	public Serializable getPrimaryKeyObj() {
		return _part.getPrimaryKeyObj();
	}

	@Override
	public java.lang.Object clone() {
		return new PartWrapper((Part)_part.clone());
	}

	@Override
	public java.lang.String getDefaultLanguageId() {
		return _part.getDefaultLanguageId();
	}

	/**
	* Returns the name of this part.
	*
	* @return the name of this part
	*/
	@Override
	public java.lang.String getName() {
		return _part.getName();
	}

	/**
	* Returns the localized name of this part in the language. Uses the default language if no localization exists for the requested language.
	*
	* @param languageId the ID of the language
	* @return the localized name of this part
	*/
	@Override
	public java.lang.String getName(java.lang.String languageId) {
		return _part.getName(languageId);
	}

	/**
	* Returns the localized name of this part in the language, optionally using the default language if no localization exists for the requested language.
	*
	* @param languageId the ID of the language
	* @param useDefault whether to use the default language if no localization exists for the requested language
	* @return the localized name of this part
	*/
	@Override
	public java.lang.String getName(java.lang.String languageId,
		boolean useDefault) {
		return _part.getName(languageId, useDefault);
	}

	/**
	* Returns the localized name of this part in the language. Uses the default language if no localization exists for the requested language.
	*
	* @param locale the locale of the language
	* @return the localized name of this part
	*/
	@Override
	public java.lang.String getName(java.util.Locale locale) {
		return _part.getName(locale);
	}

	/**
	* Returns the localized name of this part in the language, optionally using the default language if no localization exists for the requested language.
	*
	* @param locale the local of the language
	* @param useDefault whether to use the default language if no localization exists for the requested language
	* @return the localized name of this part. If <code>useDefault</code> is <code>false</code> and no localization exists for the requested language, an empty string will be returned.
	*/
	@Override
	public java.lang.String getName(java.util.Locale locale, boolean useDefault) {
		return _part.getName(locale, useDefault);
	}

	@Override
	public java.lang.String getNameCurrentLanguageId() {
		return _part.getNameCurrentLanguageId();
	}

	@Override
	public java.lang.String getNameCurrentValue() {
		return _part.getNameCurrentValue();
	}

	/**
	* Returns the part number of this part.
	*
	* @return the part number of this part
	*/
	@Override
	public java.lang.String getPartNumber() {
		return _part.getPartNumber();
	}

	/**
	* Returns the status by user name of this part.
	*
	* @return the status by user name of this part
	*/
	@Override
	public java.lang.String getStatusByUserName() {
		return _part.getStatusByUserName();
	}

	/**
	* Returns the status by user uuid of this part.
	*
	* @return the status by user uuid of this part
	*/
	@Override
	public java.lang.String getStatusByUserUuid() {
		return _part.getStatusByUserUuid();
	}

	/**
	* Returns the user name of this part.
	*
	* @return the user name of this part
	*/
	@Override
	public java.lang.String getUserName() {
		return _part.getUserName();
	}

	/**
	* Returns the user uuid of this part.
	*
	* @return the user uuid of this part
	*/
	@Override
	public java.lang.String getUserUuid() {
		return _part.getUserUuid();
	}

	@Override
	public java.lang.String toString() {
		return _part.toString();
	}

	@Override
	public java.lang.String toXmlString() {
		return _part.toXmlString();
	}

	@Override
	public java.lang.String[] getAvailableLanguageIds() {
		return _part.getAvailableLanguageIds();
	}

	/**
	* Returns the create date of this part.
	*
	* @return the create date of this part
	*/
	@Override
	public Date getCreateDate() {
		return _part.getCreateDate();
	}

	/**
	* Returns the modified date of this part.
	*
	* @return the modified date of this part
	*/
	@Override
	public Date getModifiedDate() {
		return _part.getModifiedDate();
	}

	/**
	* Returns the order date of this part.
	*
	* @return the order date of this part
	*/
	@Override
	public Date getOrderDate() {
		return _part.getOrderDate();
	}

	/**
	* Returns the status date of this part.
	*
	* @return the status date of this part
	*/
	@Override
	public Date getStatusDate() {
		return _part.getStatusDate();
	}

	/**
	* Returns a map of the locales and localized names of this part.
	*
	* @return the locales and localized names of this part
	*/
	@Override
	public Map<java.util.Locale, java.lang.String> getNameMap() {
		return _part.getNameMap();
	}

	/**
	* Returns the company ID of this part.
	*
	* @return the company ID of this part
	*/
	@Override
	public long getCompanyId() {
		return _part.getCompanyId();
	}

	/**
	* Returns the group ID of this part.
	*
	* @return the group ID of this part
	*/
	@Override
	public long getGroupId() {
		return _part.getGroupId();
	}

	/**
	* Returns the manufacturer ID of this part.
	*
	* @return the manufacturer ID of this part
	*/
	@Override
	public long getManufacturerId() {
		return _part.getManufacturerId();
	}

	/**
	* Returns the part ID of this part.
	*
	* @return the part ID of this part
	*/
	@Override
	public long getPartId() {
		return _part.getPartId();
	}

	/**
	* Returns the primary key of this part.
	*
	* @return the primary key of this part
	*/
	@Override
	public long getPrimaryKey() {
		return _part.getPrimaryKey();
	}

	/**
	* Returns the resource block ID of this part.
	*
	* @return the resource block ID of this part
	*/
	@Override
	public long getResourceBlockId() {
		return _part.getResourceBlockId();
	}

	/**
	* Returns the status by user ID of this part.
	*
	* @return the status by user ID of this part
	*/
	@Override
	public long getStatusByUserId() {
		return _part.getStatusByUserId();
	}

	/**
	* Returns the user ID of this part.
	*
	* @return the user ID of this part
	*/
	@Override
	public long getUserId() {
		return _part.getUserId();
	}

	@Override
	public void persist() {
		_part.persist();
	}

	@Override
	public void prepareLocalizedFieldsForImport()
		throws com.liferay.portal.kernel.exception.LocaleException {
		_part.prepareLocalizedFieldsForImport();
	}

	@Override
	public void prepareLocalizedFieldsForImport(
		java.util.Locale defaultImportLocale)
		throws com.liferay.portal.kernel.exception.LocaleException {
		_part.prepareLocalizedFieldsForImport(defaultImportLocale);
	}

	@Override
	public void setCachedModel(boolean cachedModel) {
		_part.setCachedModel(cachedModel);
	}

	/**
	* Sets the company ID of this part.
	*
	* @param companyId the company ID of this part
	*/
	@Override
	public void setCompanyId(long companyId) {
		_part.setCompanyId(companyId);
	}

	/**
	* Sets the create date of this part.
	*
	* @param createDate the create date of this part
	*/
	@Override
	public void setCreateDate(Date createDate) {
		_part.setCreateDate(createDate);
	}

	@Override
	public void setExpandoBridgeAttributes(ExpandoBridge expandoBridge) {
		_part.setExpandoBridgeAttributes(expandoBridge);
	}

	@Override
	public void setExpandoBridgeAttributes(
		com.liferay.portal.kernel.model.BaseModel<?> baseModel) {
		_part.setExpandoBridgeAttributes(baseModel);
	}

	@Override
	public void setExpandoBridgeAttributes(ServiceContext serviceContext) {
		_part.setExpandoBridgeAttributes(serviceContext);
	}

	/**
	* Sets the group ID of this part.
	*
	* @param groupId the group ID of this part
	*/
	@Override
	public void setGroupId(long groupId) {
		_part.setGroupId(groupId);
	}

	/**
	* Sets the manufacturer ID of this part.
	*
	* @param manufacturerId the manufacturer ID of this part
	*/
	@Override
	public void setManufacturerId(long manufacturerId) {
		_part.setManufacturerId(manufacturerId);
	}

	/**
	* Sets the modified date of this part.
	*
	* @param modifiedDate the modified date of this part
	*/
	@Override
	public void setModifiedDate(Date modifiedDate) {
		_part.setModifiedDate(modifiedDate);
	}

	/**
	* Sets the name of this part.
	*
	* @param name the name of this part
	*/
	@Override
	public void setName(java.lang.String name) {
		_part.setName(name);
	}

	/**
	* Sets the localized name of this part in the language.
	*
	* @param name the localized name of this part
	* @param locale the locale of the language
	*/
	@Override
	public void setName(java.lang.String name, java.util.Locale locale) {
		_part.setName(name, locale);
	}

	/**
	* Sets the localized name of this part in the language, and sets the default locale.
	*
	* @param name the localized name of this part
	* @param locale the locale of the language
	* @param defaultLocale the default locale
	*/
	@Override
	public void setName(java.lang.String name, java.util.Locale locale,
		java.util.Locale defaultLocale) {
		_part.setName(name, locale, defaultLocale);
	}

	@Override
	public void setNameCurrentLanguageId(java.lang.String languageId) {
		_part.setNameCurrentLanguageId(languageId);
	}

	/**
	* Sets the localized names of this part from the map of locales and localized names.
	*
	* @param nameMap the locales and localized names of this part
	*/
	@Override
	public void setNameMap(Map<java.util.Locale, java.lang.String> nameMap) {
		_part.setNameMap(nameMap);
	}

	/**
	* Sets the localized names of this part from the map of locales and localized names, and sets the default locale.
	*
	* @param nameMap the locales and localized names of this part
	* @param defaultLocale the default locale
	*/
	@Override
	public void setNameMap(Map<java.util.Locale, java.lang.String> nameMap,
		java.util.Locale defaultLocale) {
		_part.setNameMap(nameMap, defaultLocale);
	}

	@Override
	public void setNew(boolean n) {
		_part.setNew(n);
	}

	/**
	* Sets the order date of this part.
	*
	* @param orderDate the order date of this part
	*/
	@Override
	public void setOrderDate(Date orderDate) {
		_part.setOrderDate(orderDate);
	}

	/**
	* Sets the part ID of this part.
	*
	* @param partId the part ID of this part
	*/
	@Override
	public void setPartId(long partId) {
		_part.setPartId(partId);
	}

	/**
	* Sets the part number of this part.
	*
	* @param partNumber the part number of this part
	*/
	@Override
	public void setPartNumber(java.lang.String partNumber) {
		_part.setPartNumber(partNumber);
	}

	/**
	* Sets the primary key of this part.
	*
	* @param primaryKey the primary key of this part
	*/
	@Override
	public void setPrimaryKey(long primaryKey) {
		_part.setPrimaryKey(primaryKey);
	}

	@Override
	public void setPrimaryKeyObj(Serializable primaryKeyObj) {
		_part.setPrimaryKeyObj(primaryKeyObj);
	}

	/**
	* Sets the quantity of this part.
	*
	* @param quantity the quantity of this part
	*/
	@Override
	public void setQuantity(int quantity) {
		_part.setQuantity(quantity);
	}

	/**
	* Sets the resource block ID of this part.
	*
	* @param resourceBlockId the resource block ID of this part
	*/
	@Override
	public void setResourceBlockId(long resourceBlockId) {
		_part.setResourceBlockId(resourceBlockId);
	}

	/**
	* Sets the status of this part.
	*
	* @param status the status of this part
	*/
	@Override
	public void setStatus(int status) {
		_part.setStatus(status);
	}

	/**
	* Sets the status by user ID of this part.
	*
	* @param statusByUserId the status by user ID of this part
	*/
	@Override
	public void setStatusByUserId(long statusByUserId) {
		_part.setStatusByUserId(statusByUserId);
	}

	/**
	* Sets the status by user name of this part.
	*
	* @param statusByUserName the status by user name of this part
	*/
	@Override
	public void setStatusByUserName(java.lang.String statusByUserName) {
		_part.setStatusByUserName(statusByUserName);
	}

	/**
	* Sets the status by user uuid of this part.
	*
	* @param statusByUserUuid the status by user uuid of this part
	*/
	@Override
	public void setStatusByUserUuid(java.lang.String statusByUserUuid) {
		_part.setStatusByUserUuid(statusByUserUuid);
	}

	/**
	* Sets the status date of this part.
	*
	* @param statusDate the status date of this part
	*/
	@Override
	public void setStatusDate(Date statusDate) {
		_part.setStatusDate(statusDate);
	}

	/**
	* Sets the user ID of this part.
	*
	* @param userId the user ID of this part
	*/
	@Override
	public void setUserId(long userId) {
		_part.setUserId(userId);
	}

	/**
	* Sets the user name of this part.
	*
	* @param userName the user name of this part
	*/
	@Override
	public void setUserName(java.lang.String userName) {
		_part.setUserName(userName);
	}

	/**
	* Sets the user uuid of this part.
	*
	* @param userUuid the user uuid of this part
	*/
	@Override
	public void setUserUuid(java.lang.String userUuid) {
		_part.setUserUuid(userUuid);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}

		if (!(obj instanceof PartWrapper)) {
			return false;
		}

		PartWrapper partWrapper = (PartWrapper)obj;

		if (Objects.equals(_part, partWrapper._part)) {
			return true;
		}

		return false;
	}

	@Override
	public Part getWrappedModel() {
		return _part;
	}

	@Override
	public boolean isEntityCacheEnabled() {
		return _part.isEntityCacheEnabled();
	}

	@Override
	public boolean isFinderCacheEnabled() {
		return _part.isFinderCacheEnabled();
	}

	@Override
	public void resetOriginalValues() {
		_part.resetOriginalValues();
	}

	private final Part _part;
}