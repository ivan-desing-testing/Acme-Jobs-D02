<%@page language="java"%>
<%@taglib prefix="jstl" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir ="/WEB-INF/tags"%>


<acme:list readonly="true">
	<acme:list-column code="anonymous.investorRecord.list.label.investorName" path="investorName" />
	<acme:list-column code="anonymous.investorRecord.list.label.sector" path="sector"  />
	<acme:list-column code="anonymous.investorRecord.list.label.stars" path="stars"  />
</acme:list>