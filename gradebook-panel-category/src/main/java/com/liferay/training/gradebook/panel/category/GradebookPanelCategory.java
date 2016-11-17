package com.liferay.training.gradebook.panel.category;

import com.liferay.application.list.BasePanelCategory;
import com.liferay.application.list.PanelCategory;
import com.liferay.application.list.constants.PanelCategoryKeys;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.language.LanguageUtil;
import com.liferay.portal.kernel.util.ResourceBundleUtil;
import com.liferay.product.navigation.control.menu.BaseProductNavigationControlMenuEntry;
import com.liferay.product.navigation.control.menu.ProductNavigationControlMenuEntry;

import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import org.osgi.service.component.annotations.Component;

@Component(
	    immediate = true,
	    property = {
	        "panel.category.key=" + PanelCategoryKeys.SITE_ADMINISTRATION ,
	        "panel.category.order:Integer=100"
	    },
	    service = PanelCategory.class
	)
public class GradebookPanelCategory
	extends BasePanelCategory
	 {

	@Override
	public String getKey() {
		return "site_administration.space";
}
	@Override
	public String getLabel(Locale locale) {
		ResourceBundle resourceBundle = ResourceBundleUtil.getBundle(
			"content.Language", locale, getClass());

		return LanguageUtil.get(resourceBundle, "space-category");
	}

}