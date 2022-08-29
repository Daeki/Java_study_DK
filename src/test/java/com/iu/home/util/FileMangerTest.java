package com.iu.home.util;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.home.MyAbstractTest;

public class FileMangerTest extends MyAbstractTest {
	
	//@Autowired
	private FileManger fileManger;
	
	@Test
	public void saveFileTest() throws Exception {
		fileManger.saveFile("resources/upload/test");
		System.out.println("Finish-----");
	}

}
