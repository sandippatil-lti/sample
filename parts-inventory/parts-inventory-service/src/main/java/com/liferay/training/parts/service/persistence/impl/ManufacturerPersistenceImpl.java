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

package com.liferay.training.parts.service.persistence.impl;

import aQute.bnd.annotation.ProviderType;

import com.liferay.portal.kernel.dao.orm.EntityCache;
import com.liferay.portal.kernel.dao.orm.FinderCache;
import com.liferay.portal.kernel.dao.orm.FinderPath;
import com.liferay.portal.kernel.dao.orm.Query;
import com.liferay.portal.kernel.dao.orm.QueryPos;
import com.liferay.portal.kernel.dao.orm.QueryUtil;
import com.liferay.portal.kernel.dao.orm.Session;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.service.ServiceContext;
import com.liferay.portal.kernel.service.ServiceContextThreadLocal;
import com.liferay.portal.kernel.service.persistence.CompanyProvider;
import com.liferay.portal.kernel.service.persistence.CompanyProviderWrapper;
import com.liferay.portal.kernel.service.persistence.impl.BasePersistenceImpl;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.spring.extender.service.ServiceReference;

import com.liferay.training.parts.exception.NoSuchManufacturerException;
import com.liferay.training.parts.model.Manufacturer;
import com.liferay.training.parts.model.impl.ManufacturerImpl;
import com.liferay.training.parts.model.impl.ManufacturerModelImpl;
import com.liferay.training.parts.service.persistence.ManufacturerPersistence;

import java.io.Serializable;

import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * The persistence implementation for the manufacturer service.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Samir
 * @see ManufacturerPersistence
 * @see com.liferay.training.parts.service.persistence.ManufacturerUtil
 * @generated
 */
@ProviderType
public class ManufacturerPersistenceImpl extends BasePersistenceImpl<Manufacturer>
	implements ManufacturerPersistence {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify or reference this class directly. Always use {@link ManufacturerUtil} to access the manufacturer persistence. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this class.
	 */
	public static final String FINDER_CLASS_NAME_ENTITY = ManufacturerImpl.class.getName();
	public static final String FINDER_CLASS_NAME_LIST_WITH_PAGINATION = FINDER_CLASS_NAME_ENTITY +
		".List1";
	public static final String FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION = FINDER_CLASS_NAME_ENTITY +
		".List2";
	public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_ALL = new FinderPath(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
			ManufacturerModelImpl.FINDER_CACHE_ENABLED, ManufacturerImpl.class,
			FINDER_CLASS_NAME_LIST_WITH_PAGINATION, "findAll", new String[0]);
	public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_ALL = new FinderPath(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
			ManufacturerModelImpl.FINDER_CACHE_ENABLED, ManufacturerImpl.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findAll", new String[0]);
	public static final FinderPath FINDER_PATH_COUNT_ALL = new FinderPath(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
			ManufacturerModelImpl.FINDER_CACHE_ENABLED, Long.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countAll", new String[0]);
	public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_BY_RESOURCEBLOCKID =
		new FinderPath(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
			ManufacturerModelImpl.FINDER_CACHE_ENABLED, ManufacturerImpl.class,
			FINDER_CLASS_NAME_LIST_WITH_PAGINATION, "findByResourceBlockId",
			new String[] {
				Long.class.getName(),
				
			Integer.class.getName(), Integer.class.getName(),
				OrderByComparator.class.getName()
			});
	public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_RESOURCEBLOCKID =
		new FinderPath(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
			ManufacturerModelImpl.FINDER_CACHE_ENABLED, ManufacturerImpl.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findByResourceBlockId",
			new String[] { Long.class.getName() },
			ManufacturerModelImpl.RESOURCEBLOCKID_COLUMN_BITMASK |
			ManufacturerModelImpl.NAME_COLUMN_BITMASK);
	public static final FinderPath FINDER_PATH_COUNT_BY_RESOURCEBLOCKID = new FinderPath(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
			ManufacturerModelImpl.FINDER_CACHE_ENABLED, Long.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION,
			"countByResourceBlockId", new String[] { Long.class.getName() });

	/**
	 * Returns all the manufacturers where resourceBlockId = &#63;.
	 *
	 * @param resourceBlockId the resource block ID
	 * @return the matching manufacturers
	 */
	@Override
	public List<Manufacturer> findByResourceBlockId(long resourceBlockId) {
		return findByResourceBlockId(resourceBlockId, QueryUtil.ALL_POS,
			QueryUtil.ALL_POS, null);
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
	@Override
	public List<Manufacturer> findByResourceBlockId(long resourceBlockId,
		int start, int end) {
		return findByResourceBlockId(resourceBlockId, start, end, null);
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
	@Override
	public List<Manufacturer> findByResourceBlockId(long resourceBlockId,
		int start, int end, OrderByComparator<Manufacturer> orderByComparator) {
		return findByResourceBlockId(resourceBlockId, start, end,
			orderByComparator, true);
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
	@Override
	public List<Manufacturer> findByResourceBlockId(long resourceBlockId,
		int start, int end, OrderByComparator<Manufacturer> orderByComparator,
		boolean retrieveFromCache) {
		boolean pagination = true;
		FinderPath finderPath = null;
		Object[] finderArgs = null;

		if ((start == QueryUtil.ALL_POS) && (end == QueryUtil.ALL_POS) &&
				(orderByComparator == null)) {
			pagination = false;
			finderPath = FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_RESOURCEBLOCKID;
			finderArgs = new Object[] { resourceBlockId };
		}
		else {
			finderPath = FINDER_PATH_WITH_PAGINATION_FIND_BY_RESOURCEBLOCKID;
			finderArgs = new Object[] {
					resourceBlockId,
					
					start, end, orderByComparator
				};
		}

		List<Manufacturer> list = null;

		if (retrieveFromCache) {
			list = (List<Manufacturer>)finderCache.getResult(finderPath,
					finderArgs, this);

			if ((list != null) && !list.isEmpty()) {
				for (Manufacturer manufacturer : list) {
					if ((resourceBlockId != manufacturer.getResourceBlockId())) {
						list = null;

						break;
					}
				}
			}
		}

		if (list == null) {
			StringBundler query = null;

			if (orderByComparator != null) {
				query = new StringBundler(3 +
						(orderByComparator.getOrderByFields().length * 2));
			}
			else {
				query = new StringBundler(3);
			}

			query.append(_SQL_SELECT_MANUFACTURER_WHERE);

			query.append(_FINDER_COLUMN_RESOURCEBLOCKID_RESOURCEBLOCKID_2);

			if (orderByComparator != null) {
				appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
					orderByComparator);
			}
			else
			 if (pagination) {
				query.append(ManufacturerModelImpl.ORDER_BY_JPQL);
			}

			String sql = query.toString();

			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(sql);

				QueryPos qPos = QueryPos.getInstance(q);

				qPos.add(resourceBlockId);

				if (!pagination) {
					list = (List<Manufacturer>)QueryUtil.list(q, getDialect(),
							start, end, false);

					Collections.sort(list);

					list = Collections.unmodifiableList(list);
				}
				else {
					list = (List<Manufacturer>)QueryUtil.list(q, getDialect(),
							start, end);
				}

				cacheResult(list);

				finderCache.putResult(finderPath, finderArgs, list);
			}
			catch (Exception e) {
				finderCache.removeResult(finderPath, finderArgs);

				throw processException(e);
			}
			finally {
				closeSession(session);
			}
		}

		return list;
	}

	/**
	 * Returns the first manufacturer in the ordered set where resourceBlockId = &#63;.
	 *
	 * @param resourceBlockId the resource block ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the first matching manufacturer
	 * @throws NoSuchManufacturerException if a matching manufacturer could not be found
	 */
	@Override
	public Manufacturer findByResourceBlockId_First(long resourceBlockId,
		OrderByComparator<Manufacturer> orderByComparator)
		throws NoSuchManufacturerException {
		Manufacturer manufacturer = fetchByResourceBlockId_First(resourceBlockId,
				orderByComparator);

		if (manufacturer != null) {
			return manufacturer;
		}

		StringBundler msg = new StringBundler(4);

		msg.append(_NO_SUCH_ENTITY_WITH_KEY);

		msg.append("resourceBlockId=");
		msg.append(resourceBlockId);

		msg.append(StringPool.CLOSE_CURLY_BRACE);

		throw new NoSuchManufacturerException(msg.toString());
	}

	/**
	 * Returns the first manufacturer in the ordered set where resourceBlockId = &#63;.
	 *
	 * @param resourceBlockId the resource block ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the first matching manufacturer, or <code>null</code> if a matching manufacturer could not be found
	 */
	@Override
	public Manufacturer fetchByResourceBlockId_First(long resourceBlockId,
		OrderByComparator<Manufacturer> orderByComparator) {
		List<Manufacturer> list = findByResourceBlockId(resourceBlockId, 0, 1,
				orderByComparator);

		if (!list.isEmpty()) {
			return list.get(0);
		}

		return null;
	}

	/**
	 * Returns the last manufacturer in the ordered set where resourceBlockId = &#63;.
	 *
	 * @param resourceBlockId the resource block ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the last matching manufacturer
	 * @throws NoSuchManufacturerException if a matching manufacturer could not be found
	 */
	@Override
	public Manufacturer findByResourceBlockId_Last(long resourceBlockId,
		OrderByComparator<Manufacturer> orderByComparator)
		throws NoSuchManufacturerException {
		Manufacturer manufacturer = fetchByResourceBlockId_Last(resourceBlockId,
				orderByComparator);

		if (manufacturer != null) {
			return manufacturer;
		}

		StringBundler msg = new StringBundler(4);

		msg.append(_NO_SUCH_ENTITY_WITH_KEY);

		msg.append("resourceBlockId=");
		msg.append(resourceBlockId);

		msg.append(StringPool.CLOSE_CURLY_BRACE);

		throw new NoSuchManufacturerException(msg.toString());
	}

	/**
	 * Returns the last manufacturer in the ordered set where resourceBlockId = &#63;.
	 *
	 * @param resourceBlockId the resource block ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the last matching manufacturer, or <code>null</code> if a matching manufacturer could not be found
	 */
	@Override
	public Manufacturer fetchByResourceBlockId_Last(long resourceBlockId,
		OrderByComparator<Manufacturer> orderByComparator) {
		int count = countByResourceBlockId(resourceBlockId);

		if (count == 0) {
			return null;
		}

		List<Manufacturer> list = findByResourceBlockId(resourceBlockId,
				count - 1, count, orderByComparator);

		if (!list.isEmpty()) {
			return list.get(0);
		}

		return null;
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
	@Override
	public Manufacturer[] findByResourceBlockId_PrevAndNext(
		long manufacturerId, long resourceBlockId,
		OrderByComparator<Manufacturer> orderByComparator)
		throws NoSuchManufacturerException {
		Manufacturer manufacturer = findByPrimaryKey(manufacturerId);

		Session session = null;

		try {
			session = openSession();

			Manufacturer[] array = new ManufacturerImpl[3];

			array[0] = getByResourceBlockId_PrevAndNext(session, manufacturer,
					resourceBlockId, orderByComparator, true);

			array[1] = manufacturer;

			array[2] = getByResourceBlockId_PrevAndNext(session, manufacturer,
					resourceBlockId, orderByComparator, false);

			return array;
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}
	}

	protected Manufacturer getByResourceBlockId_PrevAndNext(Session session,
		Manufacturer manufacturer, long resourceBlockId,
		OrderByComparator<Manufacturer> orderByComparator, boolean previous) {
		StringBundler query = null;

		if (orderByComparator != null) {
			query = new StringBundler(4 +
					(orderByComparator.getOrderByConditionFields().length * 3) +
					(orderByComparator.getOrderByFields().length * 3));
		}
		else {
			query = new StringBundler(3);
		}

		query.append(_SQL_SELECT_MANUFACTURER_WHERE);

		query.append(_FINDER_COLUMN_RESOURCEBLOCKID_RESOURCEBLOCKID_2);

		if (orderByComparator != null) {
			String[] orderByConditionFields = orderByComparator.getOrderByConditionFields();

			if (orderByConditionFields.length > 0) {
				query.append(WHERE_AND);
			}

			for (int i = 0; i < orderByConditionFields.length; i++) {
				query.append(_ORDER_BY_ENTITY_ALIAS);
				query.append(orderByConditionFields[i]);

				if ((i + 1) < orderByConditionFields.length) {
					if (orderByComparator.isAscending() ^ previous) {
						query.append(WHERE_GREATER_THAN_HAS_NEXT);
					}
					else {
						query.append(WHERE_LESSER_THAN_HAS_NEXT);
					}
				}
				else {
					if (orderByComparator.isAscending() ^ previous) {
						query.append(WHERE_GREATER_THAN);
					}
					else {
						query.append(WHERE_LESSER_THAN);
					}
				}
			}

			query.append(ORDER_BY_CLAUSE);

			String[] orderByFields = orderByComparator.getOrderByFields();

			for (int i = 0; i < orderByFields.length; i++) {
				query.append(_ORDER_BY_ENTITY_ALIAS);
				query.append(orderByFields[i]);

				if ((i + 1) < orderByFields.length) {
					if (orderByComparator.isAscending() ^ previous) {
						query.append(ORDER_BY_ASC_HAS_NEXT);
					}
					else {
						query.append(ORDER_BY_DESC_HAS_NEXT);
					}
				}
				else {
					if (orderByComparator.isAscending() ^ previous) {
						query.append(ORDER_BY_ASC);
					}
					else {
						query.append(ORDER_BY_DESC);
					}
				}
			}
		}
		else {
			query.append(ManufacturerModelImpl.ORDER_BY_JPQL);
		}

		String sql = query.toString();

		Query q = session.createQuery(sql);

		q.setFirstResult(0);
		q.setMaxResults(2);

		QueryPos qPos = QueryPos.getInstance(q);

		qPos.add(resourceBlockId);

		if (orderByComparator != null) {
			Object[] values = orderByComparator.getOrderByConditionValues(manufacturer);

			for (Object value : values) {
				qPos.add(value);
			}
		}

		List<Manufacturer> list = q.list();

		if (list.size() == 2) {
			return list.get(1);
		}
		else {
			return null;
		}
	}

	/**
	 * Removes all the manufacturers where resourceBlockId = &#63; from the database.
	 *
	 * @param resourceBlockId the resource block ID
	 */
	@Override
	public void removeByResourceBlockId(long resourceBlockId) {
		for (Manufacturer manufacturer : findByResourceBlockId(
				resourceBlockId, QueryUtil.ALL_POS, QueryUtil.ALL_POS, null)) {
			remove(manufacturer);
		}
	}

	/**
	 * Returns the number of manufacturers where resourceBlockId = &#63;.
	 *
	 * @param resourceBlockId the resource block ID
	 * @return the number of matching manufacturers
	 */
	@Override
	public int countByResourceBlockId(long resourceBlockId) {
		FinderPath finderPath = FINDER_PATH_COUNT_BY_RESOURCEBLOCKID;

		Object[] finderArgs = new Object[] { resourceBlockId };

		Long count = (Long)finderCache.getResult(finderPath, finderArgs, this);

		if (count == null) {
			StringBundler query = new StringBundler(2);

			query.append(_SQL_COUNT_MANUFACTURER_WHERE);

			query.append(_FINDER_COLUMN_RESOURCEBLOCKID_RESOURCEBLOCKID_2);

			String sql = query.toString();

			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(sql);

				QueryPos qPos = QueryPos.getInstance(q);

				qPos.add(resourceBlockId);

				count = (Long)q.uniqueResult();

				finderCache.putResult(finderPath, finderArgs, count);
			}
			catch (Exception e) {
				finderCache.removeResult(finderPath, finderArgs);

				throw processException(e);
			}
			finally {
				closeSession(session);
			}
		}

		return count.intValue();
	}

	private static final String _FINDER_COLUMN_RESOURCEBLOCKID_RESOURCEBLOCKID_2 =
		"manufacturer.resourceBlockId = ?";
	public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_BY_GROUPID = new FinderPath(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
			ManufacturerModelImpl.FINDER_CACHE_ENABLED, ManufacturerImpl.class,
			FINDER_CLASS_NAME_LIST_WITH_PAGINATION, "findByGroupId",
			new String[] {
				Long.class.getName(),
				
			Integer.class.getName(), Integer.class.getName(),
				OrderByComparator.class.getName()
			});
	public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_GROUPID =
		new FinderPath(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
			ManufacturerModelImpl.FINDER_CACHE_ENABLED, ManufacturerImpl.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findByGroupId",
			new String[] { Long.class.getName() },
			ManufacturerModelImpl.GROUPID_COLUMN_BITMASK |
			ManufacturerModelImpl.NAME_COLUMN_BITMASK);
	public static final FinderPath FINDER_PATH_COUNT_BY_GROUPID = new FinderPath(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
			ManufacturerModelImpl.FINDER_CACHE_ENABLED, Long.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countByGroupId",
			new String[] { Long.class.getName() });

	/**
	 * Returns all the manufacturers where groupId = &#63;.
	 *
	 * @param groupId the group ID
	 * @return the matching manufacturers
	 */
	@Override
	public List<Manufacturer> findByGroupId(long groupId) {
		return findByGroupId(groupId, QueryUtil.ALL_POS, QueryUtil.ALL_POS, null);
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
	@Override
	public List<Manufacturer> findByGroupId(long groupId, int start, int end) {
		return findByGroupId(groupId, start, end, null);
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
	@Override
	public List<Manufacturer> findByGroupId(long groupId, int start, int end,
		OrderByComparator<Manufacturer> orderByComparator) {
		return findByGroupId(groupId, start, end, orderByComparator, true);
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
	@Override
	public List<Manufacturer> findByGroupId(long groupId, int start, int end,
		OrderByComparator<Manufacturer> orderByComparator,
		boolean retrieveFromCache) {
		boolean pagination = true;
		FinderPath finderPath = null;
		Object[] finderArgs = null;

		if ((start == QueryUtil.ALL_POS) && (end == QueryUtil.ALL_POS) &&
				(orderByComparator == null)) {
			pagination = false;
			finderPath = FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_GROUPID;
			finderArgs = new Object[] { groupId };
		}
		else {
			finderPath = FINDER_PATH_WITH_PAGINATION_FIND_BY_GROUPID;
			finderArgs = new Object[] { groupId, start, end, orderByComparator };
		}

		List<Manufacturer> list = null;

		if (retrieveFromCache) {
			list = (List<Manufacturer>)finderCache.getResult(finderPath,
					finderArgs, this);

			if ((list != null) && !list.isEmpty()) {
				for (Manufacturer manufacturer : list) {
					if ((groupId != manufacturer.getGroupId())) {
						list = null;

						break;
					}
				}
			}
		}

		if (list == null) {
			StringBundler query = null;

			if (orderByComparator != null) {
				query = new StringBundler(3 +
						(orderByComparator.getOrderByFields().length * 2));
			}
			else {
				query = new StringBundler(3);
			}

			query.append(_SQL_SELECT_MANUFACTURER_WHERE);

			query.append(_FINDER_COLUMN_GROUPID_GROUPID_2);

			if (orderByComparator != null) {
				appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
					orderByComparator);
			}
			else
			 if (pagination) {
				query.append(ManufacturerModelImpl.ORDER_BY_JPQL);
			}

			String sql = query.toString();

			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(sql);

				QueryPos qPos = QueryPos.getInstance(q);

				qPos.add(groupId);

				if (!pagination) {
					list = (List<Manufacturer>)QueryUtil.list(q, getDialect(),
							start, end, false);

					Collections.sort(list);

					list = Collections.unmodifiableList(list);
				}
				else {
					list = (List<Manufacturer>)QueryUtil.list(q, getDialect(),
							start, end);
				}

				cacheResult(list);

				finderCache.putResult(finderPath, finderArgs, list);
			}
			catch (Exception e) {
				finderCache.removeResult(finderPath, finderArgs);

				throw processException(e);
			}
			finally {
				closeSession(session);
			}
		}

		return list;
	}

	/**
	 * Returns the first manufacturer in the ordered set where groupId = &#63;.
	 *
	 * @param groupId the group ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the first matching manufacturer
	 * @throws NoSuchManufacturerException if a matching manufacturer could not be found
	 */
	@Override
	public Manufacturer findByGroupId_First(long groupId,
		OrderByComparator<Manufacturer> orderByComparator)
		throws NoSuchManufacturerException {
		Manufacturer manufacturer = fetchByGroupId_First(groupId,
				orderByComparator);

		if (manufacturer != null) {
			return manufacturer;
		}

		StringBundler msg = new StringBundler(4);

		msg.append(_NO_SUCH_ENTITY_WITH_KEY);

		msg.append("groupId=");
		msg.append(groupId);

		msg.append(StringPool.CLOSE_CURLY_BRACE);

		throw new NoSuchManufacturerException(msg.toString());
	}

	/**
	 * Returns the first manufacturer in the ordered set where groupId = &#63;.
	 *
	 * @param groupId the group ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the first matching manufacturer, or <code>null</code> if a matching manufacturer could not be found
	 */
	@Override
	public Manufacturer fetchByGroupId_First(long groupId,
		OrderByComparator<Manufacturer> orderByComparator) {
		List<Manufacturer> list = findByGroupId(groupId, 0, 1, orderByComparator);

		if (!list.isEmpty()) {
			return list.get(0);
		}

		return null;
	}

	/**
	 * Returns the last manufacturer in the ordered set where groupId = &#63;.
	 *
	 * @param groupId the group ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the last matching manufacturer
	 * @throws NoSuchManufacturerException if a matching manufacturer could not be found
	 */
	@Override
	public Manufacturer findByGroupId_Last(long groupId,
		OrderByComparator<Manufacturer> orderByComparator)
		throws NoSuchManufacturerException {
		Manufacturer manufacturer = fetchByGroupId_Last(groupId,
				orderByComparator);

		if (manufacturer != null) {
			return manufacturer;
		}

		StringBundler msg = new StringBundler(4);

		msg.append(_NO_SUCH_ENTITY_WITH_KEY);

		msg.append("groupId=");
		msg.append(groupId);

		msg.append(StringPool.CLOSE_CURLY_BRACE);

		throw new NoSuchManufacturerException(msg.toString());
	}

	/**
	 * Returns the last manufacturer in the ordered set where groupId = &#63;.
	 *
	 * @param groupId the group ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the last matching manufacturer, or <code>null</code> if a matching manufacturer could not be found
	 */
	@Override
	public Manufacturer fetchByGroupId_Last(long groupId,
		OrderByComparator<Manufacturer> orderByComparator) {
		int count = countByGroupId(groupId);

		if (count == 0) {
			return null;
		}

		List<Manufacturer> list = findByGroupId(groupId, count - 1, count,
				orderByComparator);

		if (!list.isEmpty()) {
			return list.get(0);
		}

		return null;
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
	@Override
	public Manufacturer[] findByGroupId_PrevAndNext(long manufacturerId,
		long groupId, OrderByComparator<Manufacturer> orderByComparator)
		throws NoSuchManufacturerException {
		Manufacturer manufacturer = findByPrimaryKey(manufacturerId);

		Session session = null;

		try {
			session = openSession();

			Manufacturer[] array = new ManufacturerImpl[3];

			array[0] = getByGroupId_PrevAndNext(session, manufacturer, groupId,
					orderByComparator, true);

			array[1] = manufacturer;

			array[2] = getByGroupId_PrevAndNext(session, manufacturer, groupId,
					orderByComparator, false);

			return array;
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}
	}

	protected Manufacturer getByGroupId_PrevAndNext(Session session,
		Manufacturer manufacturer, long groupId,
		OrderByComparator<Manufacturer> orderByComparator, boolean previous) {
		StringBundler query = null;

		if (orderByComparator != null) {
			query = new StringBundler(4 +
					(orderByComparator.getOrderByConditionFields().length * 3) +
					(orderByComparator.getOrderByFields().length * 3));
		}
		else {
			query = new StringBundler(3);
		}

		query.append(_SQL_SELECT_MANUFACTURER_WHERE);

		query.append(_FINDER_COLUMN_GROUPID_GROUPID_2);

		if (orderByComparator != null) {
			String[] orderByConditionFields = orderByComparator.getOrderByConditionFields();

			if (orderByConditionFields.length > 0) {
				query.append(WHERE_AND);
			}

			for (int i = 0; i < orderByConditionFields.length; i++) {
				query.append(_ORDER_BY_ENTITY_ALIAS);
				query.append(orderByConditionFields[i]);

				if ((i + 1) < orderByConditionFields.length) {
					if (orderByComparator.isAscending() ^ previous) {
						query.append(WHERE_GREATER_THAN_HAS_NEXT);
					}
					else {
						query.append(WHERE_LESSER_THAN_HAS_NEXT);
					}
				}
				else {
					if (orderByComparator.isAscending() ^ previous) {
						query.append(WHERE_GREATER_THAN);
					}
					else {
						query.append(WHERE_LESSER_THAN);
					}
				}
			}

			query.append(ORDER_BY_CLAUSE);

			String[] orderByFields = orderByComparator.getOrderByFields();

			for (int i = 0; i < orderByFields.length; i++) {
				query.append(_ORDER_BY_ENTITY_ALIAS);
				query.append(orderByFields[i]);

				if ((i + 1) < orderByFields.length) {
					if (orderByComparator.isAscending() ^ previous) {
						query.append(ORDER_BY_ASC_HAS_NEXT);
					}
					else {
						query.append(ORDER_BY_DESC_HAS_NEXT);
					}
				}
				else {
					if (orderByComparator.isAscending() ^ previous) {
						query.append(ORDER_BY_ASC);
					}
					else {
						query.append(ORDER_BY_DESC);
					}
				}
			}
		}
		else {
			query.append(ManufacturerModelImpl.ORDER_BY_JPQL);
		}

		String sql = query.toString();

		Query q = session.createQuery(sql);

		q.setFirstResult(0);
		q.setMaxResults(2);

		QueryPos qPos = QueryPos.getInstance(q);

		qPos.add(groupId);

		if (orderByComparator != null) {
			Object[] values = orderByComparator.getOrderByConditionValues(manufacturer);

			for (Object value : values) {
				qPos.add(value);
			}
		}

		List<Manufacturer> list = q.list();

		if (list.size() == 2) {
			return list.get(1);
		}
		else {
			return null;
		}
	}

	/**
	 * Removes all the manufacturers where groupId = &#63; from the database.
	 *
	 * @param groupId the group ID
	 */
	@Override
	public void removeByGroupId(long groupId) {
		for (Manufacturer manufacturer : findByGroupId(groupId,
				QueryUtil.ALL_POS, QueryUtil.ALL_POS, null)) {
			remove(manufacturer);
		}
	}

	/**
	 * Returns the number of manufacturers where groupId = &#63;.
	 *
	 * @param groupId the group ID
	 * @return the number of matching manufacturers
	 */
	@Override
	public int countByGroupId(long groupId) {
		FinderPath finderPath = FINDER_PATH_COUNT_BY_GROUPID;

		Object[] finderArgs = new Object[] { groupId };

		Long count = (Long)finderCache.getResult(finderPath, finderArgs, this);

		if (count == null) {
			StringBundler query = new StringBundler(2);

			query.append(_SQL_COUNT_MANUFACTURER_WHERE);

			query.append(_FINDER_COLUMN_GROUPID_GROUPID_2);

			String sql = query.toString();

			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(sql);

				QueryPos qPos = QueryPos.getInstance(q);

				qPos.add(groupId);

				count = (Long)q.uniqueResult();

				finderCache.putResult(finderPath, finderArgs, count);
			}
			catch (Exception e) {
				finderCache.removeResult(finderPath, finderArgs);

				throw processException(e);
			}
			finally {
				closeSession(session);
			}
		}

		return count.intValue();
	}

	private static final String _FINDER_COLUMN_GROUPID_GROUPID_2 = "manufacturer.groupId = ?";

	public ManufacturerPersistenceImpl() {
		setModelClass(Manufacturer.class);
	}

	/**
	 * Caches the manufacturer in the entity cache if it is enabled.
	 *
	 * @param manufacturer the manufacturer
	 */
	@Override
	public void cacheResult(Manufacturer manufacturer) {
		entityCache.putResult(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
			ManufacturerImpl.class, manufacturer.getPrimaryKey(), manufacturer);

		manufacturer.resetOriginalValues();
	}

	/**
	 * Caches the manufacturers in the entity cache if it is enabled.
	 *
	 * @param manufacturers the manufacturers
	 */
	@Override
	public void cacheResult(List<Manufacturer> manufacturers) {
		for (Manufacturer manufacturer : manufacturers) {
			if (entityCache.getResult(
						ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
						ManufacturerImpl.class, manufacturer.getPrimaryKey()) == null) {
				cacheResult(manufacturer);
			}
			else {
				manufacturer.resetOriginalValues();
			}
		}
	}

	/**
	 * Clears the cache for all manufacturers.
	 *
	 * <p>
	 * The {@link EntityCache} and {@link FinderCache} are both cleared by this method.
	 * </p>
	 */
	@Override
	public void clearCache() {
		entityCache.clearCache(ManufacturerImpl.class);

		finderCache.clearCache(FINDER_CLASS_NAME_ENTITY);
		finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
		finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
	}

	/**
	 * Clears the cache for the manufacturer.
	 *
	 * <p>
	 * The {@link EntityCache} and {@link FinderCache} are both cleared by this method.
	 * </p>
	 */
	@Override
	public void clearCache(Manufacturer manufacturer) {
		entityCache.removeResult(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
			ManufacturerImpl.class, manufacturer.getPrimaryKey());

		finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
		finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
	}

	@Override
	public void clearCache(List<Manufacturer> manufacturers) {
		finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
		finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);

		for (Manufacturer manufacturer : manufacturers) {
			entityCache.removeResult(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
				ManufacturerImpl.class, manufacturer.getPrimaryKey());
		}
	}

	/**
	 * Creates a new manufacturer with the primary key. Does not add the manufacturer to the database.
	 *
	 * @param manufacturerId the primary key for the new manufacturer
	 * @return the new manufacturer
	 */
	@Override
	public Manufacturer create(long manufacturerId) {
		Manufacturer manufacturer = new ManufacturerImpl();

		manufacturer.setNew(true);
		manufacturer.setPrimaryKey(manufacturerId);

		manufacturer.setCompanyId(companyProvider.getCompanyId());

		return manufacturer;
	}

	/**
	 * Removes the manufacturer with the primary key from the database. Also notifies the appropriate model listeners.
	 *
	 * @param manufacturerId the primary key of the manufacturer
	 * @return the manufacturer that was removed
	 * @throws NoSuchManufacturerException if a manufacturer with the primary key could not be found
	 */
	@Override
	public Manufacturer remove(long manufacturerId)
		throws NoSuchManufacturerException {
		return remove((Serializable)manufacturerId);
	}

	/**
	 * Removes the manufacturer with the primary key from the database. Also notifies the appropriate model listeners.
	 *
	 * @param primaryKey the primary key of the manufacturer
	 * @return the manufacturer that was removed
	 * @throws NoSuchManufacturerException if a manufacturer with the primary key could not be found
	 */
	@Override
	public Manufacturer remove(Serializable primaryKey)
		throws NoSuchManufacturerException {
		Session session = null;

		try {
			session = openSession();

			Manufacturer manufacturer = (Manufacturer)session.get(ManufacturerImpl.class,
					primaryKey);

			if (manufacturer == null) {
				if (_log.isDebugEnabled()) {
					_log.debug(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
				}

				throw new NoSuchManufacturerException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
					primaryKey);
			}

			return remove(manufacturer);
		}
		catch (NoSuchManufacturerException nsee) {
			throw nsee;
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}
	}

	@Override
	protected Manufacturer removeImpl(Manufacturer manufacturer) {
		manufacturer = toUnwrappedModel(manufacturer);

		Session session = null;

		try {
			session = openSession();

			if (!session.contains(manufacturer)) {
				manufacturer = (Manufacturer)session.get(ManufacturerImpl.class,
						manufacturer.getPrimaryKeyObj());
			}

			if (manufacturer != null) {
				session.delete(manufacturer);
			}
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}

		if (manufacturer != null) {
			clearCache(manufacturer);
		}

		return manufacturer;
	}

	@Override
	public Manufacturer updateImpl(Manufacturer manufacturer) {
		manufacturer = toUnwrappedModel(manufacturer);

		boolean isNew = manufacturer.isNew();

		ManufacturerModelImpl manufacturerModelImpl = (ManufacturerModelImpl)manufacturer;

		ServiceContext serviceContext = ServiceContextThreadLocal.getServiceContext();

		Date now = new Date();

		if (isNew && (manufacturer.getCreateDate() == null)) {
			if (serviceContext == null) {
				manufacturer.setCreateDate(now);
			}
			else {
				manufacturer.setCreateDate(serviceContext.getCreateDate(now));
			}
		}

		if (!manufacturerModelImpl.hasSetModifiedDate()) {
			if (serviceContext == null) {
				manufacturer.setModifiedDate(now);
			}
			else {
				manufacturer.setModifiedDate(serviceContext.getModifiedDate(now));
			}
		}

		Session session = null;

		try {
			session = openSession();

			if (manufacturer.isNew()) {
				session.save(manufacturer);

				manufacturer.setNew(false);
			}
			else {
				manufacturer = (Manufacturer)session.merge(manufacturer);
			}
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}

		finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);

		if (isNew || !ManufacturerModelImpl.COLUMN_BITMASK_ENABLED) {
			finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
		}

		else {
			if ((manufacturerModelImpl.getColumnBitmask() &
					FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_RESOURCEBLOCKID.getColumnBitmask()) != 0) {
				Object[] args = new Object[] {
						manufacturerModelImpl.getOriginalResourceBlockId()
					};

				finderCache.removeResult(FINDER_PATH_COUNT_BY_RESOURCEBLOCKID,
					args);
				finderCache.removeResult(FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_RESOURCEBLOCKID,
					args);

				args = new Object[] { manufacturerModelImpl.getResourceBlockId() };

				finderCache.removeResult(FINDER_PATH_COUNT_BY_RESOURCEBLOCKID,
					args);
				finderCache.removeResult(FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_RESOURCEBLOCKID,
					args);
			}

			if ((manufacturerModelImpl.getColumnBitmask() &
					FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_GROUPID.getColumnBitmask()) != 0) {
				Object[] args = new Object[] {
						manufacturerModelImpl.getOriginalGroupId()
					};

				finderCache.removeResult(FINDER_PATH_COUNT_BY_GROUPID, args);
				finderCache.removeResult(FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_GROUPID,
					args);

				args = new Object[] { manufacturerModelImpl.getGroupId() };

				finderCache.removeResult(FINDER_PATH_COUNT_BY_GROUPID, args);
				finderCache.removeResult(FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_GROUPID,
					args);
			}
		}

		entityCache.putResult(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
			ManufacturerImpl.class, manufacturer.getPrimaryKey(), manufacturer,
			false);

		manufacturer.resetOriginalValues();

		return manufacturer;
	}

	protected Manufacturer toUnwrappedModel(Manufacturer manufacturer) {
		if (manufacturer instanceof ManufacturerImpl) {
			return manufacturer;
		}

		ManufacturerImpl manufacturerImpl = new ManufacturerImpl();

		manufacturerImpl.setNew(manufacturer.isNew());
		manufacturerImpl.setPrimaryKey(manufacturer.getPrimaryKey());

		manufacturerImpl.setManufacturerId(manufacturer.getManufacturerId());
		manufacturerImpl.setCompanyId(manufacturer.getCompanyId());
		manufacturerImpl.setGroupId(manufacturer.getGroupId());
		manufacturerImpl.setUserId(manufacturer.getUserId());
		manufacturerImpl.setName(manufacturer.getName());
		manufacturerImpl.setEmailAddress(manufacturer.getEmailAddress());
		manufacturerImpl.setWebsite(manufacturer.getWebsite());
		manufacturerImpl.setPhoneNumber(manufacturer.getPhoneNumber());
		manufacturerImpl.setCreateDate(manufacturer.getCreateDate());
		manufacturerImpl.setModifiedDate(manufacturer.getModifiedDate());
		manufacturerImpl.setUserName(manufacturer.getUserName());
		manufacturerImpl.setResourceBlockId(manufacturer.getResourceBlockId());
		manufacturerImpl.setStatus(manufacturer.getStatus());
		manufacturerImpl.setStatusByUserId(manufacturer.getStatusByUserId());
		manufacturerImpl.setStatusByUserName(manufacturer.getStatusByUserName());
		manufacturerImpl.setStatusDate(manufacturer.getStatusDate());

		return manufacturerImpl;
	}

	/**
	 * Returns the manufacturer with the primary key or throws a {@link com.liferay.portal.kernel.exception.NoSuchModelException} if it could not be found.
	 *
	 * @param primaryKey the primary key of the manufacturer
	 * @return the manufacturer
	 * @throws NoSuchManufacturerException if a manufacturer with the primary key could not be found
	 */
	@Override
	public Manufacturer findByPrimaryKey(Serializable primaryKey)
		throws NoSuchManufacturerException {
		Manufacturer manufacturer = fetchByPrimaryKey(primaryKey);

		if (manufacturer == null) {
			if (_log.isDebugEnabled()) {
				_log.debug(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
			}

			throw new NoSuchManufacturerException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
				primaryKey);
		}

		return manufacturer;
	}

	/**
	 * Returns the manufacturer with the primary key or throws a {@link NoSuchManufacturerException} if it could not be found.
	 *
	 * @param manufacturerId the primary key of the manufacturer
	 * @return the manufacturer
	 * @throws NoSuchManufacturerException if a manufacturer with the primary key could not be found
	 */
	@Override
	public Manufacturer findByPrimaryKey(long manufacturerId)
		throws NoSuchManufacturerException {
		return findByPrimaryKey((Serializable)manufacturerId);
	}

	/**
	 * Returns the manufacturer with the primary key or returns <code>null</code> if it could not be found.
	 *
	 * @param primaryKey the primary key of the manufacturer
	 * @return the manufacturer, or <code>null</code> if a manufacturer with the primary key could not be found
	 */
	@Override
	public Manufacturer fetchByPrimaryKey(Serializable primaryKey) {
		Serializable serializable = entityCache.getResult(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
				ManufacturerImpl.class, primaryKey);

		if (serializable == nullModel) {
			return null;
		}

		Manufacturer manufacturer = (Manufacturer)serializable;

		if (manufacturer == null) {
			Session session = null;

			try {
				session = openSession();

				manufacturer = (Manufacturer)session.get(ManufacturerImpl.class,
						primaryKey);

				if (manufacturer != null) {
					cacheResult(manufacturer);
				}
				else {
					entityCache.putResult(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
						ManufacturerImpl.class, primaryKey, nullModel);
				}
			}
			catch (Exception e) {
				entityCache.removeResult(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
					ManufacturerImpl.class, primaryKey);

				throw processException(e);
			}
			finally {
				closeSession(session);
			}
		}

		return manufacturer;
	}

	/**
	 * Returns the manufacturer with the primary key or returns <code>null</code> if it could not be found.
	 *
	 * @param manufacturerId the primary key of the manufacturer
	 * @return the manufacturer, or <code>null</code> if a manufacturer with the primary key could not be found
	 */
	@Override
	public Manufacturer fetchByPrimaryKey(long manufacturerId) {
		return fetchByPrimaryKey((Serializable)manufacturerId);
	}

	@Override
	public Map<Serializable, Manufacturer> fetchByPrimaryKeys(
		Set<Serializable> primaryKeys) {
		if (primaryKeys.isEmpty()) {
			return Collections.emptyMap();
		}

		Map<Serializable, Manufacturer> map = new HashMap<Serializable, Manufacturer>();

		if (primaryKeys.size() == 1) {
			Iterator<Serializable> iterator = primaryKeys.iterator();

			Serializable primaryKey = iterator.next();

			Manufacturer manufacturer = fetchByPrimaryKey(primaryKey);

			if (manufacturer != null) {
				map.put(primaryKey, manufacturer);
			}

			return map;
		}

		Set<Serializable> uncachedPrimaryKeys = null;

		for (Serializable primaryKey : primaryKeys) {
			Serializable serializable = entityCache.getResult(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
					ManufacturerImpl.class, primaryKey);

			if (serializable != nullModel) {
				if (serializable == null) {
					if (uncachedPrimaryKeys == null) {
						uncachedPrimaryKeys = new HashSet<Serializable>();
					}

					uncachedPrimaryKeys.add(primaryKey);
				}
				else {
					map.put(primaryKey, (Manufacturer)serializable);
				}
			}
		}

		if (uncachedPrimaryKeys == null) {
			return map;
		}

		StringBundler query = new StringBundler((uncachedPrimaryKeys.size() * 2) +
				1);

		query.append(_SQL_SELECT_MANUFACTURER_WHERE_PKS_IN);

		for (Serializable primaryKey : uncachedPrimaryKeys) {
			query.append(String.valueOf(primaryKey));

			query.append(StringPool.COMMA);
		}

		query.setIndex(query.index() - 1);

		query.append(StringPool.CLOSE_PARENTHESIS);

		String sql = query.toString();

		Session session = null;

		try {
			session = openSession();

			Query q = session.createQuery(sql);

			for (Manufacturer manufacturer : (List<Manufacturer>)q.list()) {
				map.put(manufacturer.getPrimaryKeyObj(), manufacturer);

				cacheResult(manufacturer);

				uncachedPrimaryKeys.remove(manufacturer.getPrimaryKeyObj());
			}

			for (Serializable primaryKey : uncachedPrimaryKeys) {
				entityCache.putResult(ManufacturerModelImpl.ENTITY_CACHE_ENABLED,
					ManufacturerImpl.class, primaryKey, nullModel);
			}
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}

		return map;
	}

	/**
	 * Returns all the manufacturers.
	 *
	 * @return the manufacturers
	 */
	@Override
	public List<Manufacturer> findAll() {
		return findAll(QueryUtil.ALL_POS, QueryUtil.ALL_POS, null);
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
	@Override
	public List<Manufacturer> findAll(int start, int end) {
		return findAll(start, end, null);
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
	@Override
	public List<Manufacturer> findAll(int start, int end,
		OrderByComparator<Manufacturer> orderByComparator) {
		return findAll(start, end, orderByComparator, true);
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
	@Override
	public List<Manufacturer> findAll(int start, int end,
		OrderByComparator<Manufacturer> orderByComparator,
		boolean retrieveFromCache) {
		boolean pagination = true;
		FinderPath finderPath = null;
		Object[] finderArgs = null;

		if ((start == QueryUtil.ALL_POS) && (end == QueryUtil.ALL_POS) &&
				(orderByComparator == null)) {
			pagination = false;
			finderPath = FINDER_PATH_WITHOUT_PAGINATION_FIND_ALL;
			finderArgs = FINDER_ARGS_EMPTY;
		}
		else {
			finderPath = FINDER_PATH_WITH_PAGINATION_FIND_ALL;
			finderArgs = new Object[] { start, end, orderByComparator };
		}

		List<Manufacturer> list = null;

		if (retrieveFromCache) {
			list = (List<Manufacturer>)finderCache.getResult(finderPath,
					finderArgs, this);
		}

		if (list == null) {
			StringBundler query = null;
			String sql = null;

			if (orderByComparator != null) {
				query = new StringBundler(2 +
						(orderByComparator.getOrderByFields().length * 2));

				query.append(_SQL_SELECT_MANUFACTURER);

				appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
					orderByComparator);

				sql = query.toString();
			}
			else {
				sql = _SQL_SELECT_MANUFACTURER;

				if (pagination) {
					sql = sql.concat(ManufacturerModelImpl.ORDER_BY_JPQL);
				}
			}

			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(sql);

				if (!pagination) {
					list = (List<Manufacturer>)QueryUtil.list(q, getDialect(),
							start, end, false);

					Collections.sort(list);

					list = Collections.unmodifiableList(list);
				}
				else {
					list = (List<Manufacturer>)QueryUtil.list(q, getDialect(),
							start, end);
				}

				cacheResult(list);

				finderCache.putResult(finderPath, finderArgs, list);
			}
			catch (Exception e) {
				finderCache.removeResult(finderPath, finderArgs);

				throw processException(e);
			}
			finally {
				closeSession(session);
			}
		}

		return list;
	}

	/**
	 * Removes all the manufacturers from the database.
	 *
	 */
	@Override
	public void removeAll() {
		for (Manufacturer manufacturer : findAll()) {
			remove(manufacturer);
		}
	}

	/**
	 * Returns the number of manufacturers.
	 *
	 * @return the number of manufacturers
	 */
	@Override
	public int countAll() {
		Long count = (Long)finderCache.getResult(FINDER_PATH_COUNT_ALL,
				FINDER_ARGS_EMPTY, this);

		if (count == null) {
			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(_SQL_COUNT_MANUFACTURER);

				count = (Long)q.uniqueResult();

				finderCache.putResult(FINDER_PATH_COUNT_ALL, FINDER_ARGS_EMPTY,
					count);
			}
			catch (Exception e) {
				finderCache.removeResult(FINDER_PATH_COUNT_ALL,
					FINDER_ARGS_EMPTY);

				throw processException(e);
			}
			finally {
				closeSession(session);
			}
		}

		return count.intValue();
	}

	@Override
	protected Map<String, Integer> getTableColumnsMap() {
		return ManufacturerModelImpl.TABLE_COLUMNS_MAP;
	}

	/**
	 * Initializes the manufacturer persistence.
	 */
	public void afterPropertiesSet() {
	}

	public void destroy() {
		entityCache.removeCache(ManufacturerImpl.class.getName());
		finderCache.removeCache(FINDER_CLASS_NAME_ENTITY);
		finderCache.removeCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
		finderCache.removeCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
	}

	@ServiceReference(type = CompanyProviderWrapper.class)
	protected CompanyProvider companyProvider;
	@ServiceReference(type = EntityCache.class)
	protected EntityCache entityCache;
	@ServiceReference(type = FinderCache.class)
	protected FinderCache finderCache;
	private static final String _SQL_SELECT_MANUFACTURER = "SELECT manufacturer FROM Manufacturer manufacturer";
	private static final String _SQL_SELECT_MANUFACTURER_WHERE_PKS_IN = "SELECT manufacturer FROM Manufacturer manufacturer WHERE manufacturerId IN (";
	private static final String _SQL_SELECT_MANUFACTURER_WHERE = "SELECT manufacturer FROM Manufacturer manufacturer WHERE ";
	private static final String _SQL_COUNT_MANUFACTURER = "SELECT COUNT(manufacturer) FROM Manufacturer manufacturer";
	private static final String _SQL_COUNT_MANUFACTURER_WHERE = "SELECT COUNT(manufacturer) FROM Manufacturer manufacturer WHERE ";
	private static final String _ORDER_BY_ENTITY_ALIAS = "manufacturer.";
	private static final String _NO_SUCH_ENTITY_WITH_PRIMARY_KEY = "No Manufacturer exists with the primary key ";
	private static final String _NO_SUCH_ENTITY_WITH_KEY = "No Manufacturer exists with the key {";
	private static final Log _log = LogFactoryUtil.getLog(ManufacturerPersistenceImpl.class);
}