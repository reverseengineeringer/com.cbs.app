package com.cbs.app.view.model.syncbak;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakChannel
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<SyncbakChannel> CREATOR = new Parcelable.Creator()
  {
    public final SyncbakChannel createFromParcel(Parcel paramAnonymousParcel)
    {
      return new SyncbakChannel(paramAnonymousParcel);
    }
    
    public final SyncbakChannel[] newArray(int paramAnonymousInt)
    {
      return new SyncbakChannel[paramAnonymousInt];
    }
  };
  @JsonProperty("description")
  private String description;
  @JsonProperty("hasImage")
  private boolean hasImage;
  @JsonProperty("imageId")
  private int imageId;
  @JsonProperty("mediaId")
  private int mediaId;
  @JsonProperty("name")
  private String name;
  @JsonProperty("stationId")
  private int stationId;
  @JsonProperty("statusCode")
  private int statusCode;
  @JsonProperty("statusMessage")
  private String statusMessage;
  @JsonProperty("supportsClosedCaptions")
  private boolean supportsClosedCaptions;
  
  public SyncbakChannel() {}
  
  public SyncbakChannel(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    boolean bool2 = false;
    statusCode = paramParcel.readInt();
    statusMessage = paramParcel.readString();
    mediaId = paramParcel.readInt();
    stationId = paramParcel.readInt();
    name = paramParcel.readString();
    description = paramParcel.readString();
    if (paramParcel.readInt() == 0)
    {
      bool1 = false;
      hasImage = bool1;
      if (paramParcel.readInt() != 0) {
        break label92;
      }
    }
    label92:
    for (boolean bool1 = bool2;; bool1 = true)
    {
      supportsClosedCaptions = bool1;
      imageId = paramParcel.readInt();
      return;
      bool1 = true;
      break;
    }
  }
  
  public int describeContents()
  {
    return Long.valueOf(mediaId).intValue();
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public int getImageId()
  {
    return imageId;
  }
  
  public int getMediaId()
  {
    return mediaId;
  }
  
  public String getName()
  {
    return name;
  }
  
  public int getStationId()
  {
    return stationId;
  }
  
  public int getStatusCode()
  {
    return statusCode;
  }
  
  public String getStatusMessage()
  {
    return statusMessage;
  }
  
  public boolean isHasImage()
  {
    return hasImage;
  }
  
  public boolean isSupportsClosedCaptions()
  {
    return supportsClosedCaptions;
  }
  
  public void setDescription(String paramString)
  {
    description = paramString;
  }
  
  public void setHasImage(boolean paramBoolean)
  {
    hasImage = paramBoolean;
  }
  
  public void setImageId(int paramInt)
  {
    imageId = paramInt;
  }
  
  public void setMediaId(int paramInt)
  {
    mediaId = paramInt;
  }
  
  public void setName(String paramString)
  {
    name = paramString;
  }
  
  public void setStationId(int paramInt)
  {
    stationId = paramInt;
  }
  
  public void setStatusCode(int paramInt)
  {
    statusCode = paramInt;
  }
  
  public void setStatusMessage(String paramString)
  {
    statusMessage = paramString;
  }
  
  public void setSupportsClosedCaptions(boolean paramBoolean)
  {
    supportsClosedCaptions = paramBoolean;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeInt(statusCode);
    paramParcel.writeString(statusMessage);
    paramParcel.writeInt(mediaId);
    paramParcel.writeInt(stationId);
    paramParcel.writeString(name);
    paramParcel.writeString(description);
    if (hasImage)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      if (!supportsClosedCaptions) {
        break label92;
      }
    }
    label92:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeInt(imageId);
      return;
      paramInt = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.syncbak.SyncbakChannel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */