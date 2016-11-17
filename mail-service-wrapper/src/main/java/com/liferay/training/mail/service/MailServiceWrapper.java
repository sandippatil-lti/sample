package com.liferay.training.mail.service;

import com.liferay.portal.kernel.service.UserLocalServiceWrapper;
import com.liferay.portal.kernel.theme.ThemeDisplay;
import com.liferay.mail.kernel.model.MailMessage;
import com.liferay.mail.kernel.service.MailService;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.model.Company;
import com.liferay.portal.kernel.model.User;
import com.liferay.portal.kernel.service.ServiceContext;
import com.liferay.portal.kernel.service.ServiceWrapper;
import com.liferay.portal.kernel.service.UserLocalService;
import com.liferay.portal.kernel.service.UserLocalServiceUtil;

import java.util.Locale;
import java.util.Map;

import javax.mail.internet.InternetAddress;

import org.osgi.service.component.annotations.Component;
import org.osgi.service.component.annotations.Reference;

@Component(
	immediate = true,
	property = {
	},
	service = ServiceWrapper.class
)
public class MailServiceWrapper extends UserLocalServiceWrapper {

	private static final Log _log = LogFactoryUtil.getLog(MailServiceWrapper.class);

	private static MailService _mailService;

	public MailServiceWrapper() {
		super(null);
	}

	@Reference(unbind = "-")
	protected void setMailService(MailService mailService) {
		_mailService = mailService;
	}

	@Override
	public User addUserWithWorkflow(long creatorUserId, long companyId, boolean autoPassword, String password1, String password2, boolean autoScreenName, String screenName, String emailAddress, long facebookId, String openId, Locale locale, String firstName, String middleName, String lastName, long prefixId, long suffixId, boolean male, int birthdayMonth, int birthdayDay, int birthdayYear, String jobTitle, long[] groupIds, long[] organizationIds, long[] roleIds, long[] userGroupIds, boolean sendEmail, ServiceContext serviceContext) throws PortalException {
		_log.info("Enter UserServiceHook#addUserWithWorkflow");
		User user = super.addUserWithWorkflow(creatorUserId, companyId, autoPassword, password1, password2, autoScreenName, screenName, emailAddress, facebookId, openId, locale, firstName, middleName, lastName, prefixId, suffixId, male, birthdayMonth, birthdayDay, birthdayYear, jobTitle, groupIds, organizationIds, roleIds, userGroupIds, sendEmail, serviceContext);
		try {
			ThemeDisplay themeDisplay = serviceContext.getThemeDisplay();
			Company company = themeDisplay.getCompany();
			InternetAddress from = new InternetAddress(company.getEmailAddress());
			InternetAddress to = new InternetAddress(user.getEmailAddress());
			String subject = "Welcome";
			String body = "Your account has been created!";
			MailMessage mailMessage = new MailMessage(
					from, to, subject, body, false);
			_mailService.sendEmail(mailMessage);
		} catch (Exception e) {
			_log.error(e, e);
		}
		return user;
	}
	

	
	@Override
	public int authenticateByEmailAddress(long companyId, String emailAddress, String password,
			Map<String, String[]> headerMap, Map<String, String[]> parameterMap, Map<String, Object> resultsMap)
			throws PortalException {
		// TODO Auto-generated method stub
		
		User user = UserLocalServiceUtil.fetchUserByEmailAddress(companyId, emailAddress);
		System.out.println("Authenticated user is "+user.getFirstName());
		return super.authenticateByEmailAddress(companyId, emailAddress, password, headerMap, parameterMap, resultsMap);
	}
	
}

