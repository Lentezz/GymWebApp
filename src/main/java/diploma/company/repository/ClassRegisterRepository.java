package diploma.company.repository;

import diploma.company.model.ClassRegister;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClassRegisterRepository extends JpaRepository<ClassRegister, Long> {
}