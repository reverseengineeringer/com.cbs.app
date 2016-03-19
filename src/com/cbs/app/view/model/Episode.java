package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Episode
  implements Parcelable, Serializable, Comparable<Episode>
{
  public static final Parcelable.Creator<Episode> CREATOR = new Parcelable.Creator()
  {
    public final Episode createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Episode(paramAnonymousParcel);
    }
    
    public final Episode[] newArray(int paramAnonymousInt)
    {
      return new Episode[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = 5185814621684130764L;
  private String airDateString;
  private long airDate_sec;
  private String dayOfWeek;
  private String display_airdate;
  private String duration;
  private String endTime;
  private String episodeNumber;
  private String episodeTitle;
  private String filepathOverrideHalfHour;
  private String filepathOverrideOneAndHalfHour;
  private String filepathOverrideOneHour;
  private String filepathOverrideThreeHours;
  private String filepathOverrideTwoHours;
  private String filepath_halfhour;
  private String filepath_hour;
  private String filepath_ipad;
  private String isNewEpisode;
  private String pressSummary;
  private String seriesTitle;
  private String showTitle;
  private String show_id;
  private String startTime;
  private String title;
  private String tvrating;
  private String urllink;
  
  public Episode() {}
  
  public Episode(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  @JsonCreator
  public Episode(@JsonProperty("title") String paramString1, @JsonProperty("show_id") String paramString2, @JsonProperty("showTitle") String paramString3, @JsonProperty("airDateString") String paramString4, @JsonProperty("dayOfWeek") String paramString5, @JsonProperty("filepath_ipad") String paramString6, @JsonProperty("episodeNumber") String paramString7, @JsonProperty("episodeTitle") String paramString8, @JsonProperty("display_airdate") String paramString9, @JsonProperty("startTime") String paramString10, @JsonProperty("endTime") String paramString11, @JsonProperty("duration") String paramString12, @JsonProperty("pressSummary") String paramString13, @JsonProperty("tvrating") String paramString14, @JsonProperty("filepath_hour") String paramString15, @JsonProperty("filepath_halfhour") String paramString16, @JsonProperty("airDate_sec") long paramLong, @JsonProperty("urllink") String paramString17, @JsonProperty("filepath_apps_override_half_hour") String paramString18, @JsonProperty("filepath_apps_override_one_hour") String paramString19, @JsonProperty("filepath_apps_override_one_and_half_hour") String paramString20, @JsonProperty("filepath_apps_override_two_hours") String paramString21, @JsonProperty("filepath_apps_override_three_hours") String paramString22, @JsonProperty("isNewEpisode") String paramString23, @JsonProperty("seriesTitle") String paramString24)
  {
    title = paramString1;
    show_id = paramString2;
    showTitle = paramString3;
    airDateString = paramString4;
    dayOfWeek = paramString5;
    filepath_ipad = paramString6;
    episodeNumber = paramString7;
    episodeTitle = paramString8;
    display_airdate = paramString9;
    startTime = paramString10;
    endTime = paramString11;
    duration = paramString12;
    pressSummary = paramString13;
    tvrating = paramString14;
    filepath_halfhour = paramString16;
    filepath_hour = paramString15;
    airDate_sec = paramLong;
    urllink = paramString17;
    filepathOverrideHalfHour = paramString18;
    filepathOverrideOneHour = paramString19;
    filepathOverrideOneAndHalfHour = paramString20;
    filepathOverrideTwoHours = paramString21;
    filepathOverrideThreeHours = paramString22;
    isNewEpisode = paramString23;
    seriesTitle = paramString24;
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    title = paramParcel.readString();
    show_id = paramParcel.readString();
    showTitle = paramParcel.readString();
    airDateString = paramParcel.readString();
    dayOfWeek = paramParcel.readString();
    filepath_ipad = paramParcel.readString();
    episodeNumber = paramParcel.readString();
    episodeTitle = paramParcel.readString();
    display_airdate = paramParcel.readString();
    startTime = paramParcel.readString();
    endTime = paramParcel.readString();
    duration = paramParcel.readString();
    pressSummary = paramParcel.readString();
    tvrating = paramParcel.readString();
    filepath_halfhour = paramParcel.readString();
    filepath_hour = paramParcel.readString();
    airDate_sec = paramParcel.readLong();
    filepathOverrideHalfHour = paramParcel.readString();
    filepathOverrideOneHour = paramParcel.readString();
    filepathOverrideOneAndHalfHour = paramParcel.readString();
    filepathOverrideTwoHours = paramParcel.readString();
    filepathOverrideThreeHours = paramParcel.readString();
    isNewEpisode = paramParcel.readString();
    seriesTitle = paramParcel.readString();
  }
  
  public int compareTo(Episode paramEpisode)
  {
    return Long.valueOf(airDate_sec).compareTo(Long.valueOf(airDate_sec));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Episode))
    {
      paramObject = (Episode)paramObject;
      bool1 = bool2;
      if (title.equals(title))
      {
        bool1 = bool2;
        if (startTime.equals(startTime))
        {
          bool1 = bool2;
          if (endTime.equals(endTime))
          {
            bool1 = bool2;
            if (duration.equals(duration)) {
              bool1 = true;
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public String getAirDateString()
  {
    return airDateString;
  }
  
  public long getAirDate_sec()
  {
    return airDate_sec;
  }
  
  public String getDayOfWeek()
  {
    return dayOfWeek;
  }
  
  public String getDisplay_airdate()
  {
    return display_airdate;
  }
  
  public String getDuration()
  {
    return duration;
  }
  
  public String getEndTime()
  {
    return endTime;
  }
  
  public String getEpisodeNumber()
  {
    return episodeNumber;
  }
  
  public String getEpisodeTitle()
  {
    return episodeTitle;
  }
  
  public String getFilepathOverrideHalfHour()
  {
    return filepathOverrideHalfHour;
  }
  
  public String getFilepathOverrideOneAndHalfHour()
  {
    return filepathOverrideOneAndHalfHour;
  }
  
  public String getFilepathOverrideOneHour()
  {
    return filepathOverrideOneHour;
  }
  
  public String getFilepathOverrideThreeHours()
  {
    return filepathOverrideThreeHours;
  }
  
  public String getFilepathOverrideTwoHours()
  {
    return filepathOverrideTwoHours;
  }
  
  public String getFilepath_halfhour()
  {
    return filepath_halfhour;
  }
  
  public String getFilepath_hour()
  {
    return filepath_hour;
  }
  
  public String getFilepath_ipad()
  {
    return filepath_ipad;
  }
  
  public String getIsEpisodeNew()
  {
    return isNewEpisode;
  }
  
  public String getPressSummary()
  {
    return pressSummary;
  }
  
  public String getSeriesTitle()
  {
    return seriesTitle;
  }
  
  public String getShowTitle()
  {
    return showTitle;
  }
  
  public String getShow_id()
  {
    return show_id;
  }
  
  public String getStartTime()
  {
    return startTime;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public String getTvrating()
  {
    return tvrating;
  }
  
  public String getUrllink()
  {
    return urllink;
  }
  
  public int hashCode()
  {
    return 45;
  }
  
  public void setAirDateString(String paramString)
  {
    airDateString = paramString;
  }
  
  public void setAirDate_sec(long paramLong)
  {
    airDate_sec = paramLong;
  }
  
  public void setDayOfWeek(String paramString)
  {
    dayOfWeek = paramString;
  }
  
  public void setDisplay_airdate(String paramString)
  {
    display_airdate = paramString;
  }
  
  public void setDuration(String paramString)
  {
    duration = paramString;
  }
  
  public void setEndTime(String paramString)
  {
    endTime = paramString;
  }
  
  public void setEpisodeNumber(String paramString)
  {
    episodeNumber = paramString;
  }
  
  public void setEpisodeTitle(String paramString)
  {
    episodeTitle = paramString;
  }
  
  public void setFilepathOverrideHalfHour(String paramString)
  {
    filepathOverrideHalfHour = paramString;
  }
  
  public void setFilepathOverrideOneAndHalfHour(String paramString)
  {
    filepathOverrideOneAndHalfHour = paramString;
  }
  
  public void setFilepathOverrideOneHour(String paramString)
  {
    filepathOverrideOneHour = paramString;
  }
  
  public void setFilepathOverrideThreeHours(String paramString)
  {
    filepathOverrideThreeHours = paramString;
  }
  
  public void setFilepathOverrideTwoHours(String paramString)
  {
    filepathOverrideTwoHours = paramString;
  }
  
  public void setFilepath_halfhour(String paramString)
  {
    filepath_halfhour = paramString;
  }
  
  public void setFilepath_hour(String paramString)
  {
    filepath_hour = paramString;
  }
  
  public void setFilepath_ipad(String paramString)
  {
    filepath_ipad = paramString;
  }
  
  public void setNewEpisode(String paramString)
  {
    isNewEpisode = paramString;
  }
  
  public void setPressSummary(String paramString)
  {
    pressSummary = paramString;
  }
  
  public void setSeriesTitle(String paramString)
  {
    seriesTitle = paramString;
  }
  
  public void setShowTitle(String paramString)
  {
    showTitle = paramString;
  }
  
  public void setShow_id(String paramString)
  {
    show_id = paramString;
  }
  
  public void setStartTime(String paramString)
  {
    startTime = paramString;
  }
  
  public void setTitle(String paramString)
  {
    title = paramString;
  }
  
  public void setTvrating(String paramString)
  {
    tvrating = paramString;
  }
  
  public void setUrllink(String paramString)
  {
    urllink = paramString;
  }
  
  public String toString()
  {
    return showTitle + getEpisodeTitle() + display_airdate + getTvrating();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(title);
    paramParcel.writeString(show_id);
    paramParcel.writeString(showTitle);
    paramParcel.writeString(airDateString);
    paramParcel.writeString(dayOfWeek);
    paramParcel.writeString(filepath_ipad);
    paramParcel.writeString(episodeNumber);
    paramParcel.writeString(episodeTitle);
    paramParcel.writeString(display_airdate);
    paramParcel.writeString(startTime);
    paramParcel.writeString(endTime);
    paramParcel.writeString(duration);
    paramParcel.writeString(pressSummary);
    paramParcel.writeString(tvrating);
    paramParcel.writeString(filepath_halfhour);
    paramParcel.writeString(filepath_hour);
    paramParcel.writeLong(airDate_sec);
    paramParcel.writeString(filepathOverrideHalfHour);
    paramParcel.writeString(filepathOverrideOneHour);
    paramParcel.writeString(filepathOverrideOneAndHalfHour);
    paramParcel.writeString(filepathOverrideTwoHours);
    paramParcel.writeString(filepathOverrideThreeHours);
    paramParcel.writeString(isNewEpisode);
    paramParcel.writeString(seriesTitle);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.Episode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */