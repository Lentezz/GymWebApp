package diploma.company.repository;

import diploma.company.model.PlanOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface PlanOrderRepository extends JpaRepository<PlanOrder, Long> {

	PlanOrder getPlanOrderById(Long id);
	
	@Query(value = "select plan_id from plan_order p where p.id=?1", nativeQuery = true)
	Long findPlanForPlanOrder(Long id);
}