package diploma.company.service;

import diploma.company.model.Trainer;
import diploma.company.repository.TrainerRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TrainerService {
	
	private TrainerRepository trainerRepo;
	
	public TrainerService(TrainerRepository trainerRepo) {
		this.trainerRepo = trainerRepo;
	}
	
	public List<Trainer> getTrainerNames(){
		List<Trainer> list = trainerRepo.findAll();
		return list;
	}
	
	public Long findIdByName(String name) {
		return trainerRepo.findTrainerIdByName(name);
	}
	public Trainer findTrainerById(Long id) {
		return trainerRepo.findById(id).orElse(null);
	}
	
	public Trainer findTrainerByName(String name) {
		return trainerRepo.findByName(name);
	}
}
