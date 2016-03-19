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
public class VideoSection
  implements Parcelable
{
  public static final Parcelable.Creator<VideoSection> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("itemList")
  private List<VideoData> a = new ArrayList();
  @JsonProperty("itemCount")
  private long b;
  @JsonProperty("action")
  private String c;
  @JsonProperty("resultSize")
  private long d;
  @JsonProperty("errors")
  private List<String> e = new ArrayList();
  
  public VideoSection() {}
  
  private VideoSection(Parcel paramParcel)
  {
    paramParcel.readTypedList(a, VideoData.CREATOR);
    b = paramParcel.readLong();
    c = paramParcel.readString();
    d = paramParcel.readLong();
    paramParcel.readList(e, String.class.getClassLoader());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAction()
  {
    return c;
  }
  
  public List<String> getErrors()
  {
    return e;
  }
  
  public long getItemCount()
  {
    return b;
  }
  
  public List<VideoData> getItemList()
  {
    return a;
  }
  
  public long getResultSize()
  {
    return d;
  }
  
  public void setAction(String paramString)
  {
    c = paramString;
  }
  
  public void setErrors(List<String> paramList)
  {
    e = paramList;
  }
  
  public void setItemCount(long paramLong)
  {
    b = paramLong;
  }
  
  public void setItemList(List<VideoData> paramList)
  {
    a = paramList;
  }
  
  public void setResultSize(long paramLong)
  {
    d = paramLong;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(a);
    paramParcel.writeLong(b);
    paramParcel.writeString(c);
    paramParcel.writeLong(d);
    paramParcel.writeList(e);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.VideoSection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */