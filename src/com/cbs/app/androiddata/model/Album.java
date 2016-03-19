package com.cbs.app.androiddata.model;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.AlbumPhotoCollection;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Album
  extends ResponseModel
{
  @JsonProperty("id")
  private long a;
  @JsonProperty("type")
  private String b;
  @JsonProperty("description")
  private String c;
  @JsonProperty("title")
  private String d;
  @JsonProperty("show_id")
  private long e;
  @JsonProperty("album_id")
  private long f;
  @JsonProperty("photo_nids")
  private ArrayList<Long> g;
  @JsonProperty("keywords")
  private String h;
  @JsonProperty("k")
  private String i;
  @JsonProperty("filepath")
  private String j;
  @JsonProperty("keywordList")
  private ArrayList<String> k;
  @JsonProperty("live_date_sec")
  private long l;
  @JsonProperty("sub_title")
  private String m;
  @JsonProperty("is_flock")
  private int n;
  @JsonProperty("albumPhotoCollection")
  private AlbumPhotoCollection o;
  @JsonProperty("week_number")
  private int p;
  @JsonProperty("gallery_type")
  private int q;
  @JsonProperty("total_photos")
  private int r;
  @JsonProperty("twitter")
  private String s;
  @JsonProperty("facebook")
  private String t;
  @JsonProperty("pub_year")
  private int u;
  
  public long getAlbumId()
  {
    return f;
  }
  
  public AlbumPhotoCollection getAlbumPhotoCollectoin()
  {
    return o;
  }
  
  public String getDescription()
  {
    return c;
  }
  
  public String getFacebook()
  {
    return t;
  }
  
  public String getFilePath()
  {
    return j;
  }
  
  public int getGalleryType()
  {
    return q;
  }
  
  public long getId()
  {
    return a;
  }
  
  public int getIsFlock()
  {
    return n;
  }
  
  public String getK()
  {
    return i;
  }
  
  public ArrayList<String> getKeywordList()
  {
    return k;
  }
  
  public String getKeywords()
  {
    return h;
  }
  
  public long getLiveDateSec()
  {
    return l;
  }
  
  public ArrayList<Long> getPhotoNids()
  {
    return g;
  }
  
  public int getPubYear()
  {
    return u;
  }
  
  public long getShowId()
  {
    return e;
  }
  
  public String getSubTitle()
  {
    return m;
  }
  
  public String getTitle()
  {
    return d;
  }
  
  public int getTotalPhotos()
  {
    return r;
  }
  
  public String getTwitter()
  {
    return s;
  }
  
  public String getType()
  {
    return b;
  }
  
  public int getWeekNumber()
  {
    return p;
  }
  
  public void setAlbumId(long paramLong)
  {
    f = paramLong;
  }
  
  public void setAlbumPhotoCollection(AlbumPhotoCollection paramAlbumPhotoCollection)
  {
    o = paramAlbumPhotoCollection;
  }
  
  public void setDescription(String paramString)
  {
    c = paramString;
  }
  
  public void setFacebook(String paramString)
  {
    t = paramString;
  }
  
  public void setFilePath(String paramString)
  {
    j = paramString;
  }
  
  public void setGalleryType(int paramInt)
  {
    q = paramInt;
  }
  
  public void setId(long paramLong)
  {
    a = paramLong;
  }
  
  public void setIsFlock(int paramInt)
  {
    n = paramInt;
  }
  
  public void setK(String paramString)
  {
    i = paramString;
  }
  
  public void setKeywordList(ArrayList<String> paramArrayList)
  {
    k = paramArrayList;
  }
  
  public void setKeywords(String paramString)
  {
    h = paramString;
  }
  
  public void setLiveDateSec(long paramLong)
  {
    l = paramLong;
  }
  
  public void setPhotoNids(ArrayList<Long> paramArrayList)
  {
    g = paramArrayList;
  }
  
  public void setPubYear(int paramInt)
  {
    u = paramInt;
  }
  
  public void setShowId(long paramLong)
  {
    e = paramLong;
  }
  
  public void setSubTitle(String paramString)
  {
    m = paramString;
  }
  
  public void setTitle(String paramString)
  {
    d = paramString;
  }
  
  public void setTotalPhotos(int paramInt)
  {
    r = paramInt;
  }
  
  public void setTwitter(String paramString)
  {
    s = paramString;
  }
  
  public void setType(String paramString)
  {
    b = paramString;
  }
  
  public void setWeekNumber(int paramInt)
  {
    p = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.Album
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */