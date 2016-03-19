package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Thumbnail
  implements Parcelable
{
  public static final Parcelable.Creator<Thumbnail> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("height")
  private int a;
  @JsonProperty("width")
  private int b;
  @JsonProperty("url")
  private String c;
  
  public Thumbnail() {}
  
  public Thumbnail(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readInt();
    c = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getHeight()
  {
    return a;
  }
  
  public String getUrl()
  {
    return c;
  }
  
  public int getWidth()
  {
    return b;
  }
  
  public void setHeight(int paramInt)
  {
    a = paramInt;
  }
  
  public void setUrl(String paramString)
  {
    c = paramString;
  }
  
  public void setWidth(int paramInt)
  {
    b = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeInt(b);
    paramParcel.writeString(c);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.Thumbnail
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */