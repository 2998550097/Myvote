package com.yc.vote.handler;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.vote.entity.Subject;
import com.yc.vote.service.SubjectService;

@Controller
@RequestMapping("/subject")
public class SubjectHandler {
	@Autowired
	private SubjectService subjectService;
	
	@RequestMapping("/get")
	public void getAllList(PrintWriter out){
			System.out.println("我进来了...");
			List<Subject> subject=subjectService.getAllList();
			Gson gson=new Gson();
			String outJsonStr=gson.toJson(subject);
			out.println(outJsonStr);
			out.flush();
			out.close();
	}
	
	@RequestMapping("/view")
	public String getSubjectById(int vsId,ModelMap map){
			System.out.println("我进来了...");
			Subject subject=subjectService.getSubjectById(vsId);
			map.put("subject", subject);
			return "view";
	}
}
