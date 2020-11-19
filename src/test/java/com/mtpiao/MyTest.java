package com.mtpiao;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class MyTest {

	@Test
	void contextLoads() {
		String str1="abc";
		String str2=new String("abc");
		
		System.out.println(str1==str2);
	}

}
