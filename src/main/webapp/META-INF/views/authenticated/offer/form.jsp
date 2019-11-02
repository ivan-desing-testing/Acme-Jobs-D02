<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form readonly="true">
	<acme:form-textbox code="authenticated.offer.form.label.companyName" path="companyName"/>
	<acme:form-textbox code="authenticated.offer.form.label.sector" path="sector"/>
	<acme:form-textbox code="authenticated.offer.form.label.CEOName" path="CEOName"/>
	<acme:form-textarea code="authenticated.offer.form.label.activitiesDescription" path="activitiesDescription"/>		
	<acme:form-url code="authenticated.offer.form.label.website" path="website"/>		
	<acme:form-textbox code="authenticated.offer.form.label.contactPhone" path="contactPhone"/>		
	<acme:form-textbox code="authenticated.offer.form.label.contactEmail" path="contactEmail"/>
	<acme:form-textbox code="authenticated.offer.form.label.incorporated" path="incorporated"/>
	<acme:form-double code="authenticated.offer.form.label.starScore" path="starScore"/>				
	
	<acme:form-submit code="authenticated.offer.form.button.create" action="/authenticated/offer/create"/>
	<acme:form-submit code="authenticated.offer.form.button.update" action="/authenticated/offer/update"/>
	<acme:form-return code="authenticated.offer.form.button.return"/>
</acme:form>
