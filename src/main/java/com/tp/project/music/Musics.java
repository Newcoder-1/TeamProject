package com.tp.project.music;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Musics {
	private List<Music> music;
	public Musics() {
		// TODO Auto-generated constructor stub
	}
	public Musics(List<Music> music) {
		super();
		this.music = music;
	}
	public List<Music> getMusic() {
		return music;
	}
	@XmlElement
	public void setMusic(List<Music> music) {
		this.music = music;
	}
	
}
