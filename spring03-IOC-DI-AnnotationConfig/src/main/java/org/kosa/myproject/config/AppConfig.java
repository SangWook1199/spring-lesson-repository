package org.kosa.myproject.config;

import org.springframework.context.annotation.ComponentScan;

/**
    <!--
	org.kosa.myproject.model 패키지 이하의 모든 패키지와 클래스들을 대상으로 스캔
	@Component 계열(@Service, @Controller, @Repository)의 애너테이션이 명시된 Class 들을 bean 으로 생성, 관리한다
	-->
	<context:component-scan base-package="org.kosa.myproject.model"></context:component-scan>
	
    위와 같이 직전 프로젝트에서 테스트 했던 Spring 설정 xml 의 역할을 아래 클래스에서 한다
    @ComponentScan("org.kosa.myproject.model") 애너테이션의 의미는
    @Component 계열(@Service, @Controller, @Repository)의 애너테이션이 명시된 Class 들을 bean 으로 생성, 관리한다
 */
@ComponentScan("org.kosa.myproject.model")
public class AppConfig {

}
