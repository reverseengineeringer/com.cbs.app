package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakChannel
  implements Parcelable
{
  public static final Parcelable.Creator<SyncbakChannel> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("statusCode")
  private int a;
  @JsonProperty("statusMessage")
  private String b;
  @JsonProperty("mediaId")
  private int c;
  @JsonProperty("imageId")
  private int d;
  @JsonProperty("stationId")
  private int e;
  @JsonProperty("name")
  private String f;
  @JsonProperty("description")
  private String g;
  @JsonProperty("hasImage")
  private boolean h;
  @JsonProperty("supportsClosedCaptions")
  private boolean i;
  
  public SyncbakChannel() {}
  
  public SyncbakChannel(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readString();
    c = paramParcel.readInt();
    e = paramParcel.readInt();
    f = paramParcel.readString();
    g = paramParcel.readString();
    if (paramParcel.readInt() == 0)
    {
      bool1 = false;
      h = bool1;
      if (paramParcel.readInt() != 0) {
        break label96;
      }
    }
    label96:
    for (boolean bool1 = bool2;; bool1 = true)
    {
      i = bool1;
      d = paramParcel.readInt();
      return;
      bool1 = true;
      break;
    }
  }
  
  public int describeContents()
  {
    return Long.valueOf(c).intValue();
  }
  
  public String getDescription()
  {
    return g;
  }
  
  public int getImageId()
  {
    return d;
  }
  
  public int getMediaId()
  {
    return c;
  }
  
  public String getName()
  {
    return f;
  }
  
  public int getStationId()
  {
    return e;
  }
  
  public int getStatusCode()
  {
    return a;
  }
  
  public String getStatusMessage()
  {
    return b;
  }
  
  public void setDescription(String paramString)
  {
    g = paramString;
  }
  
  public void setHasImage(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void setImageId(int paramInt)
  {
    d = paramInt;
  }
  
  public void setMediaId(int paramInt)
  {
    c = paramInt;
  }
  
  public void setName(String paramString)
  {
    f = paramString;
  }
  
  public void setStationId(int paramInt)
  {
    e = paramInt;
  }
  
  public void setStatusCode(int paramInt)
  {
    a = paramInt;
  }
  
  public void setStatusMessage(String paramString)
  {
    b = paramString;
  }
  
  public void setSupportsClosedCaptions(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int j = 1;
    paramParcel.writeInt(a);
    paramParcel.writeString(b);
    paramParcel.writeInt(c);
    paramParcel.writeInt(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    if (h)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      if (!i) {
        break label92;
      }
    }
    label92:
    for (paramInt = j;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeInt(d);
      return;
      paramInt = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.SyncbakChannel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */