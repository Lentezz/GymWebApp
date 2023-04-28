package diploma.company.app;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableAutoConfiguration
@EntityScan(basePackages = {"diploma.company.model"})
@EnableJpaRepositories(basePackages = {"diploma.company.repository", "diploma.company.service"})
@EnableTransactionManagement
public class RepositoryConfig {
}
