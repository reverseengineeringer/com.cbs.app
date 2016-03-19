package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class HistoryItem
  implements Parcelable
{
  public static final Parcelable.Creator<HistoryItem> CREATOR = new Parcelable.Creator() {};
  private long a;
  private String b;
  private long c;
  private long d;
  private String e;
  private VideoData f;
  
  public HistoryItem() {}
  
  protected HistoryItem(Parcel paramParcel)
  {
    a = paramParcel.readLong();
    b = paramParcel.readString();
    c = paramParcel.readLong();
    d = paramParcel.readLong();
    e = paramParcel.readString();
    f = ((VideoData)paramParcel.readParcelable(VideoData.class.getClassLoader()));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public VideoData getCanModel()
  {
    return f;
  }
  
  public String getContentId()
  {
    return b;
  }
  
  public String getContentTitle()
  {
    return e;
  }
  
  public long getMedTime()
  {
    return d;
  }
  
  public long getTimestamp()
  {
    return c;
  }
  
  public long getUserId()
  {
    return a;
  }
  
  public void setCanModel(VideoData paramVideoData)
  {
    f = paramVideoData;
  }
  
  public void setContentId(String paramString)
  {
    b = paramString;
  }
  
  public void setContentTitle(String paramString)
  {
    e = paramString;
  }
  
  public void setMedTime(long paramLong)
  {
    d = paramLong;
  }
  
  public void setTimestamp(long paramLong)
  {
    c = paramLong;
  }
  
  public void setUserId(long paramLong)
  {
    a = paramLong;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(a);
    paramParcel.writeString(b);
    paramParcel.writeLong(c);
    paramParcel.writeLong(d);
    paramParcel.writeString(e);
    paramParcel.writeParcelable(f, 0);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.HistoryItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */