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

package com.liferay.training.parts.service;

import aQute.bnd.annotation.ProviderType;

import com.liferay.portal.kernel.service.ServiceWrapper;

/**
 * Provides a wrapper for {@link ManufacturerLocalService}.
 *
 * @author Samir
 * @see ManufacturerLocalService
 * @generated
 */
@ProviderType
public class ManufacturerLocalServiceWrapper implements ManufacturerLocalService,
	ServiceWrapper<ManufacturerLocalService> {
	public ManufacturerLocalServiceWrapper(
		ManufacturerLocalService manufacturerLocalService) {
		_manufacturerLocalService = manufacturerLocalService;
	}

	@Override
	public com.liferay.portal.kernel.dao.orm.ActionableDynamicQuery getActionableDynamicQuery() {
		return _manufacturerLocalService.getActionableDynamicQuery();
	}

	@Override
	public com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery() {
		return _manufacturerLocalService.dynamicQuery();
	}

	@Override
	public com.liferay.portal.kernel.dao.orm.IndexableActionableDynamicQuery getIndexableActionableDynamicQuery() {
		return _manufacturerLocalService.getIndexableActionableDynamicQuery();
	}

	/**
	* @throws PortalException
	*/
	@Override
	public com.liferay.portal.kernel.model.PersistedModel deletePersistedModel(
		com.liferay.portal.kernel.model.PersistedModel persistedModel)
		throws com.liferay.portal.kernel.exception.PortalException {
		return _manufacturerLocalService.deletePersistedModel(persistedModel);
	}

	@Override
	public com.liferay.portal.kernel.model.PersistedModel getPersistedModel(
		java.io.Serializable primaryKeyObj)
		throws com.liferay.portal.kernel.exception.PortalException {
		return _manufacturerLocalService.getPersistedModel(primaryKeyObj);
	}

	/**
	* Adds the manufacturer to the database. Also notifies the appropriate model listeners.
	*
	* @param manufacturer the manufacturer
	* @return the manufacturer that was added
	*/
	@Override
	public com.liferay.training.parts.model.Manufacturer addManufacturer(
		com.liferay.training.parts.model.Manufacturer manufacturer) {
		return _manufacturerLocalService.addManufacturer(manufacturer);
	}

	/**
	* Creates a new manufacturer with the primary key. Does not add the manufacturer to the database.
	*
	* @param manufacturerId the primary key for the new manufacturer
	* @return the new manufacturer
	*/
	@Override
	public com.liferay.training.parts.model.Manufacturer createManufacturer(
		long manufacturerId) {
		return _manufacturerLocalService.createManufacturer(manufacturerId);
	}

	/**
	* Deletes the manufacturer from the database. Also notifies the appropriate model listeners.
	*
	* @param manufacturer the manufacturer
	* @return the manufacturer that was removed
	*/
	@Override
	public com.liferay.training.parts.model.Manufacturer deleteManufacturer(
		com.liferay.training.parts.model.Manufacturer manufacturer) {
		return _manufacturerLocalService.deleteManufacturer(manufacturer);
	}

	/**
	* Deletes the manufacturer with the primary key from the database. Also notifies the appropriate model listeners.
	*
	* @param manufacturerId the primary key of the manufacturer
	* @return the manufacturer that was removed
	* @throws PortalException if a manufacturer with the primary key could not be found
	*/
	@Override
	public com.liferay.training.parts.model.Manufacturer deleteManufacturer(
		long manufacturerId)
		throws com.liferay.portal.kernel.exception.PortalException {
		return _manufacturerLocalService.deleteManufacturer(manufacturerId);
	}

	@Override
	public com.liferay.training.parts.model.Manufacturer fetchManufacturer(
		long manufacturerId) {
		return _manufacturerLocalService.fetchManufacturer(manufacturerId);
	}

	/**
	* Returns the manufacturer with the primary key.
	*
	* @param manufacturerId the primary key of the manufacturer
	* @return the manufacturer
	* @throws PortalException if a manufacturer with the primary key could not be found
	*/
	@Override
	public com.liferay.training.parts.model.Manufacturer getManufacturer(
		long manufacturerId)
		throws com.liferay.portal.kernel.exception.PortalException {
		return _manufacturerLocalService.getManufacturer(manufacturerId);
	}

	/**
	* Updates the manufacturer in the database or adds it if it does not yet exist. Also notifies the appropriate model listeners.
	*
	* @param manufacturer the manufacturer
	* @return the manufacturer that was updated
	*/
	@Override
	public com.liferay.training.parts.model.Manufacturer updateManufacturer(
		com.liferay.training.parts.model.Manufacturer manufacturer) {
		return _manufacturerLocalService.updateManufacturer(manufacturer);
	}

	/**
	* Returns the number of manufacturers.
	*
	* @return the number of manufacturers
	*/
	@Override
	public int getManufacturersCount() {
		return _manufacturerLocalService.getManufacturersCount();
	}

	/**
	* Returns the OSGi service identifier.
	*
	* @return the OSGi service identifier
	*/
	@Override
	public java.lang.String getOSGiServiceIdentifier() {
		return _manufacturerLocalService.getOSGiServiceIdentifier();
	}

	/**
	* Performs a dynamic query on the database and returns the matching rows.
	*
	* @param dynamicQuery the dynamic query
	* @return the matching rows
	*/
	@Override
	public <T> java.util.List<T> dynamicQuery(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery) {
		return _manufacturerLocalService.dynamicQuery(dynamicQuery);
	}

	/**
	* Performs a dynamic query on the database and returns a range of the matching rows.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.training.parts.model.impl.ManufacturerModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param dynamicQuery the dynamic query
	* @param start the lower bound of the range of model instances
	* @param end the upper bound of the range of model instances (not inclusive)
	* @return the range of matching rows
	*/
	@Override
	public <T> java.util.List<T> dynamicQuery(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery, int start,
		int end) {
		return _manufacturerLocalService.dynamicQuery(dynamicQuery, start, end);
	}

	/**
	* Performs a dynamic query on the database and returns an ordered range of the matching rows.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.training.parts.model.impl.ManufacturerModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param dynamicQuery the dynamic query
	* @param start the lower bound of the range of model instances
	* @param end the upper bound of the range of model instances (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @return the ordered range of matching rows
	*/
	@Override
	public <T> java.util.List<T> dynamicQuery(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery, int start,
		int end,
		com.liferay.portal.kernel.util.OrderByComparator<T> orderByComparator) {
		return _manufacturerLocalService.dynamicQuery(dynamicQuery, start, end,
			orderByComparator);
	}

	/**
	* Returns a range of all the manufacturers.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.training.parts.model.impl.ManufacturerModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param start the lower bound of the range of manufacturers
	* @param end the upper bound of the range of manufacturers (not inclusive)
	* @return the range of manufacturers
	*/
	@Override
	public java.util.List<com.liferay.training.parts.model.Manufacturer> getManufacturers(
		int start, int end) {
		return _manufacturerLocalService.getManufacturers(start, end);
	}

	/**
	* Returns the number of rows matching the dynamic query.
	*
	* @param dynamicQuery the dynamic query
	* @return the number of rows matching the dynamic query
	*/
	@Override
	public long dynamicQueryCount(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery) {
		return _manufacturerLocalService.dynamicQueryCount(dynamicQuery);
	}

	/**
	* Returns the number of rows matching the dynamic query.
	*
	* @param dynamicQuery the dynamic query
	* @param projection the projection to apply to the query
	* @return the number of rows matching the dynamic query
	*/
	@Override
	public long dynamicQueryCount(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery,
		com.liferay.portal.kernel.dao.orm.Projection projection) {
		return _manufacturerLocalService.dynamicQueryCount(dynamicQuery,
			projection);
	}

	@Override
	public ManufacturerLocalService getWrappedService() {
		return _manufacturerLocalService;
	}

	@Override
	public void setWrappedService(
		ManufacturerLocalService manufacturerLocalService) {
		_manufacturerLocalService = manufacturerLocalService;
	}

	private ManufacturerLocalService _manufacturerLocalService;
}