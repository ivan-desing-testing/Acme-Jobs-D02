
package acme.forms;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Dashboard implements Serializable {

	// Serialisation identifier --------------

	private static final long serialVersionUID = 1L;

	// Attributes ----------------------------

	//Integer						totalNumberOfAnnouncements;
	Integer totalNumberOfCompanyRecords;
	//Integer 						totalNumberOfInvestorRecords;
	//Double						mininumStandardDeviationOfRewardsOfActiveRequests;
	//Double						maximumStandardDeviationOfRewardsOfActiveRequests;
	//Double						averageStandardDeviationOfRewardsOfActiveRequests;
	//Double						mininumStandardDeviationOfRewardsOfActiverOffers;
	//Double						maximumStandardDeviationOfRewardsOfActiverOffers;
	//Double						averageStandardDeviationOfRewardsOfActiverOffers;

}
