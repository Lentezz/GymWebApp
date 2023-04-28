package diploma.company.repository;

import diploma.company.enums.Equipment;
import diploma.company.enums.MuscleGroup;
import diploma.company.model.Exercise;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ExerciseRepository extends JpaRepository<Exercise, Long> {
	
	List<Exercise> findByMuscleGroup(MuscleGroup muscleGroup);
	List<Exercise> findByEquipment(Equipment equipment);
	List<Exercise> findByMuscleGroupAndEquipment(MuscleGroup muscleGroup, Equipment equipment);
	
}