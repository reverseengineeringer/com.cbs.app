package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AssetFilePathMap
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<AssetFilePathMap> CREATOR = new Parcelable.Creator()
  {
    public final AssetFilePathMap createFromParcel(Parcel paramAnonymousParcel)
    {
      return new AssetFilePathMap(paramAnonymousParcel);
    }
    
    public final AssetFilePathMap[] newArray(int paramAnonymousInt)
    {
      return new AssetFilePathMap[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = 123456L;
  @JsonProperty("filepath_show_home_page_landscape_background")
  private String filepath_show_home_page_landscape_background;
  @JsonProperty("filepath_show_home_page_portrait_background")
  private String filepath_show_home_page_portrait_background;
  
  public AssetFilePathMap() {}
  
  public AssetFilePathMap(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    filepath_show_home_page_landscape_background = paramParcel.readString();
    filepath_show_home_page_portrait_background = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getFilepath_show_home_page_landscape_background()
  {
    return filepath_show_home_page_landscape_background;
  }
  
  public String getFilepath_show_home_page_portrait_background()
  {
    return filepath_show_home_page_portrait_background;
  }
  
  public void setFilepath_show_home_page_landscape_background(String paramString)
  {
    filepath_show_home_page_landscape_background = paramString;
  }
  
  public void setFilepath_show_home_page_portrait_background(String paramString)
  {
    filepath_show_home_page_portrait_background = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(filepath_show_home_page_landscape_background);
    paramParcel.writeString(filepath_show_home_page_portrait_background);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.AssetFilePathMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */