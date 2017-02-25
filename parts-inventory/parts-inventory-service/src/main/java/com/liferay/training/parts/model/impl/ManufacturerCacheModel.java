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

package com.liferay.training.parts.model.impl;

import aQute.bnd.annotation.ProviderType;

import com.liferay.portal.kernel.model.CacheModel;
import com.liferay.portal.kernel.util.HashUtil;
import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringPool;

import com.liferay.training.parts.model.Manufacturer;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

import java.util.Date;

/**
 * The cache model class for representing Manufacturer in entity cache.
 *
 * @author Samir
 * @see Manufacturer
 * @generated
 */
@ProviderType
public class ManufacturerCacheModel implements CacheModel<Manufacturer>,
	Externalizable {
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}

		if (!(obj instanceof ManufacturerCacheModel)) {
			return false;
		}

		ManufacturerCacheModel manufacturerCacheModel = (ManufacturerCacheModel)obj;

		if (manufacturerId == manufacturerCacheModel.manufacturerId) {
			return true;
		}

		return false;
	}

	@Override
	public int hashCode() {
		return HashUtil.hash(0, manufacturerId);
	}

	@Override
	public String toString() {
		StringBundler sb = new StringBundler(33);

		sb.append("{manufacturerId=");
		sb.append(manufacturerId);
		sb.append(", companyId=");
		sb.append(companyId);
		sb.append(", groupId=");
		sb.append(groupId);
		sb.append(", userId=");
		sb.append(userId);
		sb.append(", name=");
		sb.append(name);
		sb.append(", emailAddress=");
		sb.append(emailAddress);
		sb.append(", website=");
		sb.append(website);
		sb.append(", phoneNumber=");
		sb.append(phoneNumber);
		sb.append(", createDate=");
		sb.append(createDate);
		sb.append(", modifiedDate=");
		sb.append(modifiedDate);
		sb.append(", userName=");
		sb.append(userName);
		sb.append(", resourceBlockId=");
		sb.append(resourceBlockId);
		sb.append(", status=");
		sb.append(status);
		sb.append(", statusByUserId=");
		sb.append(statusByUserId);
		sb.append(", statusByUserName=");
		sb.append(statusByUserName);
		sb.append(", statusDate=");
		sb.append(statusDate);
		sb.append("}");

		return sb.toString();
	}

	@Override
	public Manufacturer toEntityModel() {
		ManufacturerImpl manufacturerImpl = new ManufacturerImpl();

		manufacturerImpl.setManufacturerId(manufacturerId);
		manufacturerImpl.setCompanyId(companyId);
		manufacturerImpl.setGroupId(groupId);
		manufacturerImpl.setUserId(userId);

		if (name == null) {
			manufacturerImpl.setName(StringPool.BLANK);
		}
		else {
			manufacturerImpl.setName(name);
		}

		if (emailAddress == null) {
			manufacturerImpl.setEmailAddress(StringPool.BLANK);
		}
		else {
			manufacturerImpl.setEmailAddress(emailAddress);
		}

		if (website == null) {
			manufacturerImpl.setWebsite(StringPool.BLANK);
		}
		else {
			manufacturerImpl.setWebsite(website);
		}

		if (phoneNumber == null) {
			manufacturerImpl.setPhoneNumber(StringPool.BLANK);
		}
		else {
			manufacturerImpl.setPhoneNumber(phoneNumber);
		}

		if (createDate == Long.MIN_VALUE) {
			manufacturerImpl.setCreateDate(null);
		}
		else {
			manufacturerImpl.setCreateDate(new Date(createDate));
		}

		if (modifiedDate == Long.MIN_VALUE) {
			manufacturerImpl.setModifiedDate(null);
		}
		else {
			manufacturerImpl.setModifiedDate(new Date(modifiedDate));
		}

		if (userName == null) {
			manufacturerImpl.setUserName(StringPool.BLANK);
		}
		else {
			manufacturerImpl.setUserName(userName);
		}

		manufacturerImpl.setResourceBlockId(resourceBlockId);
		manufacturerImpl.setStatus(status);
		manufacturerImpl.setStatusByUserId(statusByUserId);

		if (statusByUserName == null) {
			manufacturerImpl.setStatusByUserName(StringPool.BLANK);
		}
		else {
			manufacturerImpl.setStatusByUserName(statusByUserName);
		}

		if (statusDate == Long.MIN_VALUE) {
			manufacturerImpl.setStatusDate(null);
		}
		else {
			manufacturerImpl.setStatusDate(new Date(statusDate));
		}

		manufacturerImpl.resetOriginalValues();

		return manufacturerImpl;
	}

	@Override
	public void readExternal(ObjectInput objectInput) throws IOException {
		manufacturerId = objectInput.readLong();

		companyId = objectInput.readLong();

		groupId = objectInput.readLong();

		userId = objectInput.readLong();
		name = objectInput.readUTF();
		emailAddress = objectInput.readUTF();
		website = objectInput.readUTF();
		phoneNumber = objectInput.readUTF();
		createDate = objectInput.readLong();
		modifiedDate = objectInput.readLong();
		userName = objectInput.readUTF();

		resourceBlockId = objectInput.readLong();

		status = objectInput.readInt();

		statusByUserId = objectInput.readLong();
		statusByUserName = objectInput.readUTF();
		statusDate = objectInput.readLong();
	}

	@Override
	public void writeExternal(ObjectOutput objectOutput)
		throws IOException {
		objectOutput.writeLong(manufacturerId);

		objectOutput.writeLong(companyId);

		objectOutput.writeLong(groupId);

		objectOutput.writeLong(userId);

		if (name == null) {
			objectOutput.writeUTF(StringPool.BLANK);
		}
		else {
			objectOutput.writeUTF(name);
		}

		if (emailAddress == null) {
			objectOutput.writeUTF(StringPool.BLANK);
		}
		else {
			objectOutput.writeUTF(emailAddress);
		}

		if (website == null) {
			objectOutput.writeUTF(StringPool.BLANK);
		}
		else {
			objectOutput.writeUTF(website);
		}

		if (phoneNumber == null) {
			objectOutput.writeUTF(StringPool.BLANK);
		}
		else {
			objectOutput.writeUTF(phoneNumber);
		}

		objectOutput.writeLong(createDate);
		objectOutput.writeLong(modifiedDate);

		if (userName == null) {
			objectOutput.writeUTF(StringPool.BLANK);
		}
		else {
			objectOutput.writeUTF(userName);
		}

		objectOutput.writeLong(resourceBlockId);

		objectOutput.writeInt(status);

		objectOutput.writeLong(statusByUserId);

		if (statusByUserName == null) {
			objectOutput.writeUTF(StringPool.BLANK);
		}
		else {
			objectOutput.writeUTF(statusByUserName);
		}

		objectOutput.writeLong(statusDate);
	}

	public long manufacturerId;
	public long companyId;
	public long groupId;
	public long userId;
	public String name;
	public String emailAddress;
	public String website;
	public String phoneNumber;
	public long createDate;
	public long modifiedDate;
	public String userName;
	public long resourceBlockId;
	public int status;
	public long statusByUserId;
	public String statusByUserName;
	public long statusDate;
}