package diploma.company.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.jetbrains.annotations.Nullable;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Table(name = "users")
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank
	@Size(min = 3, max = 20)
	private String firstName;
	
	@NotBlank
	@Size(min = 3, max = 20)
	private String lastName;
	
	@NotBlank
	@Email(message = "Invalid email address format")
	private String email;
	
	@NotBlank
	@Size(min = 3, max = 20)
	@Column(unique = true)
	private String username;
	
	@NotBlank
	@Size(min=8, message = "The password must contain at least 8 characters")
	private String password;
	
	@Nullable
	private String subscribed;
	
	@NotNull
	private int enabled;
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "user_role",
			joinColumns = @JoinColumn(name = "user_id"),
			inverseJoinColumns = @JoinColumn(name = "role_id"))
	private Set<Role> roles;
	
	@OneToMany(mappedBy = "user")
	private List<ClassRegister> classes = new ArrayList<>();
	
	
	@Nullable
	@OneToMany(mappedBy="user")
	private List<PlanOrder> planOrders = new ArrayList<>();
	
	@OneToMany(mappedBy="user")
	private List<Workout> workouts = new ArrayList<>();
	
	@Override
	public String toString() {
		return "User{" +
				"id=" + id +
				", firstName='" + firstName + '\'' +
				", lastName='" + lastName + '\'' +
				", email='" + email + '\'' +
				", username='" + username + '\'' +
				", password='" + password + '\'' +
				", subscribed='" + subscribed + '\'' +
				", enabled=" + enabled +
				", roles=" + roles +
				", classes=" + classes +
				", workouts=" + workouts +
				'}';
	}
}

