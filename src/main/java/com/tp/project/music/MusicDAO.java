package com.tp.project.music;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.tp.project.signUp.SignUpMapper;

@Service
public class MusicDAO {

	@Autowired
	private SqlSession ss;
	
//	public void searchMusic(String word, HttpServletRequest req) {
//		try {
//			List<Music> musics = ss.getMapper(MusicMapper.class).searchMusic(word);
//			req.setAttribute("musics", musics);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	
	// 음악 검색
	public Musics searchMusic(String word, HttpServletRequest req) {
		return new Musics(ss.getMapper(MusicMapper.class).searchMusic(word));
	}
	
	public void mainMusic(HttpServletRequest req) {
		try {
			List<Music> musics = ss.getMapper(MusicMapper.class).mainMusic();
			req.setAttribute("musics", musics);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// 장르
	public Musics genreMusic(String s_genre, HttpServletRequest req) {
		return new Musics(ss.getMapper(MusicMapper.class).genreMusic(s_genre));
	}
	
	public void mainMusic2(HttpServletRequest req) {
		try {
			List<Music> musics = ss.getMapper(MusicMapper.class).mainMusic();
			req.setAttribute("musics", musics);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// 장르
//	public void genreMusic(String s_genre, HttpServletRequest req) {
//		try {
//			List<Music> musics = ss.getMapper(MusicMapper.class).genreMusic(s_genre);
//			req.setAttribute("musics", musics);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	
	// 음악등록
	public void regMusic(Music m, HttpServletRequest req) {
		try {
			String date_String = m.getS_date_String();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			Date s_date = sdf.parse(date_String);
			m.setS_date(s_date);
			
			MusicMapper mm = ss.getMapper(MusicMapper.class);
			
			if (mm.regMusic(m) == 1) {
				req.setAttribute("result", "성공");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 음악게시판 db 개수 리턴
	public int searchMusicCount(HttpServletRequest req, String word) {
		return ss.getMapper(MusicMapper.class).searchMusicCount(word);
	}
	
	public int getMusicCount(HttpServletRequest req, String s_genre) {
		return ss.getMapper(MusicMapper.class).genreMusicCount(s_genre);
	}
	
	// 음악게시판 페이지 수  리턴
	public int searchMusicPageCount(HttpServletRequest req, String word) {
		int count = searchMusicCount(req, word);
		int pageCount = 0;
		int numPerPage = 10; // 페이지당 보여줄 항목 수
		pageCount = count / numPerPage;
		if (count % numPerPage != 0)
			pageCount++;
		return pageCount;
	}
	
	public int genreMusicPageCount(String s_genre) {
		int count = genreMusicCount(s_genre);
		int pageCount = 0;
		int numPerPage = 10; // 페이지당 보여줄 항목 수
		pageCount = count / numPerPage;
		if (count % numPerPage != 0)
			pageCount++;
		return pageCount;
	}

}














