package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowConfig
  implements Parcelable, Serializable, Comparable<ShowConfig>
{
  public static final Parcelable.Creator<ShowConfig> CREATOR = new Parcelable.Creator()
  {
    public final ShowConfig createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ShowConfig(paramAnonymousParcel);
    }
    
    public final ShowConfig[] newArray(int paramAnonymousInt)
    {
      return new ShowConfig[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = 5324312023741233412L;
  @JsonProperty("amazon_buy_link")
  private String amazonBuyLink;
  @JsonProperty("catchup_filepath")
  private String cachupFilepath;
  @JsonProperty("cachup_grey_filepath")
  private String cachupGreyFilepath;
  @JsonProperty("display_order")
  private long displayOrder;
  @JsonProperty("eyecon_show_title")
  private String eyeconShowTitle;
  @JsonProperty("facebook_link")
  private String facebookLink;
  @JsonProperty("google_plus_one")
  private String googlePlusOne;
  @JsonProperty("id")
  private long id;
  @JsonProperty("items_per_page")
  private long itemsPerPage;
  @JsonProperty("itunes_buy_link")
  private String itunesBuyLink;
  @JsonProperty("k")
  private String k;
  @JsonProperty("massrelevance_url")
  private String massRelevanceUrl;
  @JsonProperty("massrelevance_keyword")
  private String massrelevanceKeyword;
  @JsonProperty("massrelevance_keyword_array")
  private ArrayList<String> massrelevanceKeywordArray;
  @JsonProperty("photo_browse")
  private String photoBrowse;
  @JsonProperty("photos_per_page")
  private long photosPerPage;
  @JsonProperty("promos_per_page")
  private long promosPerPage;
  @JsonProperty("show_category")
  private long showCategory;
  @JsonProperty("show_id")
  private String showId;
  @JsonProperty("title")
  private String title;
  @JsonProperty("tvplus")
  private long tvPlus;
  @JsonProperty("tvplus_id")
  private String tvPlusId;
  @JsonProperty("twitter_hash_tag")
  private String twitterHashTag;
  @JsonProperty("twitter_link")
  private String twitterLink;
  @JsonProperty("type")
  private String type;
  @JsonProperty("video_playlist_type")
  private String videoPlaylistType;
  @JsonProperty("video_sort_direction")
  private String videoSortDirection;
  @JsonProperty("video_sort_order")
  private String videoSortOrder;
  @JsonProperty("vudu_buy_link")
  private String vuduBuyLink;
  
  public ShowConfig() {}
  
  public ShowConfig(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    id = paramParcel.readLong();
    showId = paramParcel.readString();
    title = paramParcel.readString();
    massRelevanceUrl = paramParcel.readString();
    k = paramParcel.readString();
    displayOrder = paramParcel.readLong();
    tvPlus = paramParcel.readLong();
    tvPlusId = paramParcel.readString();
    facebookLink = paramParcel.readString();
    twitterLink = paramParcel.readString();
    googlePlusOne = paramParcel.readString();
    massrelevanceKeyword = paramParcel.readString();
    massrelevanceKeywordArray = paramParcel.readArrayList(String.class.getClassLoader());
    vuduBuyLink = paramParcel.readString();
    amazonBuyLink = paramParcel.readString();
    itunesBuyLink = paramParcel.readString();
    eyeconShowTitle = paramParcel.readString();
    photosPerPage = paramParcel.readLong();
    videoSortDirection = paramParcel.readString();
    photoBrowse = paramParcel.readString();
    videoSortOrder = paramParcel.readString();
    showCategory = paramParcel.readLong();
    promosPerPage = paramParcel.readLong();
    videoPlaylistType = paramParcel.readString();
    cachupFilepath = paramParcel.readString();
    cachupGreyFilepath = paramParcel.readString();
    itemsPerPage = paramParcel.readLong();
    twitterHashTag = paramParcel.readString();
  }
  
  public int compareTo(ShowConfig paramShowConfig)
  {
    return Long.valueOf(displayOrder).compareTo(Long.valueOf(displayOrder));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof ShowConfig))
    {
      bool1 = bool2;
      if (id == id) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public String getAmazonBuyLink()
  {
    return amazonBuyLink;
  }
  
  public String getCachupFilepath()
  {
    return cachupFilepath;
  }
  
  public String getCachupGreyFilepath()
  {
    return cachupGreyFilepath;
  }
  
  public long getDisplayOrder()
  {
    return displayOrder;
  }
  
  public String getEyeconShowTitle()
  {
    return eyeconShowTitle;
  }
  
  public String getFacebookLink()
  {
    return facebookLink;
  }
  
  public String getGooglePlusOne()
  {
    return googlePlusOne;
  }
  
  public long getId()
  {
    return id;
  }
  
  public long getItemsPerPage()
  {
    return itemsPerPage;
  }
  
  public String getItunesBuyLink()
  {
    return itunesBuyLink;
  }
  
  public String getK()
  {
    return k;
  }
  
  public String getMassRelevanceUrl()
  {
    return massRelevanceUrl;
  }
  
  public String getMassrelevanceKeyword()
  {
    return massrelevanceKeyword;
  }
  
  public ArrayList<String> getMassrelevanceKeywordArray()
  {
    return massrelevanceKeywordArray;
  }
  
  public String getPhotoBrowse()
  {
    return photoBrowse;
  }
  
  public long getPhotosPerPage()
  {
    return photosPerPage;
  }
  
  public long getPromosPerPage()
  {
    return promosPerPage;
  }
  
  public long getShowCategory()
  {
    return showCategory;
  }
  
  public String getShowId()
  {
    return showId;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public long getTvPlus()
  {
    return tvPlus;
  }
  
  public String getTvPlusId()
  {
    return tvPlusId;
  }
  
  public String getTwitterHashTag()
  {
    return twitterHashTag;
  }
  
  public String getTwitterLink()
  {
    return twitterLink;
  }
  
  public String getVideoPlaylistType()
  {
    return videoPlaylistType;
  }
  
  public String getVideoSortDirection()
  {
    return videoSortDirection;
  }
  
  public String getVideoSortOrder()
  {
    return videoSortOrder;
  }
  
  public String getVuduBuyLink()
  {
    return vuduBuyLink;
  }
  
  public int hashCode()
  {
    return 50;
  }
  
  public void setAmazonBuyLink(String paramString)
  {
    amazonBuyLink = paramString;
  }
  
  public void setCachupFilepath(String paramString)
  {
    cachupFilepath = paramString;
  }
  
  public void setCachupGreyFilepath(String paramString)
  {
    cachupGreyFilepath = paramString;
  }
  
  public void setDisplayOrder(long paramLong)
  {
    displayOrder = paramLong;
  }
  
  public void setEyeconShowTitle(String paramString)
  {
    eyeconShowTitle = paramString;
  }
  
  public void setFacebookLink(String paramString)
  {
    facebookLink = paramString;
  }
  
  public void setGooglePlusOne(String paramString)
  {
    googlePlusOne = paramString;
  }
  
  public void setId(long paramLong)
  {
    id = paramLong;
  }
  
  public void setItemsPerPage(long paramLong)
  {
    itemsPerPage = paramLong;
  }
  
  public void setItunesBuyLink(String paramString)
  {
    itunesBuyLink = paramString;
  }
  
  public void setK(String paramString)
  {
    k = paramString;
  }
  
  public void setMassRelevanceUrl(String paramString)
  {
    massRelevanceUrl = paramString;
  }
  
  public void setMassrelevanceKeyword(String paramString)
  {
    massrelevanceKeyword = paramString;
  }
  
  public void setMassrelevanceKeywordArray(ArrayList<String> paramArrayList)
  {
    massrelevanceKeywordArray = paramArrayList;
  }
  
  public void setPhotoBrowse(String paramString)
  {
    photoBrowse = paramString;
  }
  
  public void setPhotosPerPage(long paramLong)
  {
    photosPerPage = paramLong;
  }
  
  public void setPromosPerPage(long paramLong)
  {
    promosPerPage = paramLong;
  }
  
  public void setShowCategory(long paramLong)
  {
    showCategory = paramLong;
  }
  
  public void setShowId(String paramString)
  {
    showId = paramString;
  }
  
  public void setTitle(String paramString)
  {
    title = paramString;
  }
  
  public void setTvPlus(long paramLong)
  {
    tvPlus = paramLong;
  }
  
  public void setTvPlusId(String paramString)
  {
    tvPlusId = paramString;
  }
  
  public void setTwitterHashTag(String paramString)
  {
    twitterHashTag = paramString;
  }
  
  public void setTwitterLink(String paramString)
  {
    twitterLink = paramString;
  }
  
  public void setVideoPlaylistType(String paramString)
  {
    videoPlaylistType = paramString;
  }
  
  public void setVideoSortDirection(String paramString)
  {
    videoSortDirection = paramString;
  }
  
  public void setVideoSortOrder(String paramString)
  {
    videoSortOrder = paramString;
  }
  
  public void setVuduBuyLink(String paramString)
  {
    vuduBuyLink = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(id);
    paramParcel.writeString(showId);
    paramParcel.writeString(title);
    paramParcel.writeString(massRelevanceUrl);
    paramParcel.writeString(k);
    paramParcel.writeLong(displayOrder);
    paramParcel.writeLong(tvPlus);
    paramParcel.writeString(tvPlusId);
    paramParcel.writeString(facebookLink);
    paramParcel.writeString(twitterLink);
    paramParcel.writeString(googlePlusOne);
    paramParcel.writeString(massrelevanceKeyword);
    paramParcel.writeList(massrelevanceKeywordArray);
    paramParcel.writeString(vuduBuyLink);
    paramParcel.writeString(amazonBuyLink);
    paramParcel.writeString(itunesBuyLink);
    paramParcel.writeString(eyeconShowTitle);
    paramParcel.writeLong(photosPerPage);
    paramParcel.writeString(videoSortDirection);
    paramParcel.writeString(photoBrowse);
    paramParcel.writeString(videoSortOrder);
    paramParcel.writeLong(showCategory);
    paramParcel.writeLong(promosPerPage);
    paramParcel.writeString(videoPlaylistType);
    paramParcel.writeString(cachupFilepath);
    paramParcel.writeString(cachupGreyFilepath);
    paramParcel.writeLong(itemsPerPage);
    paramParcel.writeString(twitterHashTag);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.ShowConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */