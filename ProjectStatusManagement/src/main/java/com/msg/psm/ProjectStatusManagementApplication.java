package com.msg.psm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories(basePackages= {"Repository"})
public class ProjectStatusManagementApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProjectStatusManagementApplication.class, args);
	}

}
 