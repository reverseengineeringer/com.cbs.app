package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class RecentTweet
  implements Parcelable, Serializable, Comparable<RecentTweet>
{
  public static final Parcelable.Creator<RecentTweet> CREATOR = new Parcelable.Creator()
  {
    public final RecentTweet createFromParcel(Parcel paramAnonymousParcel)
    {
      return new RecentTweet(paramAnonymousParcel);
    }
    
    public final RecentTweet[] newArray(int paramAnonymousInt)
    {
      return new RecentTweet[paramAnonymousInt];
    }
  };
  private static final String TAG = RecentTweet.class.getSimpleName();
  private static final long serialVersionUID = 1L;
  @JsonProperty("created_at")
  private String createdAt;
  @JsonProperty("id")
  private long id;
  @JsonProperty("profile_image_url")
  private String profileImageUrl;
  @JsonProperty("show_id")
  private long showId;
  @JsonProperty("text")
  private String text;
  
  public RecentTweet() {}
  
  public RecentTweet(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    id = paramParcel.readLong();
    text = paramParcel.readString();
    createdAt = paramParcel.readString();
    profileImageUrl = paramParcel.readString();
  }
  
  public int compareTo(RecentTweet paramRecentTweet)
  {
    return Long.valueOf(id).compareTo(Long.valueOf(id));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof RecentTweet))
    {
      bool1 = bool2;
      if (id == id) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public String getCreatedAt()
  {
    return createdAt;
  }
  
  public long getId()
  {
    return id;
  }
  
  public String getProfileImageUrl()
  {
    return profileImageUrl;
  }
  
  public long getShowId()
  {
    return showId;
  }
  
  public String getText()
  {
    return text;
  }
  
  public int hashCode()
  {
    return 47;
  }
  
  public void setCreatedAt(String paramString)
  {
    createdAt = paramString;
  }
  
  public void setId(long paramLong)
  {
    id = paramLong;
  }
  
  public void setProfileImageUrl(String paramString)
  {
    profileImageUrl = paramString;
  }
  
  public void setShowId(long paramLong)
  {
    showId = paramLong;
  }
  
  public void setText(String paramString)
  {
    text = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(id);
    paramParcel.writeString(text);
    paramParcel.writeString(createdAt);
    paramParcel.writeString(profileImageUrl);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.RecentTweet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */