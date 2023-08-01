package com.tp.project;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.tp.project.music.Music;
import com.tp.project.music.MusicDAO;

import java.io.File;
import java.time.LocalDate;

@Controller
public class MusicController {

	@Autowired MusicDAO mDAO;
	
	// 검색
	@RequestMapping(value = "/search.do", method = RequestMethod.GET )
	public String searchMusic(String word, HttpServletRequest req) {
		mDAO.searchMusic(word, req);
		return "searchMain";
	}
	// 장르별
	@RequestMapping(value = "/genre.do", method = RequestMethod.GET )
	public String genreMusic(String s_genre, HttpServletRequest req) {
		mDAO.genreMusic(s_genre, req);
		return "genre";
	}
	// 음악등록 이동
	@RequestMapping(value = "/regMusic.go", method = RequestMethod.GET )
	public String goRegMusic(HttpServletRequest req) {
		
		return "regMusic";
	}
	// 음악등록 실행 
	@RequestMapping(value = "/regMusic.do", method = RequestMethod.POST )
	public String regMusic(@RequestParam("s_album_file") MultipartFile albumFile, Music m, HttpServletRequest req) {
		if (!albumFile.isEmpty()) {
			try {
				String uploadPath = "C:/Users/USER/Desktop/TeamProject2/TeamProject/src/main/webapp/resources/album/";
				String fileName = albumFile.getOriginalFilename();
				String realPath = uploadPath + fileName;
				m.setS_album(realPath);
				System.out.println(realPath);
			} catch (Exception e) {
				e.printStackTrace();
				return "regMusic";
			}
		}
		
		mDAO.regMusic(m, req);
		return "regMusic";
	}
}
