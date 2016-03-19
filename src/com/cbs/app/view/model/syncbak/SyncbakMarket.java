package com.cbs.app.view.model.syncbak;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakMarket
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<SyncbakMarket> CREATOR = new Parcelable.Creator()
  {
    public final SyncbakMarket createFromParcel(Parcel paramAnonymousParcel)
    {
      return new SyncbakMarket(paramAnonymousParcel);
    }
    
    public final SyncbakMarket[] newArray(int paramAnonymousInt)
    {
      return new SyncbakMarket[paramAnonymousInt];
    }
  };
  @JsonProperty("id")
  private String id;
  @JsonProperty("name")
  private String name;
  
  public SyncbakMarket() {}
  
  public SyncbakMarket(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    id = paramParcel.readString();
    name = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return Long.valueOf(id).intValue();
  }
  
  public String getId()
  {
    return id;
  }
  
  public String getName()
  {
    return name;
  }
  
  public void setId(String paramString)
  {
    id = paramString;
  }
  
  public void setName(String paramString)
  {
    name = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(id);
    paramParcel.writeString(name);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.syncbak.SyncbakMarket
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */