package com.tp.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tp.project.music.MusicDAO;

@Controller
public class MusicController {

	@Autowired MusicDAO mDAO;
	
	// 검색
	@RequestMapping(value = "/search.do", method = RequestMethod.GET )
	public String searchMusic(String word, HttpServletRequest req) {
		mDAO.searchMusic(word, req);
		return "test";
	}
}
