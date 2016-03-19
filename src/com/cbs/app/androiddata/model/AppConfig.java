package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AppConfig
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<AppConfig> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("number_upcoming_episodes")
  private String a;
  @JsonProperty("rate_video_complete")
  private String b;
  @JsonProperty("rate_video_count")
  private String c;
  @JsonProperty("ad_server_override")
  private String d;
  @JsonProperty("https_enabled")
  private String e;
  @JsonProperty("api_environment")
  private String f;
  @JsonProperty("livetvServer")
  private String g;
  
  public AppConfig() {}
  
  private AppConfig(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = paramParcel.readString();
    d = paramParcel.readString();
    e = paramParcel.readString();
    f = paramParcel.readString();
    g = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAdServerOverride()
  {
    return d;
  }
  
  public String getApiEnvironment()
  {
    return f;
  }
  
  public String getHttpsEnabled()
  {
    return e;
  }
  
  public String getLivetvServer()
  {
    return g;
  }
  
  public String getNumberUpcomingEpisodes()
  {
    return a;
  }
  
  public String getRateVideoComplete()
  {
    return b;
  }
  
  public String getRateVideoCount()
  {
    return c;
  }
  
  public void setAdServerOverride(String paramString)
  {
    d = paramString;
  }
  
  public void setApiEnvironment(String paramString)
  {
    f = paramString;
  }
  
  public void setHttpsEnabled(String paramString)
  {
    e = paramString;
  }
  
  public void setLivetvServer(String paramString)
  {
    g = paramString;
  }
  
  public void setNumberUpcomingEpisodes(String paramString)
  {
    a = paramString;
  }
  
  public void setRateVideoComplete(String paramString)
  {
    b = paramString;
  }
  
  public void setRateVideoCount(String paramString)
  {
    c = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.AppConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */