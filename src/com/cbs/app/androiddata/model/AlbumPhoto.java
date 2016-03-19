package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AlbumPhoto
  implements Parcelable
{
  public static final Parcelable.Creator<AlbumPhoto> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("id")
  private long a;
  @JsonProperty("created_date")
  private long b;
  @JsonProperty("album_id")
  private long c;
  @JsonProperty("type")
  private String d;
  @JsonProperty("photo_caption")
  private String e;
  @JsonProperty("title")
  private String f;
  @JsonProperty("filepath")
  private String g;
  @JsonProperty("filepath_thumb")
  private String h;
  @JsonProperty("k")
  private String i;
  @JsonProperty("is_flock")
  private long j;
  @JsonProperty("live_date")
  private long k;
  
  public AlbumPhoto() {}
  
  public AlbumPhoto(Parcel paramParcel)
  {
    a = paramParcel.readLong();
    b = paramParcel.readLong();
    c = paramParcel.readLong();
    d = paramParcel.readString();
    e = paramParcel.readString();
    f = paramParcel.readString();
    g = paramParcel.readString();
    h = paramParcel.readString();
    i = paramParcel.readString();
    j = paramParcel.readLong();
    k = paramParcel.readLong();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getAlbumId()
  {
    return c;
  }
  
  public long getCreatedDate()
  {
    return b;
  }
  
  public String getFilepath()
  {
    return g;
  }
  
  public String getFilepathThumb()
  {
    return h;
  }
  
  public long getId()
  {
    return a;
  }
  
  public long getIsFlock()
  {
    return j;
  }
  
  public String getK()
  {
    return i;
  }
  
  public long getLiveDate()
  {
    return k;
  }
  
  public String getPhotoCaption()
  {
    return e;
  }
  
  public String getTitle()
  {
    return f;
  }
  
  public String getType()
  {
    return d;
  }
  
  public void setAlbumId(long paramLong)
  {
    c = paramLong;
  }
  
  public void setCreatedDate(long paramLong)
  {
    b = paramLong;
  }
  
  public void setFilepath(String paramString)
  {
    g = paramString;
  }
  
  public void setFilepathThumb(String paramString)
  {
    h = paramString;
  }
  
  public void setId(long paramLong)
  {
    a = paramLong;
  }
  
  public void setIsFlock(long paramLong)
  {
    j = paramLong;
  }
  
  public void setK(String paramString)
  {
    i = paramString;
  }
  
  public void setLiveDate(long paramLong)
  {
    k = paramLong;
  }
  
  public void setPhotoCaption(String paramString)
  {
    e = paramString;
  }
  
  public void setTitle(String paramString)
  {
    f = paramString;
  }
  
  public void setType(String paramString)
  {
    d = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(a);
    paramParcel.writeLong(b);
    paramParcel.writeLong(c);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    paramParcel.writeString(h);
    paramParcel.writeString(i);
    paramParcel.writeLong(j);
    paramParcel.writeLong(k);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.AlbumPhoto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */