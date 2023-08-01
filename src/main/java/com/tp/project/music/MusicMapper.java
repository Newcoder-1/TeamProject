package com.tp.project.music;

import java.util.List;

import com.tp.project.page.Criteria;

public interface MusicMapper {
	public abstract List<Music> searchMusic(String word);
	public abstract List<Music> mainMusic();
	public abstract List<Music> genreMusic(String s_genre);
	public abstract List<Music> getListPaging(Criteria cri);
}
