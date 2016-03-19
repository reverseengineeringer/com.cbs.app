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
public class ShowVideo
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<ShowVideo> CREATOR = new Parcelable.Creator()
  {
    public final ShowVideo createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ShowVideo(paramAnonymousParcel);
    }
    
    public final ShowVideo[] newArray(int paramAnonymousInt)
    {
      return new ShowVideo[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = 760768437262137750L;
  @JsonProperty("showId")
  private Integer showId;
  private String showTitle;
  @JsonProperty("canVideos")
  private List<VideoData> videoList = new ArrayList();
  
  public ShowVideo() {}
  
  public ShowVideo(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    showId = Integer.valueOf(paramParcel.readInt());
    videoList = paramParcel.readArrayList(ShowVideo.class.getClassLoader());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Integer getShowId()
  {
    return showId;
  }
  
  public String getShowTitle()
  {
    return showTitle;
  }
  
  public List<VideoData> getVideoList()
  {
    return videoList;
  }
  
  public void setShowId(Integer paramInteger)
  {
    showId = paramInteger;
  }
  
  public void setShowTitle(String paramString)
  {
    showTitle = paramString;
  }
  
  public void setVideoList(List<VideoData> paramList)
  {
    videoList = paramList;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(showId.intValue());
    paramParcel.writeTypedList(videoList);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.ShowVideo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */