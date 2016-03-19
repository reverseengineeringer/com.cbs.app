package com.cbs.app.view.model;

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
  public static final Parcelable.Creator<AppConfig> CREATOR = new Parcelable.Creator()
  {
    public final AppConfig createFromParcel(Parcel paramAnonymousParcel)
    {
      return new AppConfig(paramAnonymousParcel, null);
    }
    
    public final AppConfig[] newArray(int paramAnonymousInt)
    {
      return new AppConfig[paramAnonymousInt];
    }
  };
  @JsonProperty("ad_server_override")
  private String adServerOverride;
  @JsonProperty("api_environment")
  private String apiEnvironment;
  @JsonProperty("https_enabled")
  private String httpsEnabled;
  @JsonProperty("livetvServer")
  private String livetvServer;
  @JsonProperty("number_upcoming_episodes")
  private String numberUpcomingEpisodes;
  @JsonProperty("rate_video_complete")
  private String rateVideoComplete;
  @JsonProperty("rate_video_count")
  private String rateVideoCount;
  
  public AppConfig() {}
  
  private AppConfig(Parcel paramParcel)
  {
    numberUpcomingEpisodes = paramParcel.readString();
    rateVideoComplete = paramParcel.readString();
    rateVideoCount = paramParcel.readString();
    adServerOverride = paramParcel.readString();
    httpsEnabled = paramParcel.readString();
    apiEnvironment = paramParcel.readString();
    livetvServer = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAdServerOverride()
  {
    return adServerOverride;
  }
  
  public String getApiEnvironment()
  {
    return apiEnvironment;
  }
  
  public String getHttpsEnabled()
  {
    return httpsEnabled;
  }
  
  public String getLivetvServer()
  {
    return livetvServer;
  }
  
  public String getNumberUpcomingEpisodes()
  {
    return numberUpcomingEpisodes;
  }
  
  public String getRateVideoComplete()
  {
    return rateVideoComplete;
  }
  
  public String getRateVideoCount()
  {
    return rateVideoCount;
  }
  
  public void setAdServerOverride(String paramString)
  {
    adServerOverride = paramString;
  }
  
  public void setApiEnvironment(String paramString)
  {
    apiEnvironment = paramString;
  }
  
  public void setHttpsEnabled(String paramString)
  {
    httpsEnabled = paramString;
  }
  
  public void setLivetvServer(String paramString)
  {
    livetvServer = paramString;
  }
  
  public void setNumberUpcomingEpisodes(String paramString)
  {
    numberUpcomingEpisodes = paramString;
  }
  
  public void setRateVideoComplete(String paramString)
  {
    rateVideoComplete = paramString;
  }
  
  public void setRateVideoCount(String paramString)
  {
    rateVideoCount = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(numberUpcomingEpisodes);
    paramParcel.writeString(rateVideoComplete);
    paramParcel.writeString(rateVideoCount);
    paramParcel.writeString(adServerOverride);
    paramParcel.writeString(httpsEnabled);
    paramParcel.writeString(apiEnvironment);
    paramParcel.writeString(livetvServer);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.AppConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */