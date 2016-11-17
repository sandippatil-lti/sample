package com.example.portlet;

import com.liferay.expando.kernel.exception.DuplicateTableNameException;
import com.liferay.expando.kernel.model.ExpandoColumn;
import com.liferay.expando.kernel.model.ExpandoColumnConstants;
import com.liferay.expando.kernel.model.ExpandoTable;
import com.liferay.expando.kernel.service.ExpandoColumnLocalService;
import com.liferay.expando.kernel.service.ExpandoTableLocalService;
import com.liferay.expando.kernel.service.ExpandoValueLocalService;
import com.liferay.portal.kernel.events.ActionException;
import com.liferay.portal.kernel.events.LifecycleAction;
import com.liferay.portal.kernel.events.SimpleAction;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.model.User;
import com.liferay.portal.kernel.util.UnicodeProperties;

import org.osgi.service.component.annotations.Component;
import org.osgi.service.component.annotations.Reference;
@Component(
immediate = true, property = {"key=application.startup.events"},
service = LifecycleAction.class
)
public class UserExpandoStartupAction extends SimpleAction {

	
	@Reference
	ExpandoColumnLocalService expandoColumnLocalService;
	@Reference
	ExpandoTableLocalService expandoTableLocalService;
	@Reference
	ExpandoValueLocalService expandoValueLocalService;
	@Override
	public void run(String[] ids) throws ActionException {
		System.out.println("inside expando");
		// TODO Auto-generated method stub
		ExpandoTable table = null;
		ExpandoColumn columnStudentMajor=null;
		ExpandoColumn columnStudentEnrollmentDate=null;
		ExpandoColumn columnStudentID=null;
		long tableId=0;
		long companyId = 20116;
		try {
		table = expandoTableLocalService.addDefaultTable(
		companyId, User.class.getName());
		}
		catch(DuplicateTableNameException dtne) {
		try {
			table = expandoTableLocalService.getDefaultTable(
			companyId, User.class.getName());
			tableId = table.getTableId();
		} catch (PortalException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		} catch (PortalException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			columnStudentMajor = expandoColumnLocalService.addColumn(
					tableId, "student-major", ExpandoColumnConstants.STRING);
		
		
				columnStudentEnrollmentDate = expandoColumnLocalService.addColumn(
				tableId, "student-enrollment-date", ExpandoColumnConstants.DATE);
				columnStudentID = expandoColumnLocalService.addColumn(
				tableId, "studentid", ExpandoColumnConstants.INTEGER);
				//Set the indexable property on the column
				UnicodeProperties properties = new UnicodeProperties();
				properties.setProperty(
				ExpandoColumnConstants.INDEX_TYPE, Boolean.TRUE.toString());
				columnStudentMajor.setTypeSettingsProperties(properties);
				expandoColumnLocalService.updateExpandoColumn(columnStudentMajor);	
				expandoColumnLocalService.updateExpandoColumn(columnStudentID);
				expandoColumnLocalService.updateExpandoColumn(columnStudentEnrollmentDate);
		} catch (PortalException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	}
}
