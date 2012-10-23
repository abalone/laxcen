package com.laxcen.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.laxcen.dao.MediaDao;
import com.laxcen.model.Article;


public class MediaService{
	
	private MediaDao mediaDao;

	final static Logger logger = LoggerFactory.getLogger(MediaService.class);
	
	public List<Article> retrieveAllArticles(){
		return mediaDao.retrieveAllArticles();
	}

	public MediaDao getMediaDao() {
		return mediaDao;
	}

	public void setMediaDao(MediaDao mediaDao) {
		this.mediaDao = mediaDao;
	}
	
	
}
