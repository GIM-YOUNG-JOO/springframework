package com.mycompany.springframework;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit.jupiter.web.SpringJUnitWebConfig;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

//Test 메소드 실행시켜주는 Runner 지정
@RunWith(SpringRunner.class)

@SpringJUnitWebConfig(locations = {
	"classpath:spring/root/*.xml",
	"classpath:spring/dispatcher/*.xml"
})

// DB 연동시 테스트 후에 롤백을 해서 DB의 상태를 유지
@Transactional
@Rollback(true) // 기본값이 true
public class Ch16JunitTest {
	
}
