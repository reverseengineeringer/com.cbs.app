package com.cbs.app.view.model.syncbak;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakSchedule
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<SyncbakSchedule> CREATOR = new Parcelable.Creator()
  {
    public final SyncbakSchedule createFromParcel(Parcel paramAnonymousParcel)
    {
      return new SyncbakSchedule(paramAnonymousParcel);
    }
    
    public final SyncbakSchedule[] newArray(int paramAnonymousInt)
    {
      return new SyncbakSchedule[paramAnonymousInt];
    }
  };
  @JsonProperty("description")
  private String description;
  @JsonProperty("duration")
  private long duration;
  @JsonProperty("episodeTitle")
  private String episodeTitle;
  @JsonProperty("name")
  private String name;
  @JsonProperty("startTime")
  private long startTime;
  
  public SyncbakSchedule() {}
  
  public SyncbakSchedule(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    name = paramParcel.readString();
    description = paramParcel.readString();
    episodeTitle = paramParcel.readString();
    duration = paramParcel.readLong();
    startTime = paramParcel.readLong();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public long getDuration()
  {
    return duration;
  }
  
  public String getEpisodeTitle()
  {
    return episodeTitle;
  }
  
  public String getName()
  {
    return name;
  }
  
  public long getStartTime()
  {
    return startTime;
  }
  
  public void setDescription(String paramString)
  {
    description = paramString;
  }
  
  public void setDuration(long paramLong)
  {
    duration = paramLong;
  }
  
  public void setEpisodeTitle(String paramString)
  {
    episodeTitle = paramString;
  }
  
  public void setName(String paramString)
  {
    name = paramString;
  }
  
  public void setStartTime(long paramLong)
  {
    startTime = paramLong;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(name);
    paramParcel.writeString(description);
    paramParcel.writeString(episodeTitle);
    paramParcel.writeLong(duration);
    paramParcel.writeLong(startTime);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.syncbak.SyncbakSchedule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */