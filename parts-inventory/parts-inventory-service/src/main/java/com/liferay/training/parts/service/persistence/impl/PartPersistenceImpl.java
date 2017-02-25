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

import com.liferay.training.parts.exception.NoSuchPartException;
import com.liferay.training.parts.model.Part;
import com.liferay.training.parts.model.impl.PartImpl;
import com.liferay.training.parts.model.impl.PartModelImpl;
import com.liferay.training.parts.service.persistence.PartPersistence;

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
 * The persistence implementation for the part service.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Samir
 * @see PartPersistence
 * @see com.liferay.training.parts.service.persistence.PartUtil
 * @generated
 */
@ProviderType
public class PartPersistenceImpl extends BasePersistenceImpl<Part>
	implements PartPersistence {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify or reference this class directly. Always use {@link PartUtil} to access the part persistence. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this class.
	 */
	public static final String FINDER_CLASS_NAME_ENTITY = PartImpl.class.getName();
	public static final String FINDER_CLASS_NAME_LIST_WITH_PAGINATION = FINDER_CLASS_NAME_ENTITY +
		".List1";
	public static final String FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION = FINDER_CLASS_NAME_ENTITY +
		".List2";
	public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_ALL = new FinderPath(PartModelImpl.ENTITY_CACHE_ENABLED,
			PartModelImpl.FINDER_CACHE_ENABLED, PartImpl.class,
			FINDER_CLASS_NAME_LIST_WITH_PAGINATION, "findAll", new String[0]);
	public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_ALL = new FinderPath(PartModelImpl.ENTITY_CACHE_ENABLED,
			PartModelImpl.FINDER_CACHE_ENABLED, PartImpl.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findAll", new String[0]);
	public static final FinderPath FINDER_PATH_COUNT_ALL = new FinderPath(PartModelImpl.ENTITY_CACHE_ENABLED,
			PartModelImpl.FINDER_CACHE_ENABLED, Long.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countAll", new String[0]);
	public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_BY_RESOURCEBLOCKID =
		new FinderPath(PartModelImpl.ENTITY_CACHE_ENABLED,
			PartModelImpl.FINDER_CACHE_ENABLED, PartImpl.class,
			FINDER_CLASS_NAME_LIST_WITH_PAGINATION, "findByResourceBlockId",
			new String[] {
				Long.class.getName(),
				
			Integer.class.getName(), Integer.class.getName(),
				OrderByComparator.class.getName()
			});
	public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_RESOURCEBLOCKID =
		new FinderPath(PartModelImpl.ENTITY_CACHE_ENABLED,
			PartModelImpl.FINDER_CACHE_ENABLED, PartImpl.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findByResourceBlockId",
			new String[] { Long.class.getName() },
			PartModelImpl.RESOURCEBLOCKID_COLUMN_BITMASK |
			PartModelImpl.NAME_COLUMN_BITMASK);
	public static final FinderPath FINDER_PATH_COUNT_BY_RESOURCEBLOCKID = new FinderPath(PartModelImpl.ENTITY_CACHE_ENABLED,
			PartModelImpl.FINDER_CACHE_ENABLED, Long.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION,
			"countByResourceBlockId", new String[] { Long.class.getName() });

	/**
	 * Returns all the parts where resourceBlockId = &#63;.
	 *
	 * @param resourceBlockId the resource block ID
	 * @return the matching parts
	 */
	@Override
	public List<Part> findByResourceBlockId(long resourceBlockId) {
		return findByResourceBlockId(resourceBlockId, QueryUtil.ALL_POS,
			QueryUtil.ALL_POS, null);
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
	@Override
	public List<Part> findByResourceBlockId(long resourceBlockId, int start,
		int end) {
		return findByResourceBlockId(resourceBlockId, start, end, null);
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
	@Override
	public List<Part> findByResourceBlockId(long resourceBlockId, int start,
		int end, OrderByComparator<Part> orderByComparator) {
		return findByResourceBlockId(resourceBlockId, start, end,
			orderByComparator, true);
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
	@Override
	public List<Part> findByResourceBlockId(long resourceBlockId, int start,
		int end, OrderByComparator<Part> orderByComparator,
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

		List<Part> list = null;

		if (retrieveFromCache) {
			list = (List<Part>)finderCache.getResult(finderPath, finderArgs,
					this);

			if ((list != null) && !list.isEmpty()) {
				for (Part part : list) {
					if ((resourceBlockId != part.getResourceBlockId())) {
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

			query.append(_SQL_SELECT_PART_WHERE);

			query.append(_FINDER_COLUMN_RESOURCEBLOCKID_RESOURCEBLOCKID_2);

			if (orderByComparator != null) {
				appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
					orderByComparator);
			}
			else
			 if (pagination) {
				query.append(PartModelImpl.ORDER_BY_JPQL);
			}

			String sql = query.toString();

			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(sql);

				QueryPos qPos = QueryPos.getInstance(q);

				qPos.add(resourceBlockId);

				if (!pagination) {
					list = (List<Part>)QueryUtil.list(q, getDialect(), start,
							end, false);

					Collections.sort(list);

					list = Collections.unmodifiableList(list);
				}
				else {
					list = (List<Part>)QueryUtil.list(q, getDialect(), start,
							end);
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
	 * Returns the first part in the ordered set where resourceBlockId = &#63;.
	 *
	 * @param resourceBlockId the resource block ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the first matching part
	 * @throws NoSuchPartException if a matching part could not be found
	 */
	@Override
	public Part findByResourceBlockId_First(long resourceBlockId,
		OrderByComparator<Part> orderByComparator) throws NoSuchPartException {
		Part part = fetchByResourceBlockId_First(resourceBlockId,
				orderByComparator);

		if (part != null) {
			return part;
		}

		StringBundler msg = new StringBundler(4);

		msg.append(_NO_SUCH_ENTITY_WITH_KEY);

		msg.append("resourceBlockId=");
		msg.append(resourceBlockId);

		msg.append(StringPool.CLOSE_CURLY_BRACE);

		throw new NoSuchPartException(msg.toString());
	}

	/**
	 * Returns the first part in the ordered set where resourceBlockId = &#63;.
	 *
	 * @param resourceBlockId the resource block ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the first matching part, or <code>null</code> if a matching part could not be found
	 */
	@Override
	public Part fetchByResourceBlockId_First(long resourceBlockId,
		OrderByComparator<Part> orderByComparator) {
		List<Part> list = findByResourceBlockId(resourceBlockId, 0, 1,
				orderByComparator);

		if (!list.isEmpty()) {
			return list.get(0);
		}

		return null;
	}

	/**
	 * Returns the last part in the ordered set where resourceBlockId = &#63;.
	 *
	 * @param resourceBlockId the resource block ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the last matching part
	 * @throws NoSuchPartException if a matching part could not be found
	 */
	@Override
	public Part findByResourceBlockId_Last(long resourceBlockId,
		OrderByComparator<Part> orderByComparator) throws NoSuchPartException {
		Part part = fetchByResourceBlockId_Last(resourceBlockId,
				orderByComparator);

		if (part != null) {
			return part;
		}

		StringBundler msg = new StringBundler(4);

		msg.append(_NO_SUCH_ENTITY_WITH_KEY);

		msg.append("resourceBlockId=");
		msg.append(resourceBlockId);

		msg.append(StringPool.CLOSE_CURLY_BRACE);

		throw new NoSuchPartException(msg.toString());
	}

	/**
	 * Returns the last part in the ordered set where resourceBlockId = &#63;.
	 *
	 * @param resourceBlockId the resource block ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the last matching part, or <code>null</code> if a matching part could not be found
	 */
	@Override
	public Part fetchByResourceBlockId_Last(long resourceBlockId,
		OrderByComparator<Part> orderByComparator) {
		int count = countByResourceBlockId(resourceBlockId);

		if (count == 0) {
			return null;
		}

		List<Part> list = findByResourceBlockId(resourceBlockId, count - 1,
				count, orderByComparator);

		if (!list.isEmpty()) {
			return list.get(0);
		}

		return null;
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
	@Override
	public Part[] findByResourceBlockId_PrevAndNext(long partId,
		long resourceBlockId, OrderByComparator<Part> orderByComparator)
		throws NoSuchPartException {
		Part part = findByPrimaryKey(partId);

		Session session = null;

		try {
			session = openSession();

			Part[] array = new PartImpl[3];

			array[0] = getByResourceBlockId_PrevAndNext(session, part,
					resourceBlockId, orderByComparator, true);

			array[1] = part;

			array[2] = getByResourceBlockId_PrevAndNext(session, part,
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

	protected Part getByResourceBlockId_PrevAndNext(Session session, Part part,
		long resourceBlockId, OrderByComparator<Part> orderByComparator,
		boolean previous) {
		StringBundler query = null;

		if (orderByComparator != null) {
			query = new StringBundler(4 +
					(orderByComparator.getOrderByConditionFields().length * 3) +
					(orderByComparator.getOrderByFields().length * 3));
		}
		else {
			query = new StringBundler(3);
		}

		query.append(_SQL_SELECT_PART_WHERE);

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
			query.append(PartModelImpl.ORDER_BY_JPQL);
		}

		String sql = query.toString();

		Query q = session.createQuery(sql);

		q.setFirstResult(0);
		q.setMaxResults(2);

		QueryPos qPos = QueryPos.getInstance(q);

		qPos.add(resourceBlockId);

		if (orderByComparator != null) {
			Object[] values = orderByComparator.getOrderByConditionValues(part);

			for (Object value : values) {
				qPos.add(value);
			}
		}

		List<Part> list = q.list();

		if (list.size() == 2) {
			return list.get(1);
		}
		else {
			return null;
		}
	}

	/**
	 * Removes all the parts where resourceBlockId = &#63; from the database.
	 *
	 * @param resourceBlockId the resource block ID
	 */
	@Override
	public void removeByResourceBlockId(long resourceBlockId) {
		for (Part part : findByResourceBlockId(resourceBlockId,
				QueryUtil.ALL_POS, QueryUtil.ALL_POS, null)) {
			remove(part);
		}
	}

	/**
	 * Returns the number of parts where resourceBlockId = &#63;.
	 *
	 * @param resourceBlockId the resource block ID
	 * @return the number of matching parts
	 */
	@Override
	public int countByResourceBlockId(long resourceBlockId) {
		FinderPath finderPath = FINDER_PATH_COUNT_BY_RESOURCEBLOCKID;

		Object[] finderArgs = new Object[] { resourceBlockId };

		Long count = (Long)finderCache.getResult(finderPath, finderArgs, this);

		if (count == null) {
			StringBundler query = new StringBundler(2);

			query.append(_SQL_COUNT_PART_WHERE);

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
		"part.resourceBlockId = ?";
	public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_BY_GROUPID = new FinderPath(PartModelImpl.ENTITY_CACHE_ENABLED,
			PartModelImpl.FINDER_CACHE_ENABLED, PartImpl.class,
			FINDER_CLASS_NAME_LIST_WITH_PAGINATION, "findByGroupId",
			new String[] {
				Long.class.getName(),
				
			Integer.class.getName(), Integer.class.getName(),
				OrderByComparator.class.getName()
			});
	public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_GROUPID =
		new FinderPath(PartModelImpl.ENTITY_CACHE_ENABLED,
			PartModelImpl.FINDER_CACHE_ENABLED, PartImpl.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findByGroupId",
			new String[] { Long.class.getName() },
			PartModelImpl.GROUPID_COLUMN_BITMASK |
			PartModelImpl.NAME_COLUMN_BITMASK);
	public static final FinderPath FINDER_PATH_COUNT_BY_GROUPID = new FinderPath(PartModelImpl.ENTITY_CACHE_ENABLED,
			PartModelImpl.FINDER_CACHE_ENABLED, Long.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countByGroupId",
			new String[] { Long.class.getName() });

	/**
	 * Returns all the parts where groupId = &#63;.
	 *
	 * @param groupId the group ID
	 * @return the matching parts
	 */
	@Override
	public List<Part> findByGroupId(long groupId) {
		return findByGroupId(groupId, QueryUtil.ALL_POS, QueryUtil.ALL_POS, null);
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
	@Override
	public List<Part> findByGroupId(long groupId, int start, int end) {
		return findByGroupId(groupId, start, end, null);
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
	@Override
	public List<Part> findByGroupId(long groupId, int start, int end,
		OrderByComparator<Part> orderByComparator) {
		return findByGroupId(groupId, start, end, orderByComparator, true);
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
	@Override
	public List<Part> findByGroupId(long groupId, int start, int end,
		OrderByComparator<Part> orderByComparator, boolean retrieveFromCache) {
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

		List<Part> list = null;

		if (retrieveFromCache) {
			list = (List<Part>)finderCache.getResult(finderPath, finderArgs,
					this);

			if ((list != null) && !list.isEmpty()) {
				for (Part part : list) {
					if ((groupId != part.getGroupId())) {
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

			query.append(_SQL_SELECT_PART_WHERE);

			query.append(_FINDER_COLUMN_GROUPID_GROUPID_2);

			if (orderByComparator != null) {
				appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
					orderByComparator);
			}
			else
			 if (pagination) {
				query.append(PartModelImpl.ORDER_BY_JPQL);
			}

			String sql = query.toString();

			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(sql);

				QueryPos qPos = QueryPos.getInstance(q);

				qPos.add(groupId);

				if (!pagination) {
					list = (List<Part>)QueryUtil.list(q, getDialect(), start,
							end, false);

					Collections.sort(list);

					list = Collections.unmodifiableList(list);
				}
				else {
					list = (List<Part>)QueryUtil.list(q, getDialect(), start,
							end);
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
	 * Returns the first part in the ordered set where groupId = &#63;.
	 *
	 * @param groupId the group ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the first matching part
	 * @throws NoSuchPartException if a matching part could not be found
	 */
	@Override
	public Part findByGroupId_First(long groupId,
		OrderByComparator<Part> orderByComparator) throws NoSuchPartException {
		Part part = fetchByGroupId_First(groupId, orderByComparator);

		if (part != null) {
			return part;
		}

		StringBundler msg = new StringBundler(4);

		msg.append(_NO_SUCH_ENTITY_WITH_KEY);

		msg.append("groupId=");
		msg.append(groupId);

		msg.append(StringPool.CLOSE_CURLY_BRACE);

		throw new NoSuchPartException(msg.toString());
	}

	/**
	 * Returns the first part in the ordered set where groupId = &#63;.
	 *
	 * @param groupId the group ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the first matching part, or <code>null</code> if a matching part could not be found
	 */
	@Override
	public Part fetchByGroupId_First(long groupId,
		OrderByComparator<Part> orderByComparator) {
		List<Part> list = findByGroupId(groupId, 0, 1, orderByComparator);

		if (!list.isEmpty()) {
			return list.get(0);
		}

		return null;
	}

	/**
	 * Returns the last part in the ordered set where groupId = &#63;.
	 *
	 * @param groupId the group ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the last matching part
	 * @throws NoSuchPartException if a matching part could not be found
	 */
	@Override
	public Part findByGroupId_Last(long groupId,
		OrderByComparator<Part> orderByComparator) throws NoSuchPartException {
		Part part = fetchByGroupId_Last(groupId, orderByComparator);

		if (part != null) {
			return part;
		}

		StringBundler msg = new StringBundler(4);

		msg.append(_NO_SUCH_ENTITY_WITH_KEY);

		msg.append("groupId=");
		msg.append(groupId);

		msg.append(StringPool.CLOSE_CURLY_BRACE);

		throw new NoSuchPartException(msg.toString());
	}

	/**
	 * Returns the last part in the ordered set where groupId = &#63;.
	 *
	 * @param groupId the group ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the last matching part, or <code>null</code> if a matching part could not be found
	 */
	@Override
	public Part fetchByGroupId_Last(long groupId,
		OrderByComparator<Part> orderByComparator) {
		int count = countByGroupId(groupId);

		if (count == 0) {
			return null;
		}

		List<Part> list = findByGroupId(groupId, count - 1, count,
				orderByComparator);

		if (!list.isEmpty()) {
			return list.get(0);
		}

		return null;
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
	@Override
	public Part[] findByGroupId_PrevAndNext(long partId, long groupId,
		OrderByComparator<Part> orderByComparator) throws NoSuchPartException {
		Part part = findByPrimaryKey(partId);

		Session session = null;

		try {
			session = openSession();

			Part[] array = new PartImpl[3];

			array[0] = getByGroupId_PrevAndNext(session, part, groupId,
					orderByComparator, true);

			array[1] = part;

			array[2] = getByGroupId_PrevAndNext(session, part, groupId,
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

	protected Part getByGroupId_PrevAndNext(Session session, Part part,
		long groupId, OrderByComparator<Part> orderByComparator,
		boolean previous) {
		StringBundler query = null;

		if (orderByComparator != null) {
			query = new StringBundler(4 +
					(orderByComparator.getOrderByConditionFields().length * 3) +
					(orderByComparator.getOrderByFields().length * 3));
		}
		else {
			query = new StringBundler(3);
		}

		query.append(_SQL_SELECT_PART_WHERE);

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
			query.append(PartModelImpl.ORDER_BY_JPQL);
		}

		String sql = query.toString();

		Query q = session.createQuery(sql);

		q.setFirstResult(0);
		q.setMaxResults(2);

		QueryPos qPos = QueryPos.getInstance(q);

		qPos.add(groupId);

		if (orderByComparator != null) {
			Object[] values = orderByComparator.getOrderByConditionValues(part);

			for (Object value : values) {
				qPos.add(value);
			}
		}

		List<Part> list = q.list();

		if (list.size() == 2) {
			return list.get(1);
		}
		else {
			return null;
		}
	}

	/**
	 * Removes all the parts where groupId = &#63; from the database.
	 *
	 * @param groupId the group ID
	 */
	@Override
	public void removeByGroupId(long groupId) {
		for (Part part : findByGroupId(groupId, QueryUtil.ALL_POS,
				QueryUtil.ALL_POS, null)) {
			remove(part);
		}
	}

	/**
	 * Returns the number of parts where groupId = &#63;.
	 *
	 * @param groupId the group ID
	 * @return the number of matching parts
	 */
	@Override
	public int countByGroupId(long groupId) {
		FinderPath finderPath = FINDER_PATH_COUNT_BY_GROUPID;

		Object[] finderArgs = new Object[] { groupId };

		Long count = (Long)finderCache.getResult(finderPath, finderArgs, this);

		if (count == null) {
			StringBundler query = new StringBundler(2);

			query.append(_SQL_COUNT_PART_WHERE);

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

	private static final String _FINDER_COLUMN_GROUPID_GROUPID_2 = "part.groupId = ?";
	public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_BY_MANUFACTURER =
		new FinderPath(PartModelImpl.ENTITY_CACHE_ENABLED,
			PartModelImpl.FINDER_CACHE_ENABLED, PartImpl.class,
			FINDER_CLASS_NAME_LIST_WITH_PAGINATION, "findByManufacturer",
			new String[] {
				Long.class.getName(), Long.class.getName(),
				
			Integer.class.getName(), Integer.class.getName(),
				OrderByComparator.class.getName()
			});
	public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_MANUFACTURER =
		new FinderPath(PartModelImpl.ENTITY_CACHE_ENABLED,
			PartModelImpl.FINDER_CACHE_ENABLED, PartImpl.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findByManufacturer",
			new String[] { Long.class.getName(), Long.class.getName() },
			PartModelImpl.MANUFACTURERID_COLUMN_BITMASK |
			PartModelImpl.GROUPID_COLUMN_BITMASK |
			PartModelImpl.NAME_COLUMN_BITMASK);
	public static final FinderPath FINDER_PATH_COUNT_BY_MANUFACTURER = new FinderPath(PartModelImpl.ENTITY_CACHE_ENABLED,
			PartModelImpl.FINDER_CACHE_ENABLED, Long.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countByManufacturer",
			new String[] { Long.class.getName(), Long.class.getName() });

	/**
	 * Returns all the parts where manufacturerId = &#63; and groupId = &#63;.
	 *
	 * @param manufacturerId the manufacturer ID
	 * @param groupId the group ID
	 * @return the matching parts
	 */
	@Override
	public List<Part> findByManufacturer(long manufacturerId, long groupId) {
		return findByManufacturer(manufacturerId, groupId, QueryUtil.ALL_POS,
			QueryUtil.ALL_POS, null);
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
	@Override
	public List<Part> findByManufacturer(long manufacturerId, long groupId,
		int start, int end) {
		return findByManufacturer(manufacturerId, groupId, start, end, null);
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
	@Override
	public List<Part> findByManufacturer(long manufacturerId, long groupId,
		int start, int end, OrderByComparator<Part> orderByComparator) {
		return findByManufacturer(manufacturerId, groupId, start, end,
			orderByComparator, true);
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
	@Override
	public List<Part> findByManufacturer(long manufacturerId, long groupId,
		int start, int end, OrderByComparator<Part> orderByComparator,
		boolean retrieveFromCache) {
		boolean pagination = true;
		FinderPath finderPath = null;
		Object[] finderArgs = null;

		if ((start == QueryUtil.ALL_POS) && (end == QueryUtil.ALL_POS) &&
				(orderByComparator == null)) {
			pagination = false;
			finderPath = FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_MANUFACTURER;
			finderArgs = new Object[] { manufacturerId, groupId };
		}
		else {
			finderPath = FINDER_PATH_WITH_PAGINATION_FIND_BY_MANUFACTURER;
			finderArgs = new Object[] {
					manufacturerId, groupId,
					
					start, end, orderByComparator
				};
		}

		List<Part> list = null;

		if (retrieveFromCache) {
			list = (List<Part>)finderCache.getResult(finderPath, finderArgs,
					this);

			if ((list != null) && !list.isEmpty()) {
				for (Part part : list) {
					if ((manufacturerId != part.getManufacturerId()) ||
							(groupId != part.getGroupId())) {
						list = null;

						break;
					}
				}
			}
		}

		if (list == null) {
			StringBundler query = null;

			if (orderByComparator != null) {
				query = new StringBundler(4 +
						(orderByComparator.getOrderByFields().length * 2));
			}
			else {
				query = new StringBundler(4);
			}

			query.append(_SQL_SELECT_PART_WHERE);

			query.append(_FINDER_COLUMN_MANUFACTURER_MANUFACTURERID_2);

			query.append(_FINDER_COLUMN_MANUFACTURER_GROUPID_2);

			if (orderByComparator != null) {
				appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
					orderByComparator);
			}
			else
			 if (pagination) {
				query.append(PartModelImpl.ORDER_BY_JPQL);
			}

			String sql = query.toString();

			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(sql);

				QueryPos qPos = QueryPos.getInstance(q);

				qPos.add(manufacturerId);

				qPos.add(groupId);

				if (!pagination) {
					list = (List<Part>)QueryUtil.list(q, getDialect(), start,
							end, false);

					Collections.sort(list);

					list = Collections.unmodifiableList(list);
				}
				else {
					list = (List<Part>)QueryUtil.list(q, getDialect(), start,
							end);
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
	 * Returns the first part in the ordered set where manufacturerId = &#63; and groupId = &#63;.
	 *
	 * @param manufacturerId the manufacturer ID
	 * @param groupId the group ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the first matching part
	 * @throws NoSuchPartException if a matching part could not be found
	 */
	@Override
	public Part findByManufacturer_First(long manufacturerId, long groupId,
		OrderByComparator<Part> orderByComparator) throws NoSuchPartException {
		Part part = fetchByManufacturer_First(manufacturerId, groupId,
				orderByComparator);

		if (part != null) {
			return part;
		}

		StringBundler msg = new StringBundler(6);

		msg.append(_NO_SUCH_ENTITY_WITH_KEY);

		msg.append("manufacturerId=");
		msg.append(manufacturerId);

		msg.append(", groupId=");
		msg.append(groupId);

		msg.append(StringPool.CLOSE_CURLY_BRACE);

		throw new NoSuchPartException(msg.toString());
	}

	/**
	 * Returns the first part in the ordered set where manufacturerId = &#63; and groupId = &#63;.
	 *
	 * @param manufacturerId the manufacturer ID
	 * @param groupId the group ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the first matching part, or <code>null</code> if a matching part could not be found
	 */
	@Override
	public Part fetchByManufacturer_First(long manufacturerId, long groupId,
		OrderByComparator<Part> orderByComparator) {
		List<Part> list = findByManufacturer(manufacturerId, groupId, 0, 1,
				orderByComparator);

		if (!list.isEmpty()) {
			return list.get(0);
		}

		return null;
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
	@Override
	public Part findByManufacturer_Last(long manufacturerId, long groupId,
		OrderByComparator<Part> orderByComparator) throws NoSuchPartException {
		Part part = fetchByManufacturer_Last(manufacturerId, groupId,
				orderByComparator);

		if (part != null) {
			return part;
		}

		StringBundler msg = new StringBundler(6);

		msg.append(_NO_SUCH_ENTITY_WITH_KEY);

		msg.append("manufacturerId=");
		msg.append(manufacturerId);

		msg.append(", groupId=");
		msg.append(groupId);

		msg.append(StringPool.CLOSE_CURLY_BRACE);

		throw new NoSuchPartException(msg.toString());
	}

	/**
	 * Returns the last part in the ordered set where manufacturerId = &#63; and groupId = &#63;.
	 *
	 * @param manufacturerId the manufacturer ID
	 * @param groupId the group ID
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the last matching part, or <code>null</code> if a matching part could not be found
	 */
	@Override
	public Part fetchByManufacturer_Last(long manufacturerId, long groupId,
		OrderByComparator<Part> orderByComparator) {
		int count = countByManufacturer(manufacturerId, groupId);

		if (count == 0) {
			return null;
		}

		List<Part> list = findByManufacturer(manufacturerId, groupId,
				count - 1, count, orderByComparator);

		if (!list.isEmpty()) {
			return list.get(0);
		}

		return null;
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
	@Override
	public Part[] findByManufacturer_PrevAndNext(long partId,
		long manufacturerId, long groupId,
		OrderByComparator<Part> orderByComparator) throws NoSuchPartException {
		Part part = findByPrimaryKey(partId);

		Session session = null;

		try {
			session = openSession();

			Part[] array = new PartImpl[3];

			array[0] = getByManufacturer_PrevAndNext(session, part,
					manufacturerId, groupId, orderByComparator, true);

			array[1] = part;

			array[2] = getByManufacturer_PrevAndNext(session, part,
					manufacturerId, groupId, orderByComparator, false);

			return array;
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}
	}

	protected Part getByManufacturer_PrevAndNext(Session session, Part part,
		long manufacturerId, long groupId,
		OrderByComparator<Part> orderByComparator, boolean previous) {
		StringBundler query = null;

		if (orderByComparator != null) {
			query = new StringBundler(5 +
					(orderByComparator.getOrderByConditionFields().length * 3) +
					(orderByComparator.getOrderByFields().length * 3));
		}
		else {
			query = new StringBundler(4);
		}

		query.append(_SQL_SELECT_PART_WHERE);

		query.append(_FINDER_COLUMN_MANUFACTURER_MANUFACTURERID_2);

		query.append(_FINDER_COLUMN_MANUFACTURER_GROUPID_2);

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
			query.append(PartModelImpl.ORDER_BY_JPQL);
		}

		String sql = query.toString();

		Query q = session.createQuery(sql);

		q.setFirstResult(0);
		q.setMaxResults(2);

		QueryPos qPos = QueryPos.getInstance(q);

		qPos.add(manufacturerId);

		qPos.add(groupId);

		if (orderByComparator != null) {
			Object[] values = orderByComparator.getOrderByConditionValues(part);

			for (Object value : values) {
				qPos.add(value);
			}
		}

		List<Part> list = q.list();

		if (list.size() == 2) {
			return list.get(1);
		}
		else {
			return null;
		}
	}

	/**
	 * Removes all the parts where manufacturerId = &#63; and groupId = &#63; from the database.
	 *
	 * @param manufacturerId the manufacturer ID
	 * @param groupId the group ID
	 */
	@Override
	public void removeByManufacturer(long manufacturerId, long groupId) {
		for (Part part : findByManufacturer(manufacturerId, groupId,
				QueryUtil.ALL_POS, QueryUtil.ALL_POS, null)) {
			remove(part);
		}
	}

	/**
	 * Returns the number of parts where manufacturerId = &#63; and groupId = &#63;.
	 *
	 * @param manufacturerId the manufacturer ID
	 * @param groupId the group ID
	 * @return the number of matching parts
	 */
	@Override
	public int countByManufacturer(long manufacturerId, long groupId) {
		FinderPath finderPath = FINDER_PATH_COUNT_BY_MANUFACTURER;

		Object[] finderArgs = new Object[] { manufacturerId, groupId };

		Long count = (Long)finderCache.getResult(finderPath, finderArgs, this);

		if (count == null) {
			StringBundler query = new StringBundler(3);

			query.append(_SQL_COUNT_PART_WHERE);

			query.append(_FINDER_COLUMN_MANUFACTURER_MANUFACTURERID_2);

			query.append(_FINDER_COLUMN_MANUFACTURER_GROUPID_2);

			String sql = query.toString();

			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(sql);

				QueryPos qPos = QueryPos.getInstance(q);

				qPos.add(manufacturerId);

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

	private static final String _FINDER_COLUMN_MANUFACTURER_MANUFACTURERID_2 = "part.manufacturerId = ? AND ";
	private static final String _FINDER_COLUMN_MANUFACTURER_GROUPID_2 = "part.groupId = ?";

	public PartPersistenceImpl() {
		setModelClass(Part.class);
	}

	/**
	 * Caches the part in the entity cache if it is enabled.
	 *
	 * @param part the part
	 */
	@Override
	public void cacheResult(Part part) {
		entityCache.putResult(PartModelImpl.ENTITY_CACHE_ENABLED,
			PartImpl.class, part.getPrimaryKey(), part);

		part.resetOriginalValues();
	}

	/**
	 * Caches the parts in the entity cache if it is enabled.
	 *
	 * @param parts the parts
	 */
	@Override
	public void cacheResult(List<Part> parts) {
		for (Part part : parts) {
			if (entityCache.getResult(PartModelImpl.ENTITY_CACHE_ENABLED,
						PartImpl.class, part.getPrimaryKey()) == null) {
				cacheResult(part);
			}
			else {
				part.resetOriginalValues();
			}
		}
	}

	/**
	 * Clears the cache for all parts.
	 *
	 * <p>
	 * The {@link EntityCache} and {@link FinderCache} are both cleared by this method.
	 * </p>
	 */
	@Override
	public void clearCache() {
		entityCache.clearCache(PartImpl.class);

		finderCache.clearCache(FINDER_CLASS_NAME_ENTITY);
		finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
		finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
	}

	/**
	 * Clears the cache for the part.
	 *
	 * <p>
	 * The {@link EntityCache} and {@link FinderCache} are both cleared by this method.
	 * </p>
	 */
	@Override
	public void clearCache(Part part) {
		entityCache.removeResult(PartModelImpl.ENTITY_CACHE_ENABLED,
			PartImpl.class, part.getPrimaryKey());

		finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
		finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
	}

	@Override
	public void clearCache(List<Part> parts) {
		finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
		finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);

		for (Part part : parts) {
			entityCache.removeResult(PartModelImpl.ENTITY_CACHE_ENABLED,
				PartImpl.class, part.getPrimaryKey());
		}
	}

	/**
	 * Creates a new part with the primary key. Does not add the part to the database.
	 *
	 * @param partId the primary key for the new part
	 * @return the new part
	 */
	@Override
	public Part create(long partId) {
		Part part = new PartImpl();

		part.setNew(true);
		part.setPrimaryKey(partId);

		part.setCompanyId(companyProvider.getCompanyId());

		return part;
	}

	/**
	 * Removes the part with the primary key from the database. Also notifies the appropriate model listeners.
	 *
	 * @param partId the primary key of the part
	 * @return the part that was removed
	 * @throws NoSuchPartException if a part with the primary key could not be found
	 */
	@Override
	public Part remove(long partId) throws NoSuchPartException {
		return remove((Serializable)partId);
	}

	/**
	 * Removes the part with the primary key from the database. Also notifies the appropriate model listeners.
	 *
	 * @param primaryKey the primary key of the part
	 * @return the part that was removed
	 * @throws NoSuchPartException if a part with the primary key could not be found
	 */
	@Override
	public Part remove(Serializable primaryKey) throws NoSuchPartException {
		Session session = null;

		try {
			session = openSession();

			Part part = (Part)session.get(PartImpl.class, primaryKey);

			if (part == null) {
				if (_log.isDebugEnabled()) {
					_log.debug(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
				}

				throw new NoSuchPartException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
					primaryKey);
			}

			return remove(part);
		}
		catch (NoSuchPartException nsee) {
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
	protected Part removeImpl(Part part) {
		part = toUnwrappedModel(part);

		Session session = null;

		try {
			session = openSession();

			if (!session.contains(part)) {
				part = (Part)session.get(PartImpl.class, part.getPrimaryKeyObj());
			}

			if (part != null) {
				session.delete(part);
			}
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}

		if (part != null) {
			clearCache(part);
		}

		return part;
	}

	@Override
	public Part updateImpl(Part part) {
		part = toUnwrappedModel(part);

		boolean isNew = part.isNew();

		PartModelImpl partModelImpl = (PartModelImpl)part;

		ServiceContext serviceContext = ServiceContextThreadLocal.getServiceContext();

		Date now = new Date();

		if (isNew && (part.getCreateDate() == null)) {
			if (serviceContext == null) {
				part.setCreateDate(now);
			}
			else {
				part.setCreateDate(serviceContext.getCreateDate(now));
			}
		}

		if (!partModelImpl.hasSetModifiedDate()) {
			if (serviceContext == null) {
				part.setModifiedDate(now);
			}
			else {
				part.setModifiedDate(serviceContext.getModifiedDate(now));
			}
		}

		Session session = null;

		try {
			session = openSession();

			if (part.isNew()) {
				session.save(part);

				part.setNew(false);
			}
			else {
				part = (Part)session.merge(part);
			}
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}

		finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);

		if (isNew || !PartModelImpl.COLUMN_BITMASK_ENABLED) {
			finderCache.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
		}

		else {
			if ((partModelImpl.getColumnBitmask() &
					FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_RESOURCEBLOCKID.getColumnBitmask()) != 0) {
				Object[] args = new Object[] {
						partModelImpl.getOriginalResourceBlockId()
					};

				finderCache.removeResult(FINDER_PATH_COUNT_BY_RESOURCEBLOCKID,
					args);
				finderCache.removeResult(FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_RESOURCEBLOCKID,
					args);

				args = new Object[] { partModelImpl.getResourceBlockId() };

				finderCache.removeResult(FINDER_PATH_COUNT_BY_RESOURCEBLOCKID,
					args);
				finderCache.removeResult(FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_RESOURCEBLOCKID,
					args);
			}

			if ((partModelImpl.getColumnBitmask() &
					FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_GROUPID.getColumnBitmask()) != 0) {
				Object[] args = new Object[] { partModelImpl.getOriginalGroupId() };

				finderCache.removeResult(FINDER_PATH_COUNT_BY_GROUPID, args);
				finderCache.removeResult(FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_GROUPID,
					args);

				args = new Object[] { partModelImpl.getGroupId() };

				finderCache.removeResult(FINDER_PATH_COUNT_BY_GROUPID, args);
				finderCache.removeResult(FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_GROUPID,
					args);
			}

			if ((partModelImpl.getColumnBitmask() &
					FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_MANUFACTURER.getColumnBitmask()) != 0) {
				Object[] args = new Object[] {
						partModelImpl.getOriginalManufacturerId(),
						partModelImpl.getOriginalGroupId()
					};

				finderCache.removeResult(FINDER_PATH_COUNT_BY_MANUFACTURER, args);
				finderCache.removeResult(FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_MANUFACTURER,
					args);

				args = new Object[] {
						partModelImpl.getManufacturerId(),
						partModelImpl.getGroupId()
					};

				finderCache.removeResult(FINDER_PATH_COUNT_BY_MANUFACTURER, args);
				finderCache.removeResult(FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_MANUFACTURER,
					args);
			}
		}

		entityCache.putResult(PartModelImpl.ENTITY_CACHE_ENABLED,
			PartImpl.class, part.getPrimaryKey(), part, false);

		part.resetOriginalValues();

		return part;
	}

	protected Part toUnwrappedModel(Part part) {
		if (part instanceof PartImpl) {
			return part;
		}

		PartImpl partImpl = new PartImpl();

		partImpl.setNew(part.isNew());
		partImpl.setPrimaryKey(part.getPrimaryKey());

		partImpl.setPartId(part.getPartId());
		partImpl.setCompanyId(part.getCompanyId());
		partImpl.setGroupId(part.getGroupId());
		partImpl.setUserId(part.getUserId());
		partImpl.setManufacturerId(part.getManufacturerId());
		partImpl.setName(part.getName());
		partImpl.setPartNumber(part.getPartNumber());
		partImpl.setOrderDate(part.getOrderDate());
		partImpl.setQuantity(part.getQuantity());
		partImpl.setCreateDate(part.getCreateDate());
		partImpl.setModifiedDate(part.getModifiedDate());
		partImpl.setUserName(part.getUserName());
		partImpl.setResourceBlockId(part.getResourceBlockId());
		partImpl.setStatus(part.getStatus());
		partImpl.setStatusByUserId(part.getStatusByUserId());
		partImpl.setStatusByUserName(part.getStatusByUserName());
		partImpl.setStatusDate(part.getStatusDate());

		return partImpl;
	}

	/**
	 * Returns the part with the primary key or throws a {@link com.liferay.portal.kernel.exception.NoSuchModelException} if it could not be found.
	 *
	 * @param primaryKey the primary key of the part
	 * @return the part
	 * @throws NoSuchPartException if a part with the primary key could not be found
	 */
	@Override
	public Part findByPrimaryKey(Serializable primaryKey)
		throws NoSuchPartException {
		Part part = fetchByPrimaryKey(primaryKey);

		if (part == null) {
			if (_log.isDebugEnabled()) {
				_log.debug(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
			}

			throw new NoSuchPartException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
				primaryKey);
		}

		return part;
	}

	/**
	 * Returns the part with the primary key or throws a {@link NoSuchPartException} if it could not be found.
	 *
	 * @param partId the primary key of the part
	 * @return the part
	 * @throws NoSuchPartException if a part with the primary key could not be found
	 */
	@Override
	public Part findByPrimaryKey(long partId) throws NoSuchPartException {
		return findByPrimaryKey((Serializable)partId);
	}

	/**
	 * Returns the part with the primary key or returns <code>null</code> if it could not be found.
	 *
	 * @param primaryKey the primary key of the part
	 * @return the part, or <code>null</code> if a part with the primary key could not be found
	 */
	@Override
	public Part fetchByPrimaryKey(Serializable primaryKey) {
		Serializable serializable = entityCache.getResult(PartModelImpl.ENTITY_CACHE_ENABLED,
				PartImpl.class, primaryKey);

		if (serializable == nullModel) {
			return null;
		}

		Part part = (Part)serializable;

		if (part == null) {
			Session session = null;

			try {
				session = openSession();

				part = (Part)session.get(PartImpl.class, primaryKey);

				if (part != null) {
					cacheResult(part);
				}
				else {
					entityCache.putResult(PartModelImpl.ENTITY_CACHE_ENABLED,
						PartImpl.class, primaryKey, nullModel);
				}
			}
			catch (Exception e) {
				entityCache.removeResult(PartModelImpl.ENTITY_CACHE_ENABLED,
					PartImpl.class, primaryKey);

				throw processException(e);
			}
			finally {
				closeSession(session);
			}
		}

		return part;
	}

	/**
	 * Returns the part with the primary key or returns <code>null</code> if it could not be found.
	 *
	 * @param partId the primary key of the part
	 * @return the part, or <code>null</code> if a part with the primary key could not be found
	 */
	@Override
	public Part fetchByPrimaryKey(long partId) {
		return fetchByPrimaryKey((Serializable)partId);
	}

	@Override
	public Map<Serializable, Part> fetchByPrimaryKeys(
		Set<Serializable> primaryKeys) {
		if (primaryKeys.isEmpty()) {
			return Collections.emptyMap();
		}

		Map<Serializable, Part> map = new HashMap<Serializable, Part>();

		if (primaryKeys.size() == 1) {
			Iterator<Serializable> iterator = primaryKeys.iterator();

			Serializable primaryKey = iterator.next();

			Part part = fetchByPrimaryKey(primaryKey);

			if (part != null) {
				map.put(primaryKey, part);
			}

			return map;
		}

		Set<Serializable> uncachedPrimaryKeys = null;

		for (Serializable primaryKey : primaryKeys) {
			Serializable serializable = entityCache.getResult(PartModelImpl.ENTITY_CACHE_ENABLED,
					PartImpl.class, primaryKey);

			if (serializable != nullModel) {
				if (serializable == null) {
					if (uncachedPrimaryKeys == null) {
						uncachedPrimaryKeys = new HashSet<Serializable>();
					}

					uncachedPrimaryKeys.add(primaryKey);
				}
				else {
					map.put(primaryKey, (Part)serializable);
				}
			}
		}

		if (uncachedPrimaryKeys == null) {
			return map;
		}

		StringBundler query = new StringBundler((uncachedPrimaryKeys.size() * 2) +
				1);

		query.append(_SQL_SELECT_PART_WHERE_PKS_IN);

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

			for (Part part : (List<Part>)q.list()) {
				map.put(part.getPrimaryKeyObj(), part);

				cacheResult(part);

				uncachedPrimaryKeys.remove(part.getPrimaryKeyObj());
			}

			for (Serializable primaryKey : uncachedPrimaryKeys) {
				entityCache.putResult(PartModelImpl.ENTITY_CACHE_ENABLED,
					PartImpl.class, primaryKey, nullModel);
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
	 * Returns all the parts.
	 *
	 * @return the parts
	 */
	@Override
	public List<Part> findAll() {
		return findAll(QueryUtil.ALL_POS, QueryUtil.ALL_POS, null);
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
	@Override
	public List<Part> findAll(int start, int end) {
		return findAll(start, end, null);
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
	@Override
	public List<Part> findAll(int start, int end,
		OrderByComparator<Part> orderByComparator) {
		return findAll(start, end, orderByComparator, true);
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
	@Override
	public List<Part> findAll(int start, int end,
		OrderByComparator<Part> orderByComparator, boolean retrieveFromCache) {
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

		List<Part> list = null;

		if (retrieveFromCache) {
			list = (List<Part>)finderCache.getResult(finderPath, finderArgs,
					this);
		}

		if (list == null) {
			StringBundler query = null;
			String sql = null;

			if (orderByComparator != null) {
				query = new StringBundler(2 +
						(orderByComparator.getOrderByFields().length * 2));

				query.append(_SQL_SELECT_PART);

				appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
					orderByComparator);

				sql = query.toString();
			}
			else {
				sql = _SQL_SELECT_PART;

				if (pagination) {
					sql = sql.concat(PartModelImpl.ORDER_BY_JPQL);
				}
			}

			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(sql);

				if (!pagination) {
					list = (List<Part>)QueryUtil.list(q, getDialect(), start,
							end, false);

					Collections.sort(list);

					list = Collections.unmodifiableList(list);
				}
				else {
					list = (List<Part>)QueryUtil.list(q, getDialect(), start,
							end);
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
	 * Removes all the parts from the database.
	 *
	 */
	@Override
	public void removeAll() {
		for (Part part : findAll()) {
			remove(part);
		}
	}

	/**
	 * Returns the number of parts.
	 *
	 * @return the number of parts
	 */
	@Override
	public int countAll() {
		Long count = (Long)finderCache.getResult(FINDER_PATH_COUNT_ALL,
				FINDER_ARGS_EMPTY, this);

		if (count == null) {
			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(_SQL_COUNT_PART);

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
		return PartModelImpl.TABLE_COLUMNS_MAP;
	}

	/**
	 * Initializes the part persistence.
	 */
	public void afterPropertiesSet() {
	}

	public void destroy() {
		entityCache.removeCache(PartImpl.class.getName());
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
	private static final String _SQL_SELECT_PART = "SELECT part FROM Part part";
	private static final String _SQL_SELECT_PART_WHERE_PKS_IN = "SELECT part FROM Part part WHERE partId IN (";
	private static final String _SQL_SELECT_PART_WHERE = "SELECT part FROM Part part WHERE ";
	private static final String _SQL_COUNT_PART = "SELECT COUNT(part) FROM Part part";
	private static final String _SQL_COUNT_PART_WHERE = "SELECT COUNT(part) FROM Part part WHERE ";
	private static final String _ORDER_BY_ENTITY_ALIAS = "part.";
	private static final String _NO_SUCH_ENTITY_WITH_PRIMARY_KEY = "No Part exists with the primary key ";
	private static final String _NO_SUCH_ENTITY_WITH_KEY = "No Part exists with the key {";
	private static final Log _log = LogFactoryUtil.getLog(PartPersistenceImpl.class);
}