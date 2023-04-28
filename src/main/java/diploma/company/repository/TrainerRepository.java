package diploma.company.repository;

import diploma.company.model.Trainer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TrainerRepository extends JpaRepository<Trainer, Long> {

	@Query("select t.id from Trainer t where t.name like ?1")
	Long findTrainerIdByName(String name);
	
	Trainer findByName(@Param("name") String name);
}