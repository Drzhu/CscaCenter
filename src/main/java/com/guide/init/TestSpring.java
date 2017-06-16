/*package com.guide.init;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.guide.service.SubmitHospitalService;
import com.guide.service.THunitService;

@RunWith(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/java/com/guide/init/spring_mvc.xml"})
public class TestSpring {
	//@Resource(name = "tHunitService")
	@Autowired(required=true)
	private THunitService tHunitService;
	@Test
	public void t1() {
		System.err.println("ss");
		tHunitService.select_Pcode();
	}
}
*/