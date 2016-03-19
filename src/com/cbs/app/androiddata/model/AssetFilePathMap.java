package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AssetFilePathMap
  implements Parcelable
{
  public static final Parcelable.Creator<AssetFilePathMap> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("filepath_show_home_page_landscape_background")
  private String a;
  @JsonProperty("filepath_show_home_page_portrait_background")
  private String b;
  
  public AssetFilePathMap() {}
  
  public AssetFilePathMap(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getFilepath_show_home_page_landscape_background()
  {
    return a;
  }
  
  public String getFilepath_show_home_page_portrait_background()
  {
    return b;
  }
  
  public void setFilepath_show_home_page_landscape_background(String paramString)
  {
    a = paramString;
  }
  
  public void setFilepath_show_home_page_portrait_background(String paramString)
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
 * Qualified Name:     com.cbs.app.androiddata.model.AssetFilePathMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */