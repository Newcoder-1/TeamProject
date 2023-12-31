package com.tp.project.music;

import java.util.List;

public interface MusicMapper {
	public abstract List<Music> mainMusic();
	
	public abstract List<Music> searchMusic(String word);
	public abstract int searchMusicCount(String word);
	
	public abstract List<Music> genreMusic(String s_genre);
	public abstract int genreMusicCount(String s_genre);
	
	public abstract int regMusic(Music m);
	
	public abstract int getMusicCount();
	
	public abstract List<Music> detailMusic(String s_no);
}
