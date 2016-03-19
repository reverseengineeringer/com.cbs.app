package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowAlbum
  implements Parcelable, Serializable, Comparable<ShowAlbum>
{
  public static final Parcelable.Creator<ShowAlbum> CREATOR = new Parcelable.Creator()
  {
    public final ShowAlbum createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ShowAlbum(paramAnonymousParcel);
    }
    
    public final ShowAlbum[] newArray(int paramAnonymousInt)
    {
      return new ShowAlbum[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = 1730357433047497347L;
  @JsonProperty("album_id")
  private long album_id;
  @JsonProperty("created_date")
  private long created_date;
  @JsonProperty("description")
  private String description;
  @JsonProperty("facebook")
  private String facebook;
  @JsonProperty("filepath")
  private String filepath;
  @JsonProperty("gallery_type")
  private int gallery_type;
  @JsonProperty("id")
  private long id;
  @JsonProperty("keywordList")
  private ArrayList<String> keywordList;
  @JsonProperty("live_date_sec")
  private long live_date_sec;
  @JsonProperty("photo_nids")
  private ArrayList<Long> photo_nids;
  @JsonProperty("pub_year")
  private int pub_year;
  @JsonProperty("show_id")
  private long show_id;
  @JsonProperty("title")
  private String title;
  @JsonProperty("total_photos")
  private int total_photos;
  @JsonProperty("twitter")
  private String twitter;
  @JsonProperty("type")
  private String type;
  @JsonProperty("week_number")
  private int week_number;
  
  public ShowAlbum() {}
  
  public ShowAlbum(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    id = paramParcel.readLong();
    type = paramParcel.readString();
    album_id = paramParcel.readLong();
    show_id = paramParcel.readLong();
    created_date = paramParcel.readLong();
    title = paramParcel.readString();
    description = paramParcel.readString();
    photo_nids = paramParcel.readArrayList(Long.class.getClassLoader());
    filepath = paramParcel.readString();
    keywordList = paramParcel.readArrayList(String.class.getClassLoader());
    week_number = paramParcel.readInt();
    gallery_type = paramParcel.readInt();
    total_photos = paramParcel.readInt();
    twitter = paramParcel.readString();
    facebook = paramParcel.readString();
    pub_year = paramParcel.readInt();
    live_date_sec = paramParcel.readLong();
  }
  
  public int compareTo(ShowAlbum paramShowAlbum)
  {
    return title.compareTo(paramShowAlbum.getTitle());
  }
  
  public int describeContents()
  {
    return (int)getId();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof ShowAlbum))
    {
      bool1 = bool2;
      if (((ShowAlbum)paramObject).getId() == id) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public long getAlbum_id()
  {
    return album_id;
  }
  
  public long getCreated_date()
  {
    return created_date;
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public String getFacebook()
  {
    return facebook;
  }
  
  public String getFilepath()
  {
    return filepath;
  }
  
  public int getGallery_type()
  {
    return gallery_type;
  }
  
  public long getId()
  {
    return id;
  }
  
  public ArrayList<String> getKeywordList()
  {
    return keywordList;
  }
  
  public long getLive_date_sec()
  {
    return live_date_sec;
  }
  
  public ArrayList<Long> getPhoto_nids()
  {
    return photo_nids;
  }
  
  public int getPub_year()
  {
    return pub_year;
  }
  
  public long getShow_id()
  {
    return show_id;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public int getTotal_photos()
  {
    return total_photos;
  }
  
  public String getTwitter()
  {
    return twitter;
  }
  
  public String getType()
  {
    return type;
  }
  
  public int getWeek_number()
  {
    return week_number;
  }
  
  public int hashCode()
  {
    return 49;
  }
  
  public void setAlbum_id(long paramLong)
  {
    album_id = paramLong;
  }
  
  public void setCreated_date(long paramLong)
  {
    created_date = paramLong;
  }
  
  public void setDescription(String paramString)
  {
    description = paramString;
  }
  
  public void setFacebook(String paramString)
  {
    facebook = paramString;
  }
  
  public void setFilepath(String paramString)
  {
    filepath = paramString;
  }
  
  public void setGallery_type(int paramInt)
  {
    gallery_type = paramInt;
  }
  
  public void setId(long paramLong)
  {
    id = paramLong;
  }
  
  public void setKeywordList(ArrayList<String> paramArrayList)
  {
    keywordList = paramArrayList;
  }
  
  public void setLive_date_sec(long paramLong)
  {
    live_date_sec = paramLong;
  }
  
  public void setPhoto_nids(ArrayList<Long> paramArrayList)
  {
    photo_nids = paramArrayList;
  }
  
  public void setPub_year(int paramInt)
  {
    pub_year = paramInt;
  }
  
  public void setShow_id(long paramLong)
  {
    show_id = paramLong;
  }
  
  public void setTitle(String paramString)
  {
    title = paramString;
  }
  
  public void setTotal_photos(int paramInt)
  {
    total_photos = paramInt;
  }
  
  public void setTwitter(String paramString)
  {
    twitter = paramString;
  }
  
  public void setType(String paramString)
  {
    type = paramString;
  }
  
  public void setWeek_number(int paramInt)
  {
    week_number = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(id);
    paramParcel.writeString(type);
    paramParcel.writeLong(album_id);
    paramParcel.writeLong(show_id);
    paramParcel.writeLong(created_date);
    paramParcel.writeString(title);
    paramParcel.writeString(description);
    paramParcel.writeList(photo_nids);
    paramParcel.writeString(filepath);
    paramParcel.writeList(keywordList);
    paramParcel.writeInt(week_number);
    paramParcel.writeInt(gallery_type);
    paramParcel.writeInt(total_photos);
    paramParcel.writeString(twitter);
    paramParcel.writeString(facebook);
    paramParcel.writeInt(pub_year);
    paramParcel.writeLong(live_date_sec);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.ShowAlbum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */