package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakSchedule
  implements Parcelable
{
  public static final Parcelable.Creator<SyncbakSchedule> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("name")
  private String a;
  @JsonProperty("description")
  private String b;
  @JsonProperty("episodeTitle")
  private String c;
  @JsonProperty("duration")
  private long d;
  @JsonProperty("startTime")
  private long e;
  
  public SyncbakSchedule() {}
  
  public SyncbakSchedule(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = paramParcel.readString();
    d = paramParcel.readLong();
    e = paramParcel.readLong();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getDescription()
  {
    return b;
  }
  
  public long getDuration()
  {
    return d;
  }
  
  public String getEpisodeTitle()
  {
    return c;
  }
  
  public String getName()
  {
    return a;
  }
  
  public long getStartTime()
  {
    return e;
  }
  
  public void setDescription(String paramString)
  {
    b = paramString;
  }
  
  public void setDuration(long paramLong)
  {
    d = paramLong;
  }
  
  public void setEpisodeTitle(String paramString)
  {
    c = paramString;
  }
  
  public void setName(String paramString)
  {
    a = paramString;
  }
  
  public void setStartTime(long paramLong)
  {
    e = paramLong;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeLong(d);
    paramParcel.writeLong(e);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.SyncbakSchedule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */