package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Album
  extends ResponseModel
{
  @JsonProperty("album_id")
  private long albumId;
  @JsonProperty("albumPhotoCollection")
  private AlbumPhotoCollection albumPhotoCollection;
  @JsonProperty("description")
  private String description;
  @JsonProperty("facebook")
  private String facebook;
  @JsonProperty("filepath")
  private String filePath;
  @JsonProperty("gallery_type")
  private int galleryType;
  @JsonProperty("id")
  private long id;
  @JsonProperty("is_flock")
  private int isFlock;
  @JsonProperty("k")
  private String k;
  @JsonProperty("keywordList")
  private ArrayList<String> keywordList;
  @JsonProperty("keywords")
  private String keywords;
  @JsonProperty("live_date_sec")
  private long liveDateSec;
  @JsonProperty("photo_nids")
  private ArrayList<Long> photoNids;
  @JsonProperty("pub_year")
  private int pubYear;
  @JsonProperty("show_id")
  private long showId;
  @JsonProperty("sub_title")
  private String subTitle;
  @JsonProperty("title")
  private String title;
  @JsonProperty("total_photos")
  private int totalPhotos;
  @JsonProperty("twitter")
  private String twitter;
  @JsonProperty("type")
  private String type;
  @JsonProperty("week_number")
  private int weekNumber;
  
  public long getAlbumId()
  {
    return albumId;
  }
  
  public AlbumPhotoCollection getAlbumPhotoCollectoin()
  {
    return albumPhotoCollection;
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public String getFacebook()
  {
    return facebook;
  }
  
  public String getFilePath()
  {
    return filePath;
  }
  
  public int getGalleryType()
  {
    return galleryType;
  }
  
  public long getId()
  {
    return id;
  }
  
  public int getIsFlock()
  {
    return isFlock;
  }
  
  public String getK()
  {
    return k;
  }
  
  public ArrayList<String> getKeywordList()
  {
    return keywordList;
  }
  
  public String getKeywords()
  {
    return keywords;
  }
  
  public long getLiveDateSec()
  {
    return liveDateSec;
  }
  
  public ArrayList<Long> getPhotoNids()
  {
    return photoNids;
  }
  
  public int getPubYear()
  {
    return pubYear;
  }
  
  public long getShowId()
  {
    return showId;
  }
  
  public String getSubTitle()
  {
    return subTitle;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public int getTotalPhotos()
  {
    return totalPhotos;
  }
  
  public String getTwitter()
  {
    return twitter;
  }
  
  public String getType()
  {
    return type;
  }
  
  public int getWeekNumber()
  {
    return weekNumber;
  }
  
  public void setAlbumId(long paramLong)
  {
    albumId = paramLong;
  }
  
  public void setAlbumPhotoCollection(AlbumPhotoCollection paramAlbumPhotoCollection)
  {
    albumPhotoCollection = paramAlbumPhotoCollection;
  }
  
  public void setDescription(String paramString)
  {
    description = paramString;
  }
  
  public void setFacebook(String paramString)
  {
    facebook = paramString;
  }
  
  public void setFilePath(String paramString)
  {
    filePath = paramString;
  }
  
  public void setGalleryType(int paramInt)
  {
    galleryType = paramInt;
  }
  
  public void setId(long paramLong)
  {
    id = paramLong;
  }
  
  public void setIsFlock(int paramInt)
  {
    isFlock = paramInt;
  }
  
  public void setK(String paramString)
  {
    k = paramString;
  }
  
  public void setKeywordList(ArrayList<String> paramArrayList)
  {
    keywordList = paramArrayList;
  }
  
  public void setKeywords(String paramString)
  {
    keywords = paramString;
  }
  
  public void setLiveDateSec(long paramLong)
  {
    liveDateSec = paramLong;
  }
  
  public void setPhotoNids(ArrayList<Long> paramArrayList)
  {
    photoNids = paramArrayList;
  }
  
  public void setPubYear(int paramInt)
  {
    pubYear = paramInt;
  }
  
  public void setShowId(long paramLong)
  {
    showId = paramLong;
  }
  
  public void setSubTitle(String paramString)
  {
    subTitle = paramString;
  }
  
  public void setTitle(String paramString)
  {
    title = paramString;
  }
  
  public void setTotalPhotos(int paramInt)
  {
    totalPhotos = paramInt;
  }
  
  public void setTwitter(String paramString)
  {
    twitter = paramString;
  }
  
  public void setType(String paramString)
  {
    type = paramString;
  }
  
  public void setWeekNumber(int paramInt)
  {
    weekNumber = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.Album
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */