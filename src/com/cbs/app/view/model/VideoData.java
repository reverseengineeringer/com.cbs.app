package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class VideoData
  implements Parcelable, Serializable, Comparable<VideoData>
{
  public static final Parcelable.Creator<VideoData> CREATOR = new Parcelable.Creator()
  {
    public final VideoData createFromParcel(Parcel paramAnonymousParcel)
    {
      return new VideoData(paramAnonymousParcel);
    }
    
    public final VideoData[] newArray(int paramAnonymousInt)
    {
      return new VideoData[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = 3363658314369614801L;
  private String _airDate;
  private String _pubDate;
  private long airDate;
  private String category;
  private long cbsShowId;
  private String cid;
  private String description;
  private String deviceType;
  private long duration;
  private String episodeNum;
  private boolean exclusive;
  private boolean fromMyCBS = false;
  private boolean fullEpisode;
  private String genre;
  private String label;
  private String pid;
  private String rating;
  private int seasonNum;
  private String seriesTitle;
  private String status;
  private String subscriptionLevel;
  private String thumbnail;
  private ArrayList<Thumbnail> thumbnailSet = null;
  private String title;
  private String topLevelCategory;
  private String url;
  
  public VideoData() {}
  
  public VideoData(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  public VideoData(@JsonProperty("pid") String paramString1, @JsonProperty("contentId") String paramString2, @JsonProperty("cbsShowId") long paramLong1, @JsonProperty("deviceType") String paramString3, @JsonProperty("genre") String paramString4, @JsonProperty("topLevelCategory") String paramString5, @JsonProperty("category") String paramString6, @JsonProperty("fullEpisode") boolean paramBoolean1, @JsonProperty("exclusive") boolean paramBoolean2, @JsonProperty("airDate") long paramLong2, @JsonProperty("_airDate") String paramString7, @JsonProperty("url") String paramString8, @JsonProperty("_pubDate") String paramString9, @JsonProperty("duration") long paramLong3, @JsonProperty("title") String paramString10, @JsonProperty("seriesTitle") String paramString11, @JsonProperty("description") String paramString12, @JsonProperty("rating") String paramString13, @JsonProperty("thumbnail") String paramString14, @JsonProperty("thumbnailSet") ArrayList<Thumbnail> paramArrayList, @JsonProperty("status") String paramString15, @JsonProperty("subscriptionLevel") String paramString16)
  {
    thumbnailSet = paramArrayList;
    pid = paramString1;
    cid = paramString2;
    setUrl(paramString8);
    cbsShowId = paramLong1;
    deviceType = paramString3;
    genre = paramString4;
    topLevelCategory = paramString5;
    category = paramString6;
    fullEpisode = paramBoolean1;
    exclusive = paramBoolean2;
    airDate = paramLong2;
    _airDate = paramString7;
    _pubDate = paramString9;
    duration = paramLong3;
    title = paramString10;
    description = paramString12;
    rating = paramString13;
    thumbnail = paramString14;
    status = paramString15;
    subscriptionLevel = paramString16;
    seriesTitle = paramString11;
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    boolean bool2 = true;
    pid = paramParcel.readString();
    cid = paramParcel.readString();
    url = paramParcel.readString();
    cbsShowId = paramParcel.readLong();
    deviceType = paramParcel.readString();
    genre = paramParcel.readString();
    topLevelCategory = paramParcel.readString();
    category = paramParcel.readString();
    if (paramParcel.readInt() == 1)
    {
      bool1 = true;
      fullEpisode = bool1;
      if (paramParcel.readInt() != 1) {
        break label245;
      }
    }
    label245:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      exclusive = bool1;
      airDate = paramParcel.readLong();
      _airDate = paramParcel.readString();
      _pubDate = paramParcel.readString();
      duration = paramParcel.readLong();
      title = paramParcel.readString();
      seriesTitle = paramParcel.readString();
      description = paramParcel.readString();
      rating = paramParcel.readString();
      seasonNum = paramParcel.readInt();
      episodeNum = paramParcel.readString();
      thumbnail = paramParcel.readString();
      if (thumbnailSet == null) {
        thumbnailSet = new ArrayList();
      }
      paramParcel.readList(thumbnailSet, Thumbnail.class.getClassLoader());
      label = paramParcel.readString();
      status = paramParcel.readString();
      subscriptionLevel = paramParcel.readString();
      return;
      bool1 = false;
      break;
    }
  }
  
  public int compareTo(VideoData paramVideoData)
  {
    return Long.valueOf(airDate).compareTo(Long.valueOf(airDate));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof VideoData))
    {
      bool1 = bool2;
      if (((VideoData)paramObject).getCid().equals(getCid())) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public long getAirDate()
  {
    return airDate;
  }
  
  public String getCategory()
  {
    return category;
  }
  
  public long getCbsShowId()
  {
    return cbsShowId;
  }
  
  public String getCid()
  {
    return cid;
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public String getDeviceType()
  {
    return deviceType;
  }
  
  public long getDuration()
  {
    return duration;
  }
  
  public String getEpisodeNum()
  {
    return episodeNum;
  }
  
  public boolean getFullEpisode()
  {
    return fullEpisode;
  }
  
  public String getGenre()
  {
    return genre;
  }
  
  public String getLabel()
  {
    return label;
  }
  
  public String getPid()
  {
    return pid;
  }
  
  public String getRating()
  {
    return rating;
  }
  
  public int getSeasonNum()
  {
    return seasonNum;
  }
  
  public String getSeriesTitle()
  {
    return seriesTitle;
  }
  
  public String getStatus()
  {
    return status;
  }
  
  public String getSubscriptionLevel()
  {
    return subscriptionLevel;
  }
  
  public String getThumbnail()
  {
    return thumbnail;
  }
  
  public List<Thumbnail> getThumbnailSet()
  {
    return thumbnailSet;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public String getTopLevelCategory()
  {
    return topLevelCategory;
  }
  
  public String getUrl()
  {
    return url;
  }
  
  public String get_airDate()
  {
    return _airDate;
  }
  
  public String get_pubDate()
  {
    return _pubDate;
  }
  
  public int hashCode()
  {
    return 51;
  }
  
  public boolean isExclusive()
  {
    return exclusive;
  }
  
  public boolean isFromMyCBS()
  {
    return fromMyCBS;
  }
  
  public void setAirDate(long paramLong)
  {
    airDate = paramLong;
  }
  
  public void setCbsShowId(long paramLong)
  {
    cbsShowId = paramLong;
  }
  
  public void setCid(String paramString)
  {
    cid = paramString;
  }
  
  public void setDescription(String paramString)
  {
    description = paramString;
  }
  
  public void setDeviceType(String paramString)
  {
    deviceType = paramString;
  }
  
  public void setEpisodeNum(String paramString)
  {
    episodeNum = paramString;
  }
  
  public void setFromMyCBS(boolean paramBoolean)
  {
    fromMyCBS = paramBoolean;
  }
  
  public void setFullEpisode(boolean paramBoolean)
  {
    fullEpisode = paramBoolean;
  }
  
  public void setLabel(String paramString)
  {
    label = paramString;
  }
  
  public void setPid(String paramString)
  {
    pid = paramString;
  }
  
  public void setSeasonNum(int paramInt)
  {
    seasonNum = paramInt;
  }
  
  public void setSeriesTitle(String paramString)
  {
    seriesTitle = paramString;
  }
  
  public void setStatus(String paramString)
  {
    status = paramString;
  }
  
  public void setSubscriptionLevel(String paramString)
  {
    subscriptionLevel = paramString;
  }
  
  public void setThumbnail(String paramString)
  {
    thumbnail = paramString;
  }
  
  public void setThumbnailSet(ArrayList<Thumbnail> paramArrayList)
  {
    thumbnailSet = paramArrayList;
  }
  
  public void setTitle(String paramString)
  {
    title = paramString;
  }
  
  public void setTopLevelCategory(String paramString)
  {
    topLevelCategory = paramString;
  }
  
  public void setUrl(String paramString)
  {
    url = paramString;
  }
  
  public void set_airDate(String paramString)
  {
    _airDate = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeString(pid);
    paramParcel.writeString(cid);
    paramParcel.writeString(url);
    paramParcel.writeLong(cbsShowId);
    paramParcel.writeString(deviceType);
    paramParcel.writeString(genre);
    paramParcel.writeString(topLevelCategory);
    paramParcel.writeString(category);
    if (fullEpisode)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      if (!exclusive) {
        break label238;
      }
    }
    label238:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeLong(airDate);
      paramParcel.writeString(_airDate);
      paramParcel.writeString(_pubDate);
      paramParcel.writeLong(duration);
      paramParcel.writeString(title);
      paramParcel.writeString(seriesTitle);
      paramParcel.writeString(description);
      paramParcel.writeString(rating);
      paramParcel.writeInt(seasonNum);
      paramParcel.writeString(episodeNum);
      paramParcel.writeString(thumbnail);
      if (thumbnailSet == null) {
        thumbnailSet = new ArrayList();
      }
      paramParcel.writeList(thumbnailSet);
      paramParcel.writeString(label);
      paramParcel.writeString(status);
      paramParcel.writeString(subscriptionLevel);
      return;
      paramInt = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.VideoData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */