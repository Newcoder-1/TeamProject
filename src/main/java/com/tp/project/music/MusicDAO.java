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
	
	public void searchMusic(String word, HttpServletRequest req) {
		try {
			List<Music> musics = ss.getMapper(MusicMapper.class).searchMusic(word);
			req.setAttribute("musics", musics);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void mainMusic(HttpServletRequest req) {
		try {
			List<Music> musics = ss.getMapper(MusicMapper.class).mainMusic();
			req.setAttribute("musics", musics);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void genreMusic(String s_genre, HttpServletRequest req) {
		try {
			List<Music> musics = ss.getMapper(MusicMapper.class).genreMusic(s_genre);
			req.setAttribute("musics", musics);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void regMusic(Music m, HttpServletRequest req) {
		try {
			String date_String = m.getS_date_String();
			SimpleDateFormat sdf = new SimpleDateFormat("YYYYMMdd");
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
}














