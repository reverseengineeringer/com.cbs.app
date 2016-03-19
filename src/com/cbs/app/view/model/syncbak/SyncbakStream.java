package com.cbs.app.view.model.syncbak;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakStream
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<SyncbakStream> CREATOR = new Parcelable.Creator()
  {
    public final SyncbakStream createFromParcel(Parcel paramAnonymousParcel)
    {
      return new SyncbakStream(paramAnonymousParcel);
    }
    
    public final SyncbakStream[] newArray(int paramAnonymousInt)
    {
      return new SyncbakStream[paramAnonymousInt];
    }
  };
  @JsonProperty("typeDescription")
  private String typeDescription;
  @JsonProperty("typeId")
  private int typeId;
  @JsonProperty("url")
  private String url;
  
  public SyncbakStream() {}
  
  public SyncbakStream(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    typeId = paramParcel.readInt();
    typeDescription = paramParcel.readString();
    url = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getTypeDescription()
  {
    return typeDescription;
  }
  
  public int getTypeId()
  {
    return typeId;
  }
  
  public String getUrl()
  {
    return url;
  }
  
  public void setTypeDescription(String paramString)
  {
    typeDescription = paramString;
  }
  
  public void setTypeId(int paramInt)
  {
    typeId = paramInt;
  }
  
  public void setUrl(String paramString)
  {
    url = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(typeId);
    paramParcel.writeString(typeDescription);
    paramParcel.writeString(url);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.syncbak.SyncbakStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */