package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakStream
  implements Parcelable
{
  public static final Parcelable.Creator<SyncbakStream> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("typeId")
  private int a;
  @JsonProperty("typeDescription")
  private String b;
  @JsonProperty("url")
  private String c;
  
  public SyncbakStream() {}
  
  public SyncbakStream(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readString();
    c = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getTypeDescription()
  {
    return b;
  }
  
  public int getTypeId()
  {
    return a;
  }
  
  public String getUrl()
  {
    return c;
  }
  
  public void setTypeDescription(String paramString)
  {
    b = paramString;
  }
  
  public void setTypeId(int paramInt)
  {
    a = paramInt;
  }
  
  public void setUrl(String paramString)
  {
    c = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.SyncbakStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */