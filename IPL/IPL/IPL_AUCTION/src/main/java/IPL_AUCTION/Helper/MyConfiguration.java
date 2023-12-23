package IPL_AUCTION.Helper;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan("IPL_AUCTION")
public class MyConfiguration {
	@Bean
	public EntityManagerFactory getemf() {
		return Persistence.createEntityManagerFactory("dev");
	}
//	@Bean
//	public ViewResolver getresolver() {
//		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
//		resolver.setSuffix(".jsp");
//		resolver.setPrefix("/webapp/");
//		return resolver;
//
//	}
}
