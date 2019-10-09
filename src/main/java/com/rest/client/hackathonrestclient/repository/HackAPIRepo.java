package com.rest.client.hackathonrestclient.repository;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class HackAPIRepo {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<Map<String,Object>> getUsers() {
		List<Map<String,Object>> list = jdbcTemplate.queryForList("select first_name,username,last_name,email,is_admin from GUSER;");
		return list;
	}

	public List<String> getActivities() {
		List<String> list = jdbcTemplate.queryForList("select GACTIVITY_NAME from GACTIVITY;", String.class);
		return list;
	}

	public Object getActivityByUser(String userId, String activityType) {
		String value = jdbcTemplate.queryForObject("select lgup.gpoint from guser gu, gactivity ga, lnk_guser_gpoint lgup\n" + 
				"		where gu.email = ?\n" + 
				"		and ga.gactivity_id =  ?\n" + 
				"		and  gu.guser_id = lgup.guser_id\n" + 
				"		and lgup.gactivity_id = ga.gactivity_id\n" + 
				"		order by lgup.create_date desc;",new Object[] {userId, activityType}, String.class);		
		return value;
		

		
	}

}
