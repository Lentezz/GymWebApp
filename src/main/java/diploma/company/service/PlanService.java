package diploma.company.service;

import diploma.company.model.Plan;
import diploma.company.repository.PlanRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlanService {
	
	private final PlanRepository planRepo;
	
	public PlanService(PlanRepository planRepo) {
		this.planRepo = planRepo;
	}
	public List<Plan> findAll(){
		List<Plan> list = planRepo.findAll();
		return list;
	}
	public Plan getOne(Long id) {
		Plan plan = planRepo.getOne(id);
		return plan;
	}
	
}
