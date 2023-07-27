package com.tp.project.music;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
}
