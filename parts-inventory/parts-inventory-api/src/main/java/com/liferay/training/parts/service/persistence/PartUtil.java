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

import com.liferay.training.parts.model.Part;

import org.osgi.util.tracker.ServiceTracker;

import java.util.List;

/**
 * The persistence utility for the part service. This utility wraps {@link com.liferay.training.parts.service.persistence.impl.PartPersistenceImpl} and provides direct access to the database for CRUD operations. This utility should only be used by the service layer, as it must operate within a transaction. Never access this utility in a JSP, controller, model, or other front-end class.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Samir
 * @see PartPersistence
 * @see com.liferay.training.parts.service.persistence.impl.PartPersistenceImpl
 * @generated
 */
@ProviderType
public class PartUtil {
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
	public static void clearCache(Part part) {
		getPersistence().clearCache(part);
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
	public static List<Part> findWithDynamicQuery(DynamicQuery dynamicQuery) {
		return getPersistence().findWithDynamicQuery(dynamicQuery);
	}

	/**
	 * @see com.liferay.portal.kernel.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int)
	 */
	public static List<Part> findWithDynamicQuery(DynamicQuery dynamicQuery,
		int start, int end) {
		return getPersistence().findWithDynamicQuery(dynamicQuery, start, end);
	}

	/**
	 * @see com.liferay.portal.kernel.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int, OrderByComparator)
	 */
	public static List<Part> findWithDynamicQuery(DynamicQuery dynamicQuery,
		int start, int end, OrderByComparator<Part> orderByComparator) {
		return getPersistence()
				   .findWithDynamicQuery(dynamicQuery, start, end,
			orderByComparator);
	}

	/**
	 * @see com.liferay.portal.kernel.service.persistence.BasePersistence#update(com.liferay.portal.kernel.model.BaseModel)
	 */
	public static Part update(Part part) {
		return getPersistence().update(part);
	}

	/**
	 * @see com.liferay.portal.kernel.service.persistence.BasePersistence#update(com.liferay.portal.kernel.model.BaseModel, ServiceContext)
	 */
	public static Part update(Part part, ServiceContext serviceContext) {
		return getPersistence().update(part, serviceContext);
	}

	/**
	* Returns all the parts where resourceBlockId = &#63;.
	*
	* @param resourceBlockId the resource block ID
	* @return the matching parts
	*/
	public static List<Part> findByResourceBlockId(long resourceBlockId) {
		return getPersistence().findByResourceBlockId(resourceBlockId);
	}

	/**
	* Returns a range of all the parts where resourceBlockId = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link PartModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param resourceBlockId the resource block ID
	* @param start the lower bound of the range of parts
	* @param end the upper bound of the range of parts (not inclusive)
	* @return the range of matching parts
	*/
	public static List<Part> findByResourceBlockId(long resourceBlockId,
		int start, int end) {
		return getPersistence()
				   .findByResourceBlockId(resourceBlockId, start, end);
	}

	/**
	* Returns an ordered range of all the parts where resourceBlockId = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link PartModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param resourceBlockId the resource block ID
	* @param start the lower bound of the range of parts
	* @param end the upper bound of the range of parts (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @return the ordered range of matching parts
	*/
	public static List<Part> findByResourceBlockId(long resourceBlockId,
		int start, int end, OrderByComparator<Part> orderByComparator) {
		return getPersistence()
				   .findByResourceBlockId(resourceBlockId, start, end,
			orderByComparator);
	}

	/**
	* Returns an ordered range of all the parts where resourceBlockId = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link PartModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param resourceBlockId the resource block ID
	* @param start the lower bound of the range of parts
	* @param end the upper bound of the range of parts (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @param retrieveFromCache whether to retrieve from the finder cache
	* @return the ordered range of matching parts
	*/
	public static List<Part> findByResourceBlockId(long resourceBlockId,
		int start, int end, OrderByComparator<Part> orderByComparator,
		boolean retrieveFromCache) {
		return getPersistence()
				   .findByResourceBlockId(resourceBlockId, start, end,
			orderByComparator, retrieveFromCache);
	}

	/**
	* Returns the first part in the ordered set where resourceBlockId = &#63;.
	*
	* @param resourceBlockId the resource block ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the first matching part
	* @throws NoSuchPartException if a matching part could not be found
	*/
	public static Part findByResourceBlockId_First(long resourceBlockId,
		OrderByComparator<Part> orderByComparator)
		throws com.liferay.training.parts.exception.NoSuchPartException {
		return getPersistence()
				   .findByResourceBlockId_First(resourceBlockId,
			orderByComparator);
	}

	/**
	* Returns the first part in the ordered set where resourceBlockId = &#63;.
	*
	* @param resourceBlockId the resource block ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the first matching part, or <code>null</code> if a matching part could not be found
	*/
	public static Part fetchByResourceBlockId_First(long resourceBlockId,
		OrderByComparator<Part> orderByComparator) {
		return getPersistence()
				   .fetchByResourceBlockId_First(resourceBlockId,
			orderByComparator);
	}

	/**
	* Returns the last part in the ordered set where resourceBlockId = &#63;.
	*
	* @param resourceBlockId the resource block ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the last matching part
	* @throws NoSuchPartException if a matching part could not be found
	*/
	public static Part findByResourceBlockId_Last(long resourceBlockId,
		OrderByComparator<Part> orderByComparator)
		throws com.liferay.training.parts.exception.NoSuchPartException {
		return getPersistence()
				   .findByResourceBlockId_Last(resourceBlockId,
			orderByComparator);
	}

	/**
	* Returns the last part in the ordered set where resourceBlockId = &#63;.
	*
	* @param resourceBlockId the resource block ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the last matching part, or <code>null</code> if a matching part could not be found
	*/
	public static Part fetchByResourceBlockId_Last(long resourceBlockId,
		OrderByComparator<Part> orderByComparator) {
		return getPersistence()
				   .fetchByResourceBlockId_Last(resourceBlockId,
			orderByComparator);
	}

	/**
	* Returns the parts before and after the current part in the ordered set where resourceBlockId = &#63;.
	*
	* @param partId the primary key of the current part
	* @param resourceBlockId the resource block ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the previous, current, and next part
	* @throws NoSuchPartException if a part with the primary key could not be found
	*/
	public static Part[] findByResourceBlockId_PrevAndNext(long partId,
		long resourceBlockId, OrderByComparator<Part> orderByComparator)
		throws com.liferay.training.parts.exception.NoSuchPartException {
		return getPersistence()
				   .findByResourceBlockId_PrevAndNext(partId, resourceBlockId,
			orderByComparator);
	}

	/**
	* Removes all the parts where resourceBlockId = &#63; from the database.
	*
	* @param resourceBlockId the resource block ID
	*/
	public static void removeByResourceBlockId(long resourceBlockId) {
		getPersistence().removeByResourceBlockId(resourceBlockId);
	}

	/**
	* Returns the number of parts where resourceBlockId = &#63;.
	*
	* @param resourceBlockId the resource block ID
	* @return the number of matching parts
	*/
	public static int countByResourceBlockId(long resourceBlockId) {
		return getPersistence().countByResourceBlockId(resourceBlockId);
	}

	/**
	* Returns all the parts where groupId = &#63;.
	*
	* @param groupId the group ID
	* @return the matching parts
	*/
	public static List<Part> findByGroupId(long groupId) {
		return getPersistence().findByGroupId(groupId);
	}

	/**
	* Returns a range of all the parts where groupId = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link PartModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param groupId the group ID
	* @param start the lower bound of the range of parts
	* @param end the upper bound of the range of parts (not inclusive)
	* @return the range of matching parts
	*/
	public static List<Part> findByGroupId(long groupId, int start, int end) {
		return getPersistence().findByGroupId(groupId, start, end);
	}

	/**
	* Returns an ordered range of all the parts where groupId = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link PartModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param groupId the group ID
	* @param start the lower bound of the range of parts
	* @param end the upper bound of the range of parts (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @return the ordered range of matching parts
	*/
	public static List<Part> findByGroupId(long groupId, int start, int end,
		OrderByComparator<Part> orderByComparator) {
		return getPersistence()
				   .findByGroupId(groupId, start, end, orderByComparator);
	}

	/**
	* Returns an ordered range of all the parts where groupId = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link PartModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param groupId the group ID
	* @param start the lower bound of the range of parts
	* @param end the upper bound of the range of parts (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @param retrieveFromCache whether to retrieve from the finder cache
	* @return the ordered range of matching parts
	*/
	public static List<Part> findByGroupId(long groupId, int start, int end,
		OrderByComparator<Part> orderByComparator, boolean retrieveFromCache) {
		return getPersistence()
				   .findByGroupId(groupId, start, end, orderByComparator,
			retrieveFromCache);
	}

	/**
	* Returns the first part in the ordered set where groupId = &#63;.
	*
	* @param groupId the group ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the first matching part
	* @throws NoSuchPartException if a matching part could not be found
	*/
	public static Part findByGroupId_First(long groupId,
		OrderByComparator<Part> orderByComparator)
		throws com.liferay.training.parts.exception.NoSuchPartException {
		return getPersistence().findByGroupId_First(groupId, orderByComparator);
	}

	/**
	* Returns the first part in the ordered set where groupId = &#63;.
	*
	* @param groupId the group ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the first matching part, or <code>null</code> if a matching part could not be found
	*/
	public static Part fetchByGroupId_First(long groupId,
		OrderByComparator<Part> orderByComparator) {
		return getPersistence().fetchByGroupId_First(groupId, orderByComparator);
	}

	/**
	* Returns the last part in the ordered set where groupId = &#63;.
	*
	* @param groupId the group ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the last matching part
	* @throws NoSuchPartException if a matching part could not be found
	*/
	public static Part findByGroupId_Last(long groupId,
		OrderByComparator<Part> orderByComparator)
		throws com.liferay.training.parts.exception.NoSuchPartException {
		return getPersistence().findByGroupId_Last(groupId, orderByComparator);
	}

	/**
	* Returns the last part in the ordered set where groupId = &#63;.
	*
	* @param groupId the group ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the last matching part, or <code>null</code> if a matching part could not be found
	*/
	public static Part fetchByGroupId_Last(long groupId,
		OrderByComparator<Part> orderByComparator) {
		return getPersistence().fetchByGroupId_Last(groupId, orderByComparator);
	}

	/**
	* Returns the parts before and after the current part in the ordered set where groupId = &#63;.
	*
	* @param partId the primary key of the current part
	* @param groupId the group ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the previous, current, and next part
	* @throws NoSuchPartException if a part with the primary key could not be found
	*/
	public static Part[] findByGroupId_PrevAndNext(long partId, long groupId,
		OrderByComparator<Part> orderByComparator)
		throws com.liferay.training.parts.exception.NoSuchPartException {
		return getPersistence()
				   .findByGroupId_PrevAndNext(partId, groupId, orderByComparator);
	}

	/**
	* Removes all the parts where groupId = &#63; from the database.
	*
	* @param groupId the group ID
	*/
	public static void removeByGroupId(long groupId) {
		getPersistence().removeByGroupId(groupId);
	}

	/**
	* Returns the number of parts where groupId = &#63;.
	*
	* @param groupId the group ID
	* @return the number of matching parts
	*/
	public static int countByGroupId(long groupId) {
		return getPersistence().countByGroupId(groupId);
	}

	/**
	* Returns all the parts where manufacturerId = &#63; and groupId = &#63;.
	*
	* @param manufacturerId the manufacturer ID
	* @param groupId the group ID
	* @return the matching parts
	*/
	public static List<Part> findByManufacturer(long manufacturerId,
		long groupId) {
		return getPersistence().findByManufacturer(manufacturerId, groupId);
	}

	/**
	* Returns a range of all the parts where manufacturerId = &#63; and groupId = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link PartModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param manufacturerId the manufacturer ID
	* @param groupId the group ID
	* @param start the lower bound of the range of parts
	* @param end the upper bound of the range of parts (not inclusive)
	* @return the range of matching parts
	*/
	public static List<Part> findByManufacturer(long manufacturerId,
		long groupId, int start, int end) {
		return getPersistence()
				   .findByManufacturer(manufacturerId, groupId, start, end);
	}

	/**
	* Returns an ordered range of all the parts where manufacturerId = &#63; and groupId = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link PartModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param manufacturerId the manufacturer ID
	* @param groupId the group ID
	* @param start the lower bound of the range of parts
	* @param end the upper bound of the range of parts (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @return the ordered range of matching parts
	*/
	public static List<Part> findByManufacturer(long manufacturerId,
		long groupId, int start, int end,
		OrderByComparator<Part> orderByComparator) {
		return getPersistence()
				   .findByManufacturer(manufacturerId, groupId, start, end,
			orderByComparator);
	}

	/**
	* Returns an ordered range of all the parts where manufacturerId = &#63; and groupId = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link PartModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param manufacturerId the manufacturer ID
	* @param groupId the group ID
	* @param start the lower bound of the range of parts
	* @param end the upper bound of the range of parts (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @param retrieveFromCache whether to retrieve from the finder cache
	* @return the ordered range of matching parts
	*/
	public static List<Part> findByManufacturer(long manufacturerId,
		long groupId, int start, int end,
		OrderByComparator<Part> orderByComparator, boolean retrieveFromCache) {
		return getPersistence()
				   .findByManufacturer(manufacturerId, groupId, start, end,
			orderByComparator, retrieveFromCache);
	}

	/**
	* Returns the first part in the ordered set where manufacturerId = &#63; and groupId = &#63;.
	*
	* @param manufacturerId the manufacturer ID
	* @param groupId the group ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the first matching part
	* @throws NoSuchPartException if a matching part could not be found
	*/
	public static Part findByManufacturer_First(long manufacturerId,
		long groupId, OrderByComparator<Part> orderByComparator)
		throws com.liferay.training.parts.exception.NoSuchPartException {
		return getPersistence()
				   .findByManufacturer_First(manufacturerId, groupId,
			orderByComparator);
	}

	/**
	* Returns the first part in the ordered set where manufacturerId = &#63; and groupId = &#63;.
	*
	* @param manufacturerId the manufacturer ID
	* @param groupId the group ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the first matching part, or <code>null</code> if a matching part could not be found
	*/
	public static Part fetchByManufacturer_First(long manufacturerId,
		long groupId, OrderByComparator<Part> orderByComparator) {
		return getPersistence()
				   .fetchByManufacturer_First(manufacturerId, groupId,
			orderByComparator);
	}

	/**
	* Returns the last part in the ordered set where manufacturerId = &#63; and groupId = &#63;.
	*
	* @param manufacturerId the manufacturer ID
	* @param groupId the group ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the last matching part
	* @throws NoSuchPartException if a matching part could not be found
	*/
	public static Part findByManufacturer_Last(long manufacturerId,
		long groupId, OrderByComparator<Part> orderByComparator)
		throws com.liferay.training.parts.exception.NoSuchPartException {
		return getPersistence()
				   .findByManufacturer_Last(manufacturerId, groupId,
			orderByComparator);
	}

	/**
	* Returns the last part in the ordered set where manufacturerId = &#63; and groupId = &#63;.
	*
	* @param manufacturerId the manufacturer ID
	* @param groupId the group ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the last matching part, or <code>null</code> if a matching part could not be found
	*/
	public static Part fetchByManufacturer_Last(long manufacturerId,
		long groupId, OrderByComparator<Part> orderByComparator) {
		return getPersistence()
				   .fetchByManufacturer_Last(manufacturerId, groupId,
			orderByComparator);
	}

	/**
	* Returns the parts before and after the current part in the ordered set where manufacturerId = &#63; and groupId = &#63;.
	*
	* @param partId the primary key of the current part
	* @param manufacturerId the manufacturer ID
	* @param groupId the group ID
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the previous, current, and next part
	* @throws NoSuchPartException if a part with the primary key could not be found
	*/
	public static Part[] findByManufacturer_PrevAndNext(long partId,
		long manufacturerId, long groupId,
		OrderByComparator<Part> orderByComparator)
		throws com.liferay.training.parts.exception.NoSuchPartException {
		return getPersistence()
				   .findByManufacturer_PrevAndNext(partId, manufacturerId,
			groupId, orderByComparator);
	}

	/**
	* Removes all the parts where manufacturerId = &#63; and groupId = &#63; from the database.
	*
	* @param manufacturerId the manufacturer ID
	* @param groupId the group ID
	*/
	public static void removeByManufacturer(long manufacturerId, long groupId) {
		getPersistence().removeByManufacturer(manufacturerId, groupId);
	}

	/**
	* Returns the number of parts where manufacturerId = &#63; and groupId = &#63;.
	*
	* @param manufacturerId the manufacturer ID
	* @param groupId the group ID
	* @return the number of matching parts
	*/
	public static int countByManufacturer(long manufacturerId, long groupId) {
		return getPersistence().countByManufacturer(manufacturerId, groupId);
	}

	/**
	* Caches the part in the entity cache if it is enabled.
	*
	* @param part the part
	*/
	public static void cacheResult(Part part) {
		getPersistence().cacheResult(part);
	}

	/**
	* Caches the parts in the entity cache if it is enabled.
	*
	* @param parts the parts
	*/
	public static void cacheResult(List<Part> parts) {
		getPersistence().cacheResult(parts);
	}

	/**
	* Creates a new part with the primary key. Does not add the part to the database.
	*
	* @param partId the primary key for the new part
	* @return the new part
	*/
	public static Part create(long partId) {
		return getPersistence().create(partId);
	}

	/**
	* Removes the part with the primary key from the database. Also notifies the appropriate model listeners.
	*
	* @param partId the primary key of the part
	* @return the part that was removed
	* @throws NoSuchPartException if a part with the primary key could not be found
	*/
	public static Part remove(long partId)
		throws com.liferay.training.parts.exception.NoSuchPartException {
		return getPersistence().remove(partId);
	}

	public static Part updateImpl(Part part) {
		return getPersistence().updateImpl(part);
	}

	/**
	* Returns the part with the primary key or throws a {@link NoSuchPartException} if it could not be found.
	*
	* @param partId the primary key of the part
	* @return the part
	* @throws NoSuchPartException if a part with the primary key could not be found
	*/
	public static Part findByPrimaryKey(long partId)
		throws com.liferay.training.parts.exception.NoSuchPartException {
		return getPersistence().findByPrimaryKey(partId);
	}

	/**
	* Returns the part with the primary key or returns <code>null</code> if it could not be found.
	*
	* @param partId the primary key of the part
	* @return the part, or <code>null</code> if a part with the primary key could not be found
	*/
	public static Part fetchByPrimaryKey(long partId) {
		return getPersistence().fetchByPrimaryKey(partId);
	}

	public static java.util.Map<java.io.Serializable, Part> fetchByPrimaryKeys(
		java.util.Set<java.io.Serializable> primaryKeys) {
		return getPersistence().fetchByPrimaryKeys(primaryKeys);
	}

	/**
	* Returns all the parts.
	*
	* @return the parts
	*/
	public static List<Part> findAll() {
		return getPersistence().findAll();
	}

	/**
	* Returns a range of all the parts.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link PartModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param start the lower bound of the range of parts
	* @param end the upper bound of the range of parts (not inclusive)
	* @return the range of parts
	*/
	public static List<Part> findAll(int start, int end) {
		return getPersistence().findAll(start, end);
	}

	/**
	* Returns an ordered range of all the parts.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link PartModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param start the lower bound of the range of parts
	* @param end the upper bound of the range of parts (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @return the ordered range of parts
	*/
	public static List<Part> findAll(int start, int end,
		OrderByComparator<Part> orderByComparator) {
		return getPersistence().findAll(start, end, orderByComparator);
	}

	/**
	* Returns an ordered range of all the parts.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link PartModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
	* </p>
	*
	* @param start the lower bound of the range of parts
	* @param end the upper bound of the range of parts (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @param retrieveFromCache whether to retrieve from the finder cache
	* @return the ordered range of parts
	*/
	public static List<Part> findAll(int start, int end,
		OrderByComparator<Part> orderByComparator, boolean retrieveFromCache) {
		return getPersistence()
				   .findAll(start, end, orderByComparator, retrieveFromCache);
	}

	/**
	* Removes all the parts from the database.
	*/
	public static void removeAll() {
		getPersistence().removeAll();
	}

	/**
	* Returns the number of parts.
	*
	* @return the number of parts
	*/
	public static int countAll() {
		return getPersistence().countAll();
	}

	public static PartPersistence getPersistence() {
		return _serviceTracker.getService();
	}

	private static ServiceTracker<PartPersistence, PartPersistence> _serviceTracker =
		ServiceTrackerFactory.open(PartPersistence.class);
}