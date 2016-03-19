package com.cbs.app.view.fragments.show.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowItem
  implements Parcelable
{
  public static final Parcelable.Creator<ShowItem> CREATOR = new Parcelable.Creator()
  {
    public final ShowItem createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ShowItem(paramAnonymousParcel);
    }
    
    public final ShowItem[] newArray(int paramAnonymousInt)
    {
      return new ShowItem[paramAnonymousInt];
    }
  };
  public String category;
  public EpisodeVideoCount episodeVideoCount;
  public String filepathShowGroupItemLogo;
  public String filepathShowLogo;
  public long id;
  public ShowAssets showAssets;
  public long showGroupId;
  public String showGroupItemLinks;
  public long showId;
  public String showUrl;
  public String title;
  @JsonProperty("tune_in_time")
  public String tuneInTime;
  
  public ShowItem() {}
  
  public ShowItem(Parcel paramParcel)
  {
    category = paramParcel.readString();
    episodeVideoCount = ((EpisodeVideoCount)paramParcel.readParcelable(EpisodeVideoCount.class.getClassLoader()));
    filepathShowGroupItemLogo = paramParcel.readString();
    filepathShowLogo = paramParcel.readString();
    id = paramParcel.readLong();
    showAssets = ((ShowAssets)paramParcel.readParcelable(ShowAssets.class.getClassLoader()));
    showGroupId = paramParcel.readLong();
    showGroupItemLinks = paramParcel.readString();
    showId = paramParcel.readLong();
    showUrl = paramParcel.readString();
    title = paramParcel.readString();
    tuneInTime = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Bundle getBundle()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("category", category);
    localBundle.putString("tune_in_time", tuneInTime);
    localBundle.putString("title", title);
    localBundle.putLong("show_id", showId);
    return localBundle;
  }
  
  public void setBundle(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      category = paramBundle.getString("category");
      tuneInTime = paramBundle.getString("tune_in_time");
      title = paramBundle.getString("title");
      showId = paramBundle.getLong("show_id");
    }
  }
  
  public String toString()
  {
    return "ShowItem{category='" + category + '\'' + ", episodeVideoCount=" + episodeVideoCount + ", filepathShowGroupItemLogo='" + filepathShowGroupItemLogo + '\'' + ", filepathShowLogo='" + filepathShowLogo + '\'' + ", id=" + id + ", showAssets=" + showAssets + ", showGroupId=" + showGroupId + ", showGroupItemLinks='" + showGroupItemLinks + '\'' + ", showId=" + showId + ", showUrl='" + showUrl + '\'' + ", title='" + title + '\'' + ", tuneInTime='" + tuneInTime + '\'' + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(category);
    paramParcel.writeParcelable(episodeVideoCount, 0);
    paramParcel.writeString(filepathShowGroupItemLogo);
    paramParcel.writeString(filepathShowLogo);
    paramParcel.writeLong(id);
    paramParcel.writeParcelable(showAssets, 0);
    paramParcel.writeLong(showGroupId);
    paramParcel.writeString(showGroupItemLinks);
    paramParcel.writeLong(showId);
    paramParcel.writeString(showUrl);
    paramParcel.writeString(title);
    paramParcel.writeString(tuneInTime);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.model.ShowItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */