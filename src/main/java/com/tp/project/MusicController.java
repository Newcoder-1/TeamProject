package com.tp.project;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.tp.project.music.Music;
import com.tp.project.music.MusicDAO;
import com.tp.project.music.Musics;

import java.io.File;
import java.time.LocalDate;

@Controller
public class MusicController {

	@Autowired MusicDAO mDAO;
	
	// 검색된 음악 JSON
	@RequestMapping(value = "/search.doJSON", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public @ResponseBody Musics searchMusicJSON(String word, HttpServletRequest req) {
		return mDAO.searchMusic(word, req);
	}
	
	// 검색
	@RequestMapping(value = "/search.do", method = RequestMethod.GET )
	public String searchMusic(String word, HttpServletRequest req) {
		mDAO.searchMusic(word, req);
		req.setAttribute("myWord", word);
		int count = mDAO.searchMusicCount(req, word);
		int pageNum = mDAO.searchMusicPageCount(req, word);
		req.setAttribute("count", count);
		req.setAttribute("pageNum", pageNum);
		req.setAttribute("page", 1);
		return "searchMain";
	}
	
	// 장르별
//	@RequestMapping(value = "/genre.do", method = RequestMethod.GET )
//	public String genreMusic(String s_genre, HttpServletRequest req) {
//		mDAO.genreMusic(s_genre, req);
//		return "genre";
//	}
	
	// 장르
	@RequestMapping(value = "/genre.doJSON", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public @ResponseBody Musics genreMusicJSON(String s_genre, HttpServletRequest req) {
		return mDAO.genreMusic(s_genre, req);
	}
	
	@RequestMapping(value = "/genre.do", method = RequestMethod.GET )
	public String genreMusic(String s_genre, HttpServletRequest req) {
		mDAO.genreMusic(s_genre, req);
		req.setAttribute("genre", s_genre);
		int count = mDAO.genreMusicCount(req, s_genre);
		int pageNum = mDAO.genreMusicPageCount(req, s_genre);
		req.setAttribute("count", count);
		req.setAttribute("pageNum", pageNum);
		req.setAttribute("page", 1);
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
				albumFile.transferTo(new File(realPath));
				m.setS_album(fileName);
			} catch (Exception e) {
				e.printStackTrace();
				return "regMusic";
			}
		}
		mDAO.regMusic(m, req);
		return "regMusic";
	}
	
	// 상세정보 이동 & 상세정보 불러오기
		@RequestMapping(value = "/detailMusic.go", method = RequestMethod.GET )
		public String detailMusic(String s_no, HttpServletRequest req) {
			mDAO.detailMusic(req, s_no);
			return "detailMusic";
		}
	
}
