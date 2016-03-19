package com.cbs.app.androiddata.model.rest;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class VideoStreamsEndpoint
  extends ResponseModel
  implements Parcelable
{
  public static final Parcelable.Creator<VideoStreamsEndpoint> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("contentId")
  private String a;
  @JsonProperty("concurrentStreamCount")
  private long b;
  @JsonProperty("overThreshold")
  private boolean c = true;
  @JsonProperty("mediaTime")
  private long d;
  @JsonProperty("success")
  private boolean e;
  @JsonProperty("errors")
  private String f;
  @JsonProperty("isLoggedIn")
  private boolean g;
  
  public VideoStreamsEndpoint() {}
  
  private VideoStreamsEndpoint(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readLong();
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      c = bool1;
      d = paramParcel.readLong();
      if (paramParcel.readByte() == 0) {
        break label69;
      }
    }
    label69:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      e = bool1;
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
    return b;
  }
  
  public String getContentId()
  {
    return a;
  }
  
  public String getErrors()
  {
    return f;
  }
  
  public long getMediaTime()
  {
    return d;
  }
  
  public void setConcurrentStreamCount(long paramLong)
  {
    b = paramLong;
  }
  
  public void setContentId(String paramString)
  {
    a = paramString;
  }
  
  public void setErrors(String paramString)
  {
    f = paramString;
  }
  
  public void setIsLoggedIn(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void setMediaTime(long paramLong)
  {
    d = paramLong;
  }
  
  public void setOverThreshold(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    byte b2 = 1;
    paramParcel.writeString(a);
    paramParcel.writeLong(b);
    if (c)
    {
      b1 = 1;
      paramParcel.writeByte(b1);
      paramParcel.writeLong(d);
      if (!e) {
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
 * Qualified Name:     com.cbs.app.androiddata.model.rest.VideoStreamsEndpoint
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */