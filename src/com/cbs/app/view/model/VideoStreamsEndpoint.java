package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class VideoStreamsEndpoint
  extends ResponseModel
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<VideoStreamsEndpoint> CREATOR = new Parcelable.Creator()
  {
    public final VideoStreamsEndpoint createFromParcel(Parcel paramAnonymousParcel)
    {
      return new VideoStreamsEndpoint(paramAnonymousParcel, null);
    }
    
    public final VideoStreamsEndpoint[] newArray(int paramAnonymousInt)
    {
      return new VideoStreamsEndpoint[paramAnonymousInt];
    }
  };
  @JsonProperty("concurrentStreamCount")
  private long concurrentStreamCount;
  @JsonProperty("contentId")
  private String contentId;
  @JsonProperty("mediaTime")
  private long mediaTime;
  @JsonProperty("overThreshold")
  private boolean overThreshold = true;
  @JsonProperty("success")
  private boolean success;
  
  public VideoStreamsEndpoint() {}
  
  private VideoStreamsEndpoint(Parcel paramParcel)
  {
    contentId = paramParcel.readString();
    concurrentStreamCount = paramParcel.readLong();
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      overThreshold = bool1;
      mediaTime = paramParcel.readLong();
      if (paramParcel.readByte() == 0) {
        break label69;
      }
    }
    label69:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      success = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getConcurrentStreamCount()
  {
    return concurrentStreamCount;
  }
  
  public String getContentId()
  {
    return contentId;
  }
  
  public long getMediaTime()
  {
    return mediaTime;
  }
  
  public boolean isOverThreshold()
  {
    return overThreshold;
  }
  
  public boolean isSuccess()
  {
    return success;
  }
  
  public void setConcurrentStreamCount(long paramLong)
  {
    concurrentStreamCount = paramLong;
  }
  
  public void setContentId(String paramString)
  {
    contentId = paramString;
  }
  
  public void setMediaTime(long paramLong)
  {
    mediaTime = paramLong;
  }
  
  public void setOverThreshold(boolean paramBoolean)
  {
    overThreshold = paramBoolean;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    success = paramBoolean;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    byte b2 = 1;
    paramParcel.writeString(contentId);
    paramParcel.writeLong(concurrentStreamCount);
    if (overThreshold)
    {
      b1 = 1;
      paramParcel.writeByte(b1);
      paramParcel.writeLong(mediaTime);
      if (!success) {
        break label62;
      }
    }
    label62:
    for (byte b1 = b2;; b1 = 0)
    {
      paramParcel.writeByte(b1);
      return;
      b1 = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.VideoStreamsEndpoint
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */