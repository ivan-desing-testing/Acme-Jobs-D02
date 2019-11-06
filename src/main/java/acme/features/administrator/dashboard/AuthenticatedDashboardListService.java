
package acme.features.administrator.dashboard;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.forms.Dashboard;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Authenticated;
import acme.framework.services.AbstractListService;

@Service
public class AuthenticatedDashboardListService implements AbstractListService<Authenticated, Dashboard> {

	// Internal state --------------------------------------------------------------------------

	@Autowired
	AdministratorDashboardRepository repository;


	// AbstractListService<Authenticated, Offer> interface -------------------------------------

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

		request.unbind(entity, model, "starScore");
	}

	@Override
	public Collection<Dashboard> findMany(final Request<Dashboard> request) {
		assert request != null;

		Collection<Dashboard> result;

		result = this.repository.findManyAll();

		return result;
	}

}
