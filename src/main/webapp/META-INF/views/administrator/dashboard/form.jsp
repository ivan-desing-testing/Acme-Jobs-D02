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

<acme:form>
	<acme:form-integer code="administrator.dashboard.form.label.companyRecords" path="totalNumberOfCompanyRecords" readonly="true"/>
	<acme:form-integer code="administrator.dashboard.form.label.companyRecords" path="totalNumberOfCompanyRecords" readonly="true"/>
</acme:form>

<h2>
	<acme:message code="administrator.dashboard.form.title.application-statuses"/>
</h2>

<div>
	<canvas id="canvas" style="border:1px solid #000000;"></canvas>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		var data = {
			    labels: [ "January", "July" ],
			    datasets: [{
			        label: "Dataset 1“,
			        data: [ 1.9, 3.9]
			     }, {
			        label: "Dataset 2“,
			        data: [ 5.5, 4.9]
			     }]
			};

		var options = {
			    legend : { display : false },
			    scales : { yAxes : [ { 
			        ticks : { 
			            suggestedMin : 0.0,	
			            suggestedMax : 1.0
			        }} ] }
			};

		var canvas, context;
		canvas = document.getElementById("canvas");
		context = canvas.getContext("2d");
		new Chart(context, {
			type : "bar",
			data : data,
			options : options
		});
	});
</script>