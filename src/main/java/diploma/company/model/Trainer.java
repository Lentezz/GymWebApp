package diploma.company.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.lang.Nullable;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="trainers")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Trainer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotBlank
	private String name;
	@Email
	private String email;
	
	@OneToMany(mappedBy="trainer")
	private List<Schedule> classes = new ArrayList<>();
	
	@Nullable
	@OneToMany(mappedBy="trainer")
	private List<PlanOrder> planOrder = new ArrayList<>();
	
	@Override
	public String toString() {
		return "Trainer{" +
				"id=" + id +
				", name='" + name + '\'' +
				", email='" + email + '\'' +
				", classes=" + classes +
				'}';
	}
}
