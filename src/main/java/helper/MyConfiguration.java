package helper;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan({ "controller", "dto", "dao", "service" })
public class MyConfiguration /* instead of abc-servlet.xml */ {
	@Bean // we can't write @component on in-build class so......
	public EntityManager getEMF() {
		return Persistence.createEntityManagerFactory("dev").createEntityManager();
	}

	@Bean
	public ViewResolver getViewResolver() {

		InternalResourceViewResolver view = new InternalResourceViewResolver();
		view.setSuffix(".jsp");
		return view;
	}

}
// @ComponentScan():- It searches for components inside this file( it is used to
// specify base package)
// no need to write xml, instead we use @Configuration

// when we are asking the object from an interface the return type should be
// that interface only