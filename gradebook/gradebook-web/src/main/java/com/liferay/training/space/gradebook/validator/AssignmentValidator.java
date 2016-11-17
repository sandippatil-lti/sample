package com.liferay.training.space.gradebook.validator;

import java.util.List;

import com.liferay.portal.kernel.util.HtmlUtil;
import com.liferay.portal.kernel.util.Validator;
import com.liferay.training.space.gradebook.model.Assignment;

public class AssignmentValidator {

		public static boolean isAssignmentValid(
			Assignment assignment, List<String> errors) {

		boolean result = true;

		if (!assignment.isNew()) {
			if (Validator.isNull(assignment.getAssignmentId())) {
				errors.add("assignment-id-error");
				result = false;
			}
		}
		if ((Validator.isBlank(assignment.getTitle()))) {
			errors.add("assignment-title-error");
			result = false;
		}

		if (Validator.isNull(assignment.getDueDate())) {
			errors.add("assignment-date-error");
			result = false;
		}
		if (Validator.isBlank(HtmlUtil.stripHtml(assignment.getDescription()))) {
			errors.add("assignment-description-error");
			result = false;
		}

		return result;
	}
}