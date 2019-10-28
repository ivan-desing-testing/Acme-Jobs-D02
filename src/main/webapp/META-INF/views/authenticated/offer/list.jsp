
<%--
- list.jsp
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

<acme:list>
	<acme:list-column code="authenticated.offer.list.label.companyName" path="companyName" width="15%"/>
	<acme:list-column code="authenticated.offer.list.label.sector" path="sector" width="10%"/>
	<acme:list-column code="authenticated.offer.list.label.CEOName" path="CEOName" width="10%"/>
	<acme:list-column code="authenticated.offer.list.label.activitiesDescription" path="activitiesDescription" width="15%"/>		
	<acme:list-column code="authenticated.offer.list.label.website" path="website" width="15%"/>		
	<acme:list-column code="authenticated.offer.list.label.contactPhone" path="contactPhone" width="15%"/>		
	<acme:list-column code="authenticated.offer.list.label.contactEmail" path="contactEmail" width="15%"/>		
	<acme:list-column code="authenticated.offer.list.label.starScore" path="starScore" width="5%"/>				
</acme:list>


