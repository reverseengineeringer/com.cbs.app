package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AlbumPhoto
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<AlbumPhoto> CREATOR = new Parcelable.Creator()
  {
    public final AlbumPhoto createFromParcel(Parcel paramAnonymousParcel)
    {
      return new AlbumPhoto(paramAnonymousParcel);
    }
    
    public final AlbumPhoto[] newArray(int paramAnonymousInt)
    {
      return new AlbumPhoto[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = -5484441429060662072L;
  @JsonProperty("album_id")
  private long albumId;
  @JsonProperty("created_date")
  private long createdDate;
  @JsonProperty("filepath")
  private String filepath;
  @JsonProperty("filepath_thumb")
  private String filepathThumb;
  @JsonProperty("id")
  private long id;
  @JsonProperty("is_flock")
  private long isFlock;
  @JsonProperty("k")
  private String k;
  @JsonProperty("live_date")
  private long liveDate;
  @JsonProperty("photo_caption")
  private String photoCaption;
  @JsonProperty("title")
  private String title;
  @JsonProperty("type")
  private String type;
  
  public AlbumPhoto() {}
  
  public AlbumPhoto(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    id = paramParcel.readLong();
    createdDate = paramParcel.readLong();
    albumId = paramParcel.readLong();
    type = paramParcel.readString();
    photoCaption = paramParcel.readString();
    title = paramParcel.readString();
    filepath = paramParcel.readString();
    filepathThumb = paramParcel.readString();
    k = paramParcel.readString();
    isFlock = paramParcel.readLong();
    liveDate = paramParcel.readLong();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getAlbumId()
  {
    return albumId;
  }
  
  public long getCreatedDate()
  {
    return createdDate;
  }
  
  public String getFilepath()
  {
    return filepath;
  }
  
  public String getFilepathThumb()
  {
    return filepathThumb;
  }
  
  public long getId()
  {
    return id;
  }
  
  public long getIsFlock()
  {
    return isFlock;
  }
  
  public String getK()
  {
    return k;
  }
  
  public long getLiveDate()
  {
    return liveDate;
  }
  
  public String getPhotoCaption()
  {
    return photoCaption;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public String getType()
  {
    return type;
  }
  
  public void setAlbumId(long paramLong)
  {
    albumId = paramLong;
  }
  
  public void setCreatedDate(long paramLong)
  {
    createdDate = paramLong;
  }
  
  public void setFilepath(String paramString)
  {
    filepath = paramString;
  }
  
  public void setFilepathThumb(String paramString)
  {
    filepathThumb = paramString;
  }
  
  public void setId(long paramLong)
  {
    id = paramLong;
  }
  
  public void setIsFlock(long paramLong)
  {
    isFlock = paramLong;
  }
  
  public void setK(String paramString)
  {
    k = paramString;
  }
  
  public void setLiveDate(long paramLong)
  {
    liveDate = paramLong;
  }
  
  public void setPhotoCaption(String paramString)
  {
    photoCaption = paramString;
  }
  
  public void setTitle(String paramString)
  {
    title = paramString;
  }
  
  public void setType(String paramString)
  {
    type = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(id);
    paramParcel.writeLong(createdDate);
    paramParcel.writeLong(albumId);
    paramParcel.writeString(type);
    paramParcel.writeString(photoCaption);
    paramParcel.writeString(title);
    paramParcel.writeString(filepath);
    paramParcel.writeString(filepathThumb);
    paramParcel.writeString(k);
    paramParcel.writeLong(isFlock);
    paramParcel.writeLong(liveDate);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.AlbumPhoto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */