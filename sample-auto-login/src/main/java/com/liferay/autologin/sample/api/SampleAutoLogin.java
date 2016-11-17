package com.liferay.autologin.sample.api;

import com.liferay.portal.kernel.model.User;
import com.liferay.portal.kernel.security.auto.login.AutoLogin;
import com.liferay.portal.kernel.security.auto.login.BaseAutoLogin;
import com.liferay.portal.kernel.service.UserLocalService;
import com.liferay.portal.kernel.util.PortalUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.osgi.service.component.annotations.Component;
import org.osgi.service.component.annotations.Reference;


@Component(
		immediate=true,
		service=AutoLogin.class
		)
public class SampleAutoLogin extends BaseAutoLogin {

         @Reference
         UserLocalService userLocalService;

		@Override
		protected String[] doLogin(HttpServletRequest request, HttpServletResponse response) throws Exception {
			// TODO Auto-generated method stub
			
			long companyId= PortalUtil.getCompanyId(request);
			
			
			User user= userLocalService.getUserByEmailAddress(companyId, "test@liferay.com")  ;
			
			String []credentials=new String[3];
			if(user!=null)
			{
				credentials[0]=   Long.toString(user.getUserId());
				credentials[1] =  user.getPassword();
				credentials[2]=  Boolean.toString(true);
			}
			return credentials;
		}
         
     
}