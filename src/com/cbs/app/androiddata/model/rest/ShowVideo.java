package com.cbs.app.androiddata.model.rest;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.cbs.app.androiddata.model.VideoData;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowVideo
  implements Parcelable
{
  public static final Parcelable.Creator<ShowVideo> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("showId")
  private Integer a;
  @JsonProperty("canVideos")
  private List<VideoData> b = new ArrayList();
  private String c;
  
  public ShowVideo() {}
  
  public ShowVideo(Parcel paramParcel)
  {
    a = Integer.valueOf(paramParcel.readInt());
    b = paramParcel.readArrayList(ShowVideo.class.getClassLoader());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Integer getShowId()
  {
    return a;
  }
  
  public String getShowTitle()
  {
    return c;
  }
  
  public List<VideoData> getVideoList()
  {
    return b;
  }
  
  public void setShowId(Integer paramInteger)
  {
    a = paramInteger;
  }
  
  public void setShowTitle(String paramString)
  {
    c = paramString;
  }
  
  public void setVideoList(List<VideoData> paramList)
  {
    b = paramList;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a.intValue());
    paramParcel.writeTypedList(b);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.ShowVideo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */