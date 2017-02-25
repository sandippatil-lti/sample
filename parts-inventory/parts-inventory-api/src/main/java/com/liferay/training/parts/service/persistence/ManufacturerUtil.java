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

package com.liferay.training.parts.service.persistence;

import aQute.bnd.annotation.ProviderType;

import com.liferay.osgi.util.ServiceTrackerFactory;

import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.service.ServiceContext;
import com.liferay.portal.kernel.util.OrderByComparator;

import com.liferay.training.parts.model.Manufacturer;

import org.osgi.util.tracker.ServiceTracker;

import java.util.List;

/**
 * The persistence utility for the manufacturer service. This utility wraps {@link com.liferay.training.parts.service.persistence.impl.ManufacturerPersistenceImpl} and provides direct access to the database for CRUD operations. This utility should only be used by the service layer, as it must operate within a transaction. Never access this utility in a JSP, controller, model, or other front-end class.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Samir
 * @see ManufacturerPersistence
 * @see com.liferay.training.parts.service.persistence.impl.ManufacturerPersistenceImpl
 * @generated
 */
@ProviderType
public class ManufacturerUtil {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify this class directly. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this class.
	 */

	/**
	 * @see com.liferay.portal.kernel.service.persistence.BasePersistence#clearCache()
	 */
	public static void clearCache() {
		getPersistence().clearCache();
	}

	/**
	 * @see com.liferay.portal.kernel.service.persistence.BasePersistence#clearCache(com.liferay.portal.kernel.model.BaseModel)
	 */
	public static void clearCache(Manufacturer manufacturer) {
		getPersistence().clearCache(manufacturer);
	}

	/**
	 * @see com.liferay.portal.kernel.service.persistence.BasePersistence#countWithDynamicQuery(DynamicQuery)
	 */
	public static long countWithDynamicQuery(DynamicQuery dynamicQuery) {
		return getPersistence().countWithDynamicQuery(dynamicQuery);
	}

	/**
	 * @see com.liferay.portal.kernel.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery)
	 */
	public static List<Manufacturer> findWithDynamicQuery(
		DynamicQuery dynamicQuery) {
		return getPersistence().findWithDynamicQuery(dynamicQuery);
	}

	/**
	 * @see com.liferay.portal.kernel.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int)
	 */
	public static List<Manufacturer> findWithDynamicQuery(
		DynamicQuery dynamicQuery, int start, int end) {
		return getPersistence().findWithDynamicQuery(dynamicQuery, start, end);
	}

	/**
	 * @see com.liferay.portal.kernel.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int, OrderByComparator)
	 */
	public static List<Manufacturer> findWithDynamicQuery(
		DynamicQuery dynamicQuery, int start, int end,
		OrderByComparator<Manufacturer> orderByComparator) {
		return getPersistence()
				   .findWithDynamicQuery(dynamicQuery, start, end,
			orderByComparator);
	}

	/**
	 * @see com.liferay.portal.kernel.service.persistence.BasePersistence#update(com.liferay.portal.kernel.model.BaseModel)
	 */
	public static Manufacturer update(Manufacturer manufacturer) {
		return getPersistence().update(manufacturer);
	}

	/**
	 * @see com.liferay.portal.kernel.service.persistence.BasePersistence#update(com.liferay.portal.kernel.model.BaseModel, ServiceContext)
	 */
	public static Manufacturer update(Manufacturer manufacturer,
		ServiceContext serviceContext) {
		return getPersistence().update(manufacturer, serviceContext);
	}

	/**
	* Returns all the manufacturers where resourceBlockId = &#63;.
	*
	* @param resourceBlockId the resource block ID
	* @return the matching manufacturers
	*/
	public static List<Manufacturer> findByResourceBlockId(long resourceBlockId) {
		return getPersistence().findByResourceBlockId(resourceBlockId);
	}

	/**
	* Returns a range of all the manufacturers where resourceBlockId = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link ManufacturerModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param resourceBlockId the resource block ID
	* @param start the lower bound of the range of manufacturers
	* @param end the upper bound of the range of manufacturers (not inclusive)
	* @return the range of matching manufacturers
	*/
	public static List<Manufacturer> findByResourceBlockId(
		long resourceBlockId, int start, int end) {
		return getPersistence()
				   .findByResourceBlockId(resourceBlockId, start, end);
	}

	/**
	* Returns an ordered range of all the manufacturers where resourceBlockId = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link ManufacturerModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param resourceBlockId the resource block ID
	* @param start the lower bound of the range of manufacturers
	* @param end the upper bound of the range of manufacturers (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @return the ordered range of matching manufacturers
	*/
	public static List<Manufacturer> findByResourceBlockId(
		long resourceBlockId, int start, int end,
		OrderByComparator<Manufacturer> orderByComparator) {
		return getPersistence()
				   .findByResourceBlockId(resourceBlockId, start, end,
			orderByComparator);
	}

	/**
	* Returns an ordered range of all the manufacturers where resourceBlockId = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link ManufacturerModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param resourceBlockId the resource block ID
	* @param start the lower bound of the range of manufacturers
	* @param end the upper bound of the range of manufacturers (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @param retrieveFromCache whether to retrieve from the finder cache
	* @return the ordered range of matching manufacturers
	*/
	public static List<Manufacturer> findByResourceBlockId(
		long resourceBlockId, int start, int end,
		OrderByComparator<Manufacturer> orderByComparator,
		boolean retrieveFromCache) {
		return getPersistence()
				   .findByResourceBlockId(resourceBlockId, start, end,
			orderByComparator, retrieveFromCache);
	}

	/**
	* Returns the first manufacturer in the ordered set where resourceBlockId = &#63;.
	*
	* @param resourceBlockId the resource block ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the first matching manufacturer
	* @throws NoSuchManufacturerException if a matching manufacturer could not be found
	*/
	public static Manufacturer findByResourceBlockId_First(
		long resourceBlockId, OrderByComparator<Manufacturer> orderByComparator)
		throws com.liferay.training.parts.exception.NoSuchManufacturerException {
		return getPersistence()
				   .findByResourceBlockId_First(resourceBlockId,
			orderByComparator);
	}

	/**
	* Returns the first manufacturer in the ordered set where resourceBlockId = &#63;.
	*
	* @param resourceBlockId the resource block ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the first matching manufacturer, or <code>null</code> if a matching manufacturer could not be found
	*/
	public static Manufacturer fetchByResourceBlockId_First(
		long resourceBlockId, OrderByComparator<Manufacturer> orderByComparator) {
		return getPersistence()
				   .fetchByResourceBlockId_First(resourceBlockId,
			orderByComparator);
	}

	/**
	* Returns the last manufacturer in the ordered set where resourceBlockId = &#63;.
	*
	* @param resourceBlockId the resource block ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the last matching manufacturer
	* @throws NoSuchManufacturerException if a matching manufacturer could not be found
	*/
	public static Manufacturer findByResourceBlockId_Last(
		long resourceBlockId, OrderByComparator<Manufacturer> orderByComparator)
		throws com.liferay.training.parts.exception.NoSuchManufacturerException {
		return getPersistence()
				   .findByResourceBlockId_Last(resourceBlockId,
			orderByComparator);
	}

	/**
	* Returns the last manufacturer in the ordered set where resourceBlockId = &#63;.
	*
	* @param resourceBlockId the resource block ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the last matching manufacturer, or <code>null</code> if a matching manufacturer could not be found
	*/
	public static Manufacturer fetchByResourceBlockId_Last(
		long resourceBlockId, OrderByComparator<Manufacturer> orderByComparator) {
		return getPersistence()
				   .fetchByResourceBlockId_Last(resourceBlockId,
			orderByComparator);
	}

	/**
	* Returns the manufacturers before and after the current manufacturer in the ordered set where resourceBlockId = &#63;.
	*
	* @param manufacturerId the primary key of the current manufacturer
	* @param resourceBlockId the resource block ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the previous, current, and next manufacturer
	* @throws NoSuchManufacturerException if a manufacturer with the primary key could not be found
	*/
	public static Manufacturer[] findByResourceBlockId_PrevAndNext(
		long manufacturerId, long resourceBlockId,
		OrderByComparator<Manufacturer> orderByComparator)
		throws com.liferay.training.parts.exception.NoSuchManufacturerException {
		return getPersistence()
				   .findByResourceBlockId_PrevAndNext(manufacturerId,
			resourceBlockId, orderByComparator);
	}

	/**
	* Removes all the manufacturers where resourceBlockId = &#63; from the database.
	*
	* @param resourceBlockId the resource block ID
	*/
	public static void removeByResourceBlockId(long resourceBlockId) {
		getPersistence().removeByResourceBlockId(resourceBlockId);
	}

	/**
	* Returns the number of manufacturers where resourceBlockId = &#63;.
	*
	* @param resourceBlockId the resource block ID
	* @return the number of matching manufacturers
	*/
	public static int countByResourceBlockId(long resourceBlockId) {
		return getPersistence().countByResourceBlockId(resourceBlockId);
	}

	/**
	* Returns all the manufacturers where groupId = &#63;.
	*
	* @param groupId the group ID
	* @return the matching manufacturers
	*/
	public static List<Manufacturer> findByGroupId(long groupId) {
		return getPersistence().findByGroupId(groupId);
	}

	/**
	* Returns a range of all the manufacturers where groupId = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link ManufacturerModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param groupId the group ID
	* @param start the lower bound of the range of manufacturers
	* @param end the upper bound of the range of manufacturers (not inclusive)
	* @return the range of matching manufacturers
	*/
	public static List<Manufacturer> findByGroupId(long groupId, int start,
		int end) {
		return getPersistence().findByGroupId(groupId, start, end);
	}

	/**
	* Returns an ordered range of all the manufacturers where groupId = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link ManufacturerModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param groupId the group ID
	* @param start the lower bound of the range of manufacturers
	* @param end the upper bound of the range of manufacturers (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @return the ordered range of matching manufacturers
	*/
	public static List<Manufacturer> findByGroupId(long groupId, int start,
		int end, OrderByComparator<Manufacturer> orderByComparator) {
		return getPersistence()
				   .findByGroupId(groupId, start, end, orderByComparator);
	}

	/**
	* Returns an ordered range of all the manufacturers where groupId = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link ManufacturerModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param groupId the group ID
	* @param start the lower bound of the range of manufacturers
	* @param end the upper bound of the range of manufacturers (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @param retrieveFromCache whether to retrieve from the finder cache
	* @return the ordered range of matching manufacturers
	*/
	public static List<Manufacturer> findByGroupId(long groupId, int start,
		int end, OrderByComparator<Manufacturer> orderByComparator,
		boolean retrieveFromCache) {
		return getPersistence()
				   .findByGroupId(groupId, start, end, orderByComparator,
			retrieveFromCache);
	}

	/**
	* Returns the first manufacturer in the ordered set where groupId = &#63;.
	*
	* @param groupId the group ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the first matching manufacturer
	* @throws NoSuchManufacturerException if a matching manufacturer could not be found
	*/
	public static Manufacturer findByGroupId_First(long groupId,
		OrderByComparator<Manufacturer> orderByComparator)
		throws com.liferay.training.parts.exception.NoSuchManufacturerException {
		return getPersistence().findByGroupId_First(groupId, orderByComparator);
	}

	/**
	* Returns the first manufacturer in the ordered set where groupId = &#63;.
	*
	* @param groupId the group ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the first matching manufacturer, or <code>null</code> if a matching manufacturer could not be found
	*/
	public static Manufacturer fetchByGroupId_First(long groupId,
		OrderByComparator<Manufacturer> orderByComparator) {
		return getPersistence().fetchByGroupId_First(groupId, orderByComparator);
	}

	/**
	* Returns the last manufacturer in the ordered set where groupId = &#63;.
	*
	* @param groupId the group ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the last matching manufacturer
	* @throws NoSuchManufacturerException if a matching manufacturer could not be found
	*/
	public static Manufacturer findByGroupId_Last(long groupId,
		OrderByComparator<Manufacturer> orderByComparator)
		throws com.liferay.training.parts.exception.NoSuchManufacturerException {
		return getPersistence().findByGroupId_Last(groupId, orderByComparator);
	}

	/**
	* Returns the last manufacturer in the ordered set where groupId = &#63;.
	*
	* @param groupId the group ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the last matching manufacturer, or <code>null</code> if a matching manufacturer could not be found
	*/
	public static Manufacturer fetchByGroupId_Last(long groupId,
		OrderByComparator<Manufacturer> orderByComparator) {
		return getPersistence().fetchByGroupId_Last(groupId, orderByComparator);
	}

	/**
	* Returns the manufacturers before and after the current manufacturer in the ordered set where groupId = &#63;.
	*
	* @param manufacturerId the primary key of the current manufacturer
	* @param groupId the group ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the previous, current, and next manufacturer
	* @throws NoSuchManufacturerException if a manufacturer with the primary key could not be found
	*/
	public static Manufacturer[] findByGroupId_PrevAndNext(
		long manufacturerId, long groupId,
		OrderByComparator<Manufacturer> orderByComparator)
		throws com.liferay.training.parts.exception.NoSuchManufacturerException {
		return getPersistence()
				   .findByGroupId_PrevAndNext(manufacturerId, groupId,
			orderByComparator);
	}

	/**
	* Removes all the manufacturers where groupId = &#63; from the database.
	*
	* @param groupId the group ID
	*/
	public static void removeByGroupId(long groupId) {
		getPersistence().removeByGroupId(groupId);
	}

	/**
	* Returns the number of manufacturers where groupId = &#63;.
	*
	* @param groupId the group ID
	* @return the number of matching manufacturers
	*/
	public static int countByGroupId(long groupId) {
		return getPersistence().countByGroupId(groupId);
	}

