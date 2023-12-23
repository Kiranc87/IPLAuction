package IPL_AUCTION.Helper;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MyWebXml extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		Class []ipl= {MyConfiguration.class};
		return ipl;
	}

	@Override
	protected String[] getServletMappings() {
		String []ipl= {"/"};
		return ipl;
		}

}
