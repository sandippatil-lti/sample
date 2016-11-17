package com.liferay.training.gradebook.panel.app;

import com.liferay.application.list.BasePanelApp;
import com.liferay.application.list.PanelApp;
import com.liferay.application.list.constants.PanelCategoryKeys;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.language.LanguageUtil;
import com.liferay.portal.kernel.model.Portlet;
import com.liferay.portal.kernel.util.ResourceBundleUtil;


import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import org.osgi.service.component.annotations.Component;

@Component(
	    immediate = true,
	    property = {
		    "panel.category.key=" + PanelCategoryKeys.SITE_ADMINISTRATION + ".space",
	        "panel.app.order:Integer=100"
	        
	    },
	    service = PanelApp.class
	)
public class GradebookPanelApp
	extends BasePanelApp
	 {

	@Override
	public String getPortletId() {
		return "com_liferay_training_space_gradebook_portlet_GradebookPortlet";
	}

	@Override
	public String getLabel(Locale locale) {
		ResourceBundle resourceBundle = ResourceBundleUtil.getBundle(
				"content.Language", locale, getClass());

			return LanguageUtil.get(resourceBundle, "gradebook-title");
	}
	public void setPortlet(Portlet portlet) {
	    super.setPortlet(portlet);
	}	

}