package com.liferay.training.space.gradebook.asset;

import javax.portlet.PortletRequest;
import javax.portlet.PortletURL;
import javax.servlet.ServletContext;

import org.osgi.service.component.annotations.Component;
import org.osgi.service.component.annotations.Reference;

import com.liferay.asset.kernel.model.AssetRenderer;
import com.liferay.asset.kernel.model.AssetRendererFactory;
import com.liferay.asset.kernel.model.BaseAssetRendererFactory;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.portlet.LiferayPortletRequest;
import com.liferay.portal.kernel.portlet.LiferayPortletResponse;
import com.liferay.portal.kernel.security.permission.PermissionChecker;
import com.liferay.portal.kernel.util.PortalUtil;
import com.liferay.training.space.gradebook.model.Assignment;
import com.liferay.training.space.gradebook.portlet.GradebookPortletKeys;
import com.liferay.training.space.gradebook.service.AssignmentLocalService;
import com.liferay.training.space.gradebook.service.permission.AssignmentPermission;
@Component(
	immediate = true,
	property = {
		"javax.portlet.name=" + GradebookPortletKeys.PORTLET_NAME
}, service = AssetRendererFactory.class)
public class AssignmentAssetRendererFactory extends 
		BaseAssetRendererFactory<Assignment> {

	public AssignmentAssetRendererFactory() {
		setClassName(CLASS_NAME);
		setLinkable(true);
		setPortletId(GradebookPortletKeys.PORTLET_NAME);
		setSearchable(true);
	}

	@Override
	public AssetRenderer<Assignment> getAssetRenderer(long classPK, int type) 
			throws PortalException {

		Assignment assignment = _assignmentLocalService.getAssignment(classPK);
		
		AssignmentAssetRenderer assignmentAssetRenderer = 
			new AssignmentAssetRenderer(assignment);
		
		assignmentAssetRenderer.setAssetRendererType(type);

		return assignmentAssetRenderer;
	}

	@Override
	public String getType() {
		return TYPE;
	}
	

	@Override
	public boolean hasAddPermission(
			PermissionChecker permissionChecker, long groupId, long classTypeId)
		throws Exception {

		return AssignmentPermission.containsTopLevel(
			permissionChecker, groupId, AssignmentPermission.ADD_ASSIGNMENT);
	}

	@Override
	public boolean hasPermission(
			PermissionChecker permissionChecker, long classPK, String actionId)
		throws Exception {
	
		Assignment assignment = _assignmentLocalService.getAssignment(classPK);
		
		return AssignmentPermission.contains(
			permissionChecker, assignment.getGroupId(), 
			assignment.getAssignmentId(), actionId);
	}
	
	@Override
	public PortletURL getURLAdd(
		LiferayPortletRequest liferayPortletRequest,
		LiferayPortletResponse liferayPortletResponse, long classTypeId) {

		PortletURL portletURL = PortalUtil.getControlPanelPortletURL(
			liferayPortletRequest, getGroup(liferayPortletRequest),
			GradebookPortletKeys.PORTLET_NAME, 0, 0, 
			PortletRequest.RENDER_PHASE);

		portletURL.setParameter(
			"mvcRenderCommandName", "/gradebook/assignment/edit");

		return portletURL;
	}
	
	@Reference(target = "(osgi.web.symbolicname=gradebook.web)")
	private ServletContext _servletContext;

	@Reference
	private AssignmentLocalService _assignmentLocalService;

	public static final String CLASS_NAME = Assignment.class.getName();
	public static final String TYPE = "assignment";
}
