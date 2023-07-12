package helper;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MyDispatcherServlet extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {

		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		Class[] a = { MyConfiguration.class };
		// insted of abc-servlet.class we do it here
		return a;
	}

	@Override
	protected String[] getServletMappings() {
		String[] a = { "/" };
		return a;
	}
}
//instead of web.xml