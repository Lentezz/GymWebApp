package diploma.company.model.view;

import diploma.company.enums.Equipment;
import diploma.company.enums.MuscleGroup;
import diploma.company.enums.WorkoutType;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CustomWorkout {
	
	private String name;
	private WorkoutType type;
	private Integer sets;
	private Integer reps;
	
	private List<MuscleGroup> muscleGroups;
	private List<Equipment> equipment;
	
	@Override
	public String toString() {
		return "CustomWorkout{" +
				"name='" + name + '\'' +
				", type=" + type +
				", sets=" + sets +
				", reps=" + reps +
				", muscleGroups=" + muscleGroups +
				", equipment=" + equipment +
				'}';
	}
}
