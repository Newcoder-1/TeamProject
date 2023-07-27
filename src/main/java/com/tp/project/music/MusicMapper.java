package com.tp.project.music;

import java.util.List;

public interface MusicMapper {
	public abstract List<Music> searchMusic(String word);
}