	/**
	* Caches the manufacturer in the entity cache if it is enabled.
	*
	* @param manufacturer the manufacturer
	*/
	public static void cacheResult(Manufacturer manufacturer) {
		getPersistence().cacheResult(manufacturer);
	}

	/**
	* Caches the manufacturers in the entity cache if it is enabled.
	*
	* @param manufacturers the manufacturers
	*/
	public static void cacheResult(List<Manufacturer> manufacturers) {
		getPersistence().cacheResult(manufacturers);
	}

	/**
	* Creates a new manufacturer with the primary key. Does not add the manufacturer to the database.
	*
	* @param manufacturerId the primary key for the new manufacturer
	* @return the new manufacturer
	*/
	public static Manufacturer create(long manufacturerId) {
		return getPersistence().create(manufacturerId);
	}

	/**
	* Removes the manufacturer with the primary key from the database. Also notifies the appropriate model listeners.
	*
	* @param manufacturerId the primary key of the manufacturer
	* @return the manufacturer that was removed
	* @throws NoSuchManufacturerException if a manufacturer with the primary key could not be found
	*/
	public static Manufacturer remove(long manufacturerId)
		throws com.liferay.training.parts.exception.NoSuchManufacturerException {
		return getPersistence().remove(manufacturerId);
	}

	public static Manufacturer updateImpl(Manufacturer manufacturer) {
		return getPersistence().updateImpl(manufacturer);
	}

	/**
	* Returns the manufacturer with the primary key or throws a {@link NoSuchManufacturerException} if it could not be found.
	*
	* @param manufacturerId the primary key of the manufacturer
	* @return the manufacturer
	* @throws NoSuchManufacturerException if a manufacturer with the primary key could not be found
	*/
	public static Manufacturer findByPrimaryKey(long manufacturerId)
		throws com.liferay.training.parts.exception.NoSuchManufacturerException {
		return getPersistence().findByPrimaryKey(manufacturerId);
	}

	/**
	* Returns the manufacturer with the primary key or returns <code>null</code> if it could not be found.
	*
	* @param manufacturerId the primary key of the manufacturer
	* @return the manufacturer, or <code>null</code> if a manufacturer with the primary key could not be found
	*/
	public static Manufacturer fetchByPrimaryKey(long manufacturerId) {
		return getPersistence().fetchByPrimaryKey(manufacturerId);
	}

	public static java.util.Map<java.io.Serializable, Manufacturer> fetchByPrimaryKeys(
		java.util.Set<java.io.Serializable> primaryKeys) {
		return getPersistence().fetchByPrimaryKeys(primaryKeys);
	}

	/**
	* Returns all the manufacturers.
	*
	* @return the manufacturers
	*/
	public static List<Manufacturer> findAll() {
		return getPersistence().findAll();
	}

	/**
	* Returns a range of all the manufacturers.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link ManufacturerModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param start the lower bound of the range of manufacturers
	* @param end the upper bound of the range of manufacturers (not inclusive)
	* @return the range of manufacturers
	*/
	public static List<Manufacturer> findAll(int start, int end) {
		return getPersistence().findAll(start, end);
	}

	/**
	* Returns an ordered range of all the manufacturers.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link ManufacturerModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param start the lower bound of the range of manufacturers
	* @param end the upper bound of the range of manufacturers (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @return the ordered range of manufacturers
	*/
	public static List<Manufacturer> findAll(int start, int end,
		OrderByComparator<Manufacturer> orderByComparator) {
		return getPersistence().findAll(start, end, orderByComparator);
	}

	/**
	* Returns an ordered range of all the manufacturers.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link ManufacturerModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param start the lower bound of the range of manufacturers
	* @param end the upper bound of the range of manufacturers (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @param retrieveFromCache whether to retrieve from the finder cache
	* @return the ordered range of manufacturers
	*/
	public static List<Manufacturer> findAll(int start, int end,
		OrderByComparator<Manufacturer> orderByComparator,
		boolean retrieveFromCache) {
		return getPersistence()
				   .findAll(start, end, orderByComparator, retrieveFromCache);
	}

	/**
	* Removes all the manufacturers from the database.
	*/
	public static void removeAll() {
		getPersistence().removeAll();
	}

	/**
	* Returns the number of manufacturers.
	*
	* @return the number of manufacturers
	*/
	public static int countAll() {
		return getPersistence().countAll();
	}

	public static ManufacturerPersistence getPersistence() {
		return _serviceTracker.getService();
	}

	private static ServiceTracker<ManufacturerPersistence, ManufacturerPersistence> _serviceTracker =
		ServiceTrackerFactory.open(ManufacturerPersistence.class);
}