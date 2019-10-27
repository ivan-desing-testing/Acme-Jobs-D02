<%--
- menu.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java" import="acme.framework.helpers.PrincipalHelper,acme.entities.roles.Provider,acme.entities.roles.Consumer"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:menu-bar code="master.menu.home">
	<acme:menu-left>
		<acme:menu-option code="master.menu.anonymous" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.anonymous.alvaro-link" action="https://www.youtube.com/watch?v=dQw4w9WgXcQ"/>
      		<acme:menu-suboption code="master.menu.anonymous.ivan-link" action="https://www.genbeta.com/linux/ubuntu-19-10-llega-hoy-arranque-veloz-que-nunca-rompiendo-tradiciones-pro-comodidad-usuario"/>
      		<acme:menu-suboption code="master.menu.anonymous.antonio-link" action="https://ev.us.es/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_29_1"/>   
			<acme:menu-suboption code="master.menu.anonymous.josescrue-favourite-link" action="https://www.formula1.com"/>
          	<acme:menu-suboption code="master.menu.anonymous.abdel-link" action="https://openclassrooms.com/fr/"/>          	
			<acme:menu-separator/>			
			<acme:menu-suboption code="master.menu.anonymous.shout.list" action="/anonymous/shout/list"/>
			<acme:menu-suboption code="master.menu.anonymous.shout.create" action="/anonymous/shout/create"/>			
			<acme:menu-separator/>
      		<acme:menu-suboption code="master.menu.anonymous.chellik-bulletin.list" action="/anonymous/chellik-bulletin/list"/>
		    <acme:menu-suboption code="master.menu.anonymous.chellik-bulletin.create" action="/anonymous/chellik-bulletin/create"/>
          	<acme:menu-separator/>
            <acme:menu-suboption code="master.menu.anonymous.escobar-bulletin.list" action="/anonymous/escobar-bulletin/list"/>
		    <acme:menu-suboption code="master.menu.anonymous.escobar-bulletin.create" action="/anonymous/escobar-bulletin/create"/>
          	<acme:menu-separator/>
          	<acme:menu-suboption code="master.menu.anonymous.rosado-bulletin.list" action="/anonymous/rosado-bulletin/list"/>
			<acme:menu-suboption code="master.menu.anonymous.rosado-bulletin.create" action="/anonymous/rosado-bulletin/create"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.anonymous.cardenas-bulletin.list" action="/anonymous/cardenas-bulletin/list" />
			<acme:menu-suboption code="master.menu.anonymous.cardenas-bulletin.create" action="/anonymous/cardenas-bulletin/create" />
		    <acme:menu-separator/>
		    <acme:menu-suboption code="master.menu.anonymous.alferez-bulletin.list" action="/anonymous/alferez-bulletin/list"/>
		    <acme:menu-suboption code="master.menu.anonymous.alferez-bulletin.create" action="/anonymous/alferez-bulletin/create"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.administrator" access="hasRole('Administrator')">
			<acme:menu-suboption code="master.menu.administrator.user-accounts" action="/administrator/user-account/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.shutdown" action="/master/shutdown"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.provider" access="hasRole('Provider')">
			<acme:menu-suboption code="master.menu.provider.favourite-link" action="http://www.example.com/"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.consumer" access="hasRole('Consumer')">
			<acme:menu-suboption code="master.menu.consumer.favourite-link" action="http://www.example.com/"/>
		</acme:menu-option>
	</acme:menu-left>

	<acme:menu-right>
		<acme:menu-option code="master.menu.sign-up" action="/anonymous/user-account/create" access="isAnonymous()"/>
		<acme:menu-option code="master.menu.sign-in" action="/master/sign-in" access="isAnonymous()"/>

		<acme:menu-option code="master.menu.user-account" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.user-account.general-data" action="/authenticated/user-account/update"/>
			<acme:menu-suboption code="master.menu.user-account.become-provider" action="/authenticated/provider/create" access="!hasRole('Provider')"/>
			<acme:menu-suboption code="master.menu.user-account.provider" action="/authenticated/provider/update" access="hasRole('Provider')"/>
			<acme:menu-suboption code="master.menu.user-account.become-consumer" action="/authenticated/consumer/create" access="!hasRole('Consumer')"/>
			<acme:menu-suboption code="master.menu.user-account.consumer" action="/authenticated/consumer/update" access="hasRole('Consumer')"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.sign-out" action="/master/sign-out" access="isAuthenticated()"/>
	</acme:menu-right>
</acme:menu-bar>