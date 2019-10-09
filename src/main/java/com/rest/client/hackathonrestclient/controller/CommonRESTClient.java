package com.rest.client.hackathonrestclient.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.rest.client.hackathonrestclient.repository.HackAPIRepo;

@RestController
//@RequestMapping(path = "/app")
public class CommonRESTClient {

	@Autowired
	HackAPIRepo repo;
	
	@RequestMapping("/hello")
	public List<Map<String,Object>> users() {
		return repo.getUsers();
	}
	
	@RequestMapping("/getActivity")
	public List<String> getActivity() {
		return repo.getActivities();
	}
	
	@RequestMapping("/getActivityByUser")
	public String getActivityByUser(@RequestParam("userId") String userId, @RequestParam("activityType") String activityType) {
		return (String) repo.getActivityByUser(userId, activityType);
	}
	
	
}
