<%@ include file="/init.jsp" %>


<portlet:renderURL var="addManufacturerURL">
<portlet:param name="mvcRenderCommandName" value="/parts-inventory/manufacturer/edit"/>
<portlet:param name="redirect" value="${currentURL}"/>
</portlet:renderURL>

<aui:button name="add-manufacturer" value="add-manufacturer" onClick="<%= addManufacturerURL.toString() %>" markupView="lexicon" cssClass="btn btn-primary btn-lg"/>