package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Thumbnail
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<Thumbnail> CREATOR = new Parcelable.Creator()
  {
    public final Thumbnail createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Thumbnail(paramAnonymousParcel);
    }
    
    public final Thumbnail[] newArray(int paramAnonymousInt)
    {
      return new Thumbnail[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = -8814290380545590309L;
  @JsonProperty("height")
  private int height;
  @JsonProperty("url")
  private String url;
  @JsonProperty("width")
  private int width;
  
  public Thumbnail() {}
  
  public Thumbnail(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    height = paramParcel.readInt();
    width = paramParcel.readInt();
    url = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getHeight()
  {
    return height;
  }
  
  public String getUrl()
  {
    return url;
  }
  
  public int getWidth()
  {
    return width;
  }
  
  public void setHeight(int paramInt)
  {
    height = paramInt;
  }
  
  public void setUrl(String paramString)
  {
    url = paramString;
  }
  
  public void setWidth(int paramInt)
  {
    width = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(height);
    paramParcel.writeInt(width);
    paramParcel.writeString(url);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.Thumbnail
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */