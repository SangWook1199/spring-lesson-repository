package org.kosa.myproject.model;

import org.springframework.stereotype.Service;

@Service // 컴포넌트 계열 애너테이션, 스프링 컨테이너에게 bean을 생성하고 관리해달라
public class FoodService {
	public void register(String menu) {
		System.out.println(getClass()+" "+menu+" 메뉴 등록");
	}
}
