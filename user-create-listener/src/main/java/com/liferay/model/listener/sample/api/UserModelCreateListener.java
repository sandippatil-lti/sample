package com.liferay.model.listener.sample.api;

import com.liferay.portal.kernel.model.ModelListener;
import com.liferay.portal.kernel.model.Organization;
import com.liferay.portal.kernel.model.User;
import com.liferay.portal.kernel.service.OrganizationLocalServiceUtil;
import com.liferay.portal.kernel.service.UserLocalServiceUtil;
import com.liferay.portal.kernel.exception.ModelListenerException;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.model.BaseModelListener;
import org.osgi.service.component.annotations.Component;

@Component(
		immediate=true,
		service=ModelListener.class
		
		)
public class UserModelCreateListener extends BaseModelListener<User>

{
	
	@Override
	public void onAfterCreate(User model) throws ModelListenerException {
		// TODO Auto-generated method stub
	String firstName=	 model.getFirstName();
		
		System.out.println("The user just got created is "+firstName);
		super.onAfterCreate(model);
	}
	
	@Override
	public void onBeforeCreate(User model) throws ModelListenerException {
		// TODO Auto-generated method stub
		System.out.println("User is going to get created");
		
		super.onBeforeCreate(model);
	}
	@Override
	public void onAfterAddAssociation(Object classPK, String associationClassName, Object associationClassPK)
			throws ModelListenerException {
		// TODO Auto-generated method stub
		
		Organization org=  OrganizationLocalServiceUtil.fetchOrganization((long)associationClassPK);
	  User user = null;
	try {
		user = UserLocalServiceUtil.getUser((long)classPK);
	} catch (PortalException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		System.out.println("user "+user.getFirstName()+" is addedd to "+org.getName());
		
		super.onAfterAddAssociation(classPK, associationClassName, associationClassPK);
	}
	
}