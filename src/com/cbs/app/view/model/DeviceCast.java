package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class DeviceCast
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<DeviceCast> CREATOR = new Parcelable.Creator()
  {
    public final DeviceCast createFromParcel(Parcel paramAnonymousParcel)
    {
      return new DeviceCast(paramAnonymousParcel);
    }
    
    public final DeviceCast[] newArray(int paramAnonymousInt)
    {
      return new DeviceCast[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = 7860204881405328317L;
  @JsonProperty("bio")
  private String bio;
  @JsonProperty("bio_type")
  private String bioType;
  @JsonProperty("charecter_bio")
  private String characterBio;
  @JsonProperty("charecter_name")
  private String characterName;
  @JsonProperty("display_order")
  private int displayOrder;
  @JsonProperty("filepath_ipad_cast_carousel_land")
  private List<String> filepathIPadCastCarouselLandscape = new ArrayList();
  @JsonProperty("filepath_ipad_cast_carousel_port")
  private List<String> filepathIPadCastCarouselPortrait = new ArrayList();
  @JsonProperty("filepath_ipad_thumb")
  private List<String> filepathIPadThumb = new ArrayList();
  @JsonProperty("filepath_iphone_cast_carousel")
  private List<String> filepathIPhoneCastCarousel;
  @JsonProperty("filepath_iphone_thumb")
  private List<String> filepathIPhoneThumb = new ArrayList();
  @JsonProperty("id")
  private int id;
  @JsonProperty("keywords")
  private List<String> keywordList;
  @JsonProperty("season")
  private int seasonNumber;
  @JsonProperty("show_id")
  private Integer showId;
  @JsonProperty("title")
  private String title;
  @JsonProperty("twitter_screen_name")
  private String twitterScreenName;
  
  public DeviceCast() {}
  
  public DeviceCast(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getBio()
  {
    return bio;
  }
  
  public String getBioType()
  {
    return bioType;
  }
  
  public String getCharacterBio()
  {
    return characterBio;
  }
  
  public String getCharacterName()
  {
    return characterName;
  }
  
  public int getDisplayOrder()
  {
    return displayOrder;
  }
  
  public List<String> getFilepathIPadCastCarouselLandscape()
  {
    return filepathIPadCastCarouselLandscape;
  }
  
  public List<String> getFilepathIPadCastCarouselPortrait()
  {
    return filepathIPadCastCarouselPortrait;
  }
  
  public List<String> getFilepathIPadThumb()
  {
    return filepathIPadThumb;
  }
  
  public List<String> getFilepathIPhoneCastCarousel()
  {
    return filepathIPhoneCastCarousel;
  }
  
  public List<String> getFilepathIPhoneThumb()
  {
    return filepathIPhoneThumb;
  }
  
  public int getId()
  {
    return id;
  }
  
  public List<String> getKeywordList()
  {
    return keywordList;
  }
  
  public int getSeasonNumber()
  {
    return seasonNumber;
  }
  
  public Integer getShowId()
  {
    return showId;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public String getTwitterScreenName()
  {
    return twitterScreenName;
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    id = paramParcel.readInt();
    title = paramParcel.readString();
    characterName = paramParcel.readString();
    characterBio = paramParcel.readString();
    showId = Integer.valueOf(paramParcel.readInt());
    twitterScreenName = paramParcel.readString();
    seasonNumber = paramParcel.readInt();
    keywordList = paramParcel.createStringArrayList();
    bioType = paramParcel.readString();
    bio = paramParcel.readString();
    displayOrder = paramParcel.readInt();
    paramParcel.readList(filepathIPhoneThumb, String.class.getClassLoader());
    paramParcel.readList(filepathIPhoneCastCarousel, String.class.getClassLoader());
    paramParcel.readList(filepathIPhoneCastCarousel, String.class.getClassLoader());
    paramParcel.readList(filepathIPadCastCarouselLandscape, String.class.getClassLoader());
    paramParcel.readList(filepathIPadCastCarouselPortrait, String.class.getClassLoader());
  }
  
  public void setBio(String paramString)
  {
    bio = paramString;
  }
  
  public void setBioType(String paramString)
  {
    bioType = paramString;
  }
  
  public void setCharacterBio(String paramString)
  {
    characterBio = paramString;
  }
  
  public void setCharacterName(String paramString)
  {
    characterName = paramString;
  }
  
  public void setDisplayOrder(int paramInt)
  {
    displayOrder = paramInt;
  }
  
  public void setFilepathIPadCastCarouselLandscape(List<String> paramList)
  {
    filepathIPadCastCarouselLandscape = paramList;
  }
  
  public void setFilepathIPadCastCarouselPortrait(List<String> paramList)
  {
    filepathIPadCastCarouselPortrait = paramList;
  }
  
  public void setFilepathIPadThumb(List<String> paramList)
  {
    filepathIPadThumb = paramList;
  }
  
  public void setFilepathIPhoneCastCarousel(List<String> paramList)
  {
    filepathIPhoneCastCarousel = paramList;
  }
  
  public void setFilepathIPhoneThumb(List<String> paramList)
  {
    filepathIPhoneThumb = paramList;
  }
  
  public void setId(int paramInt)
  {
    id = paramInt;
  }
  
  public void setKeywordList(List<String> paramList)
  {
    keywordList = paramList;
  }
  
  public void setSeasonNumber(int paramInt)
  {
    seasonNumber = paramInt;
  }
  
  public void setShowId(Integer paramInteger)
  {
    showId = paramInteger;
  }
  
  public void setTitle(String paramString)
  {
    title = paramString;
  }
  
  public void setTwitterScreenName(String paramString)
  {
    twitterScreenName = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(id);
    paramParcel.writeString(title);
    paramParcel.writeString(characterName);
    paramParcel.writeString(characterBio);
    paramParcel.writeInt(showId.intValue());
    paramParcel.writeString(twitterScreenName);
    paramParcel.writeInt(seasonNumber);
    paramParcel.writeStringList(keywordList);
    paramParcel.writeString(bioType);
    paramParcel.writeString(bio);
    paramParcel.writeInt(displayOrder);
    paramParcel.writeList(filepathIPhoneThumb);
    paramParcel.writeList(filepathIPhoneCastCarousel);
    paramParcel.writeList(filepathIPadThumb);
    paramParcel.writeList(filepathIPadCastCarouselLandscape);
    paramParcel.writeList(filepathIPadCastCarouselPortrait);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.DeviceCast
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */