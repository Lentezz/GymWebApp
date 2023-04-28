package diploma.company.repository;

import diploma.company.model.Plan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PlanRepository extends JpaRepository<Plan, Long> {
	
	@Query("select p from Plan p where p.name=?1")
	List<Plan> findPlansByName(String name);
	
//	@Query(value = "select price from Plan p where p.id=?1", nativeQuery = true)
//	Double findPriceOfPlan(Long id);

}