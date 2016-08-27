package com.yc.connTest;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ConnTest {
	@Autowired
	/*private SqlSessionFactory sqlSessionFactory;*/
	private DataSource dataSource;
	@Test
	public void test() {
		Connection con=null;
		try {
			con = dataSource.getConnection();
			assertNotNull("数据库连接失败!!!", con);
			System.out.println(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
