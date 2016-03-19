package com.cbs.app.view.model;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.cbs.app.view.AbstractFragmentActivity;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Show
  implements Parcelable, Serializable, Comparable<Show>
{
  public static final Parcelable.Creator<Show> CREATOR = new Parcelable.Creator()
  {
    public final Show createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Show(paramAnonymousParcel);
    }
    
    public final Show[] newArray(int paramAnonymousInt)
    {
      return new Show[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = 6566283690233200964L;
  @JsonProperty("about")
  private String about;
  @JsonProperty("category")
  private String category;
  @JsonProperty("category_id")
  private String categoryId;
  @JsonProperty("content_type_show_nid")
  private String contentTypeShowNid;
  @JsonProperty("filepath_show_connect_img")
  private String filepathShowConnectImage;
  @JsonProperty("filepath_show_thumbnail")
  private String filepathShowThumbnail;
  @JsonProperty("filepath_win8_showart_large")
  private String filepathWin8ShowartLarge;
  @JsonProperty("id")
  private long id;
  @JsonProperty("k")
  private String k;
  @JsonProperty("keywordlist")
  private ArrayList<String> keywordList;
  @JsonProperty("keywords")
  private String keywords;
  @JsonProperty("link")
  private String link;
  @JsonProperty("season")
  private int season;
  @JsonProperty("show_id")
  private long showId;
  @JsonProperty("show_thumbnail")
  private String showThumbnail;
  @JsonProperty("title")
  private String title;
  @JsonProperty("tune_in_time")
  private String tuneInTime;
  @JsonProperty("type")
  private String type;
  
  public Show() {}
  
  public Show(Parcel paramParcel)
  {
    keywordList = new ArrayList();
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    id = paramParcel.readLong();
    type = paramParcel.readString();
    link = paramParcel.readString();
    category = paramParcel.readString();
    showId = paramParcel.readLong();
    title = paramParcel.readString();
    season = paramParcel.readInt();
    k = paramParcel.readString();
    showThumbnail = paramParcel.readString();
    filepathShowThumbnail = paramParcel.readString();
    about = paramParcel.readString();
    categoryId = paramParcel.readString();
    tuneInTime = paramParcel.readString();
    contentTypeShowNid = paramParcel.readString();
    filepathShowConnectImage = paramParcel.readString();
    filepathWin8ShowartLarge = paramParcel.readString();
    keywords = paramParcel.readString();
    paramParcel = paramParcel.readArrayList(String.class.getClassLoader()).iterator();
    while (paramParcel.hasNext())
    {
      Object localObject = paramParcel.next();
      if ((localObject != null) && ((localObject instanceof String))) {
        keywordList.add((String)localObject);
      }
    }
  }
  
  public int compareTo(Show paramShow)
  {
    return title.compareTo(title);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof ShowConfig))
    {
      bool1 = bool2;
      if (((ShowConfig)paramObject).getId() == id) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public String getAbout()
  {
    return about;
  }
  
  public String getCategory()
  {
    return category;
  }
  
  public String getCategoryId()
  {
    return categoryId;
  }
  
  public String getContentTypeShowNid()
  {
    return contentTypeShowNid;
  }
  
  public List<Episode> getEpisodes(Context paramContext)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramContext != null)
    {
      localObject1 = localObject2;
      if ((paramContext instanceof AbstractFragmentActivity)) {
        localObject1 = ((AbstractFragmentActivity)paramContext).a(getId());
      }
    }
    return (List<Episode>)localObject1;
  }
  
  public String getFilepathShowConnectImage()
  {
    return filepathShowConnectImage;
  }
  
  public String getFilepathShowThumbnail()
  {
    return filepathShowThumbnail;
  }
  
  public String getFilepathWin8ShowartLarge()
  {
    return filepathWin8ShowartLarge;
  }
  
  public long getId()
  {
    return id;
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
  
  public String getLink()
  {
    return link;
  }
  
  public int getSeason()
  {
    return season;
  }
  
  public long getShowId()
  {
    return showId;
  }
  
  public String getShowThumbnail()
  {
    return showThumbnail;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public String getTuneInTime()
  {
    return tuneInTime;
  }
  
  public String getType()
  {
    return type;
  }
  
  public int hashCode()
  {
    return 48;
  }
  
  public void setAbout(String paramString)
  {
    about = paramString;
  }
  
  public void setCategory(String paramString)
  {
    category = paramString;
  }
  
  public void setCategoryId(String paramString)
  {
    categoryId = paramString;
  }
  
  public void setContentTypeShowNid(String paramString)
  {
    contentTypeShowNid = paramString;
  }
  
  public void setFilepathShowConnectImage(String paramString)
  {
    filepathShowConnectImage = paramString;
  }
  
  public void setFilepathShowThumbnail(String paramString)
  {
    filepathShowThumbnail = paramString;
  }
  
  public void setFilepathWin8ShowartLarge(String paramString)
  {
    filepathWin8ShowartLarge = paramString;
  }
  
  public void setId(long paramLong)
  {
    id = paramLong;
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
  
  public void setLink(String paramString)
  {
    link = paramString;
  }
  
  public void setSeason(int paramInt)
  {
    season = paramInt;
  }
  
  public void setShowId(long paramLong)
  {
    showId = paramLong;
  }
  
  public void setShowThumbnail(String paramString)
  {
    showThumbnail = paramString;
  }
  
  public void setTitle(String paramString)
  {
    title = paramString;
  }
  
  public void setTuneInTime(String paramString)
  {
    tuneInTime = paramString;
  }
  
  public void setType(String paramString)
  {
    type = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(id);
    paramParcel.writeString(type);
    paramParcel.writeString(link);
    paramParcel.writeString(category);
    paramParcel.writeLong(showId);
    paramParcel.writeString(title);
    paramParcel.writeInt(season);
    paramParcel.writeString(k);
    paramParcel.writeString(showThumbnail);
    paramParcel.writeString(filepathShowThumbnail);
    paramParcel.writeString(about);
    paramParcel.writeString(categoryId);
    paramParcel.writeString(tuneInTime);
    paramParcel.writeString(contentTypeShowNid);
    paramParcel.writeString(filepathShowConnectImage);
    paramParcel.writeString(filepathWin8ShowartLarge);
    paramParcel.writeString(keywords);
    if (keywordList == null) {
      keywordList = new ArrayList();
    }
    paramParcel.writeList(keywordList);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.Show
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */