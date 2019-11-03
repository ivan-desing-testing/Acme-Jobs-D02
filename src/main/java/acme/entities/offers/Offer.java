package acme.entities.offers;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.Valid;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;

import acme.framework.datatypes.Money;
import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Offer extends DomainEntity {

	//Serialisation identifier ----------------------------------------

	private static final long	serialVersionUID	= 1L;

	//Attributes ------------------------------------------------------

	@NotBlank
	private String				title;

	@Temporal(TemporalType.TIMESTAMP)
	@Past
	private Date				creation;

	@Temporal(TemporalType.TIMESTAMP)
	@Future
	private Date				deadline;

	@NotBlank
	private String				text;

	@NotNull
	@Valid
	private Money				rewardMin;

	@NotNull
	@Valid
	private Money				rewardMax;

	@Pattern(regexp = "^O([A-Z]{4})-([0-9]{5})$")
	@Column(unique = true)
	@NotBlank
	private String				ticker;
}
