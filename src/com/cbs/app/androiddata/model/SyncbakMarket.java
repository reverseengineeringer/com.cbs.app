package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakMarket
  implements Parcelable
{
  public static final Parcelable.Creator<SyncbakMarket> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("id")
  private String a;
  @JsonProperty("name")
  private String b;
  
  public SyncbakMarket() {}
  
  public SyncbakMarket(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return Long.valueOf(a).intValue();
  }
  
  public String getId()
  {
    return a;
  }
  
  public String getName()
  {
    return b;
  }
  
  public void setId(String paramString)
  {
    a = paramString;
  }
  
  public void setName(String paramString)
  {
    b = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.SyncbakMarket
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */