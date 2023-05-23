package multicampus.kb03.IPOwer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Configuration
public class AppConfig {
    
    @Bean
    public CommonsMultipartResolver multipartResolver() {
        CommonsMultipartResolver resolver = new CommonsMultipartResolver();
        resolver.setMaxUploadSize(52428800);
        resolver.setMaxInMemorySize(100000);
        resolver.setDefaultEncoding("utf-8");
        return resolver;
    }
    
    // Other bean configurations...
}
