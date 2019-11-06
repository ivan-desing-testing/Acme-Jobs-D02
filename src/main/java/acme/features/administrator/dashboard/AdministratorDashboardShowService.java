/*
 * AdministratorUserAccountShowService.java
 *
 * Copyright (c) 2019 Rafael Corchuelo.
 *
 * In keeping with the traditional purpose of furthering education and research, it is
 * the policy of the copyright owner to permit non-commercial use and redistribution of
 * this software. It has been tested carefully, but it is not guaranteed for any particular
 * purposes. The copyright owner does not offer any warranties or representations, nor do
 * they accept any liabilities with respect to them.
 */

package acme.features.administrator.dashboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.forms.Dashboard;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Administrator;
import acme.framework.services.AbstractShowService;

@Service
public class AdministratorDashboardShowService implements AbstractShowService<Administrator, Dashboard> {

	// Internal state ---------------------------------------------------------

	@Autowired
	private AdministratorDashboardRepository repository;


	// AbstractShowService<Administrator, UserAccount> interface --------------

	@Override
	public boolean authorise(final Request<Dashboard> request) {
		assert request != null;

		return true;
	}

	@Override
	public void unbind(final Request<Dashboard> request, final Dashboard entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "totalNumberOfAnnouncements", "totalNumberOfCompanyRecords", "totalNumberOfInvestorRecords", "mininumRewardOfActiveRequests", "maximumRewardOfActiveRequests", "averageRewardOfActiveRequests",
			"mininumRewardOfActiveOffers", "maximumRewardOfActiveOffers", "averageRewardOfActiveOffers", "totalNumberOfCompanyRecordsGroupedBySector", "totalNumberOfInvestorRecordsGroupedBySector");
	}

	@Override
	public Dashboard findOne(final Request<Dashboard> request) {
		assert request != null;

		Dashboard result = new Dashboard();

		result.setTotalNumberOfAnnouncements(this.repository.countNumberOfAnnouncements());
		result.setTotalNumberOfCompanyRecords(this.repository.countNumberOfCompanyRecords());
		result.setTotalNumberOfInvestorRecords(this.repository.countNumberOfInvestorRecords());
		result.setMininumRewardOfActiveRequests(this.repository.mininumRewardOfActiveRequests());
		result.setMaximumRewardOfActiveRequests(this.repository.maximumRewardOfActiveRequests());
		result.setAverageRewardOfActiveRequests(this.repository.averageRewardOfActiveRequests());
		result.setMininumRewardOfActiveOffers(this.repository.mininumRewardOfActiveOffers());
		result.setMaximumRewardOfActiveOffers(this.repository.maximumRewardOfActiveOffers());
		result.setAverageRewardOfActiveOffers(this.repository.averageRewardOfActiveOffers());
		result.setTotalNumberOfCompanyRecordsGroupedBySector(this.repository.countNumberOfCompanyRecordsGroupedBySector());
		result.setTotalNumberOfInvestorRecordsGroupedBySector(this.repository.countNumberOfInvestorRecordsGroupedBySector());

		return result;
	}

}
