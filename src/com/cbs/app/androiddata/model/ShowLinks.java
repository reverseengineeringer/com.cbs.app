package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowLinks
  implements Parcelable
{
  public static final Parcelable.Creator<ShowLinks> CREATOR = new Parcelable.Creator() {};
  private String a;
  private long b;
  @JsonProperty("__is_deleted")
  private boolean c;
  @JsonProperty("show_menu_id")
  private long d;
  private String e;
  @JsonProperty("link_type")
  private String f;
  @JsonProperty("__live_on_date")
  private long g;
  @JsonProperty("__expiry_date")
  private long h;
  @JsonProperty("__is_published")
  private boolean i;
  private String j;
  @JsonProperty("video_config_id")
  private long k;
  private String l;
  
  public ShowLinks() {}
  
  protected ShowLinks(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readLong();
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      c = bool1;
      d = paramParcel.readLong();
      e = paramParcel.readString();
      f = paramParcel.readString();
      g = paramParcel.readLong();
      h = paramParcel.readLong();
      if (paramParcel.readByte() == 0) {
        break label120;
      }
    }
    label120:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      i = bool1;
      j = paramParcel.readString();
      k = paramParcel.readLong();
      l = paramParcel.readString();
      return;
      bool1 = false;
      break;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getExiryDate()
  {
    return h;
  }
  
  public long getId()
  {
    return b;
  }
  
  public String getK()
  {
    return a;
  }
  
  public String getLink()
  {
    return j;
  }
  
  public String getLinkType()
  {
    return f;
  }
  
  public long getLiveOnDate()
  {
    return g;
  }
  
  public long getShowMenuId()
  {
    return d;
  }
  
  public String getTitle()
  {
    return e;
  }
  
  public long getVideoConfigId()
  {
    return k;
  }
  
  public String getVideoConfigUniqueName()
  {
    return l;
  }
  
  public void setExiryDate(long paramLong)
  {
    h = paramLong;
  }
  
  public void setId(long paramLong)
  {
    b = paramLong;
  }
  
  public void setIsDeleted(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void setIsPublished(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public void setK(String paramString)
  {
    a = paramString;
  }
  
  public void setLink(String paramString)
  {
    j = paramString;
  }
  
  public void setLinkType(String paramString)
  {
    f = paramString;
  }
  
  public void setLiveOnDate(long paramLong)
  {
    g = paramLong;
  }
  
  public void setShowMenuId(long paramLong)
  {
    d = paramLong;
  }
  
  public void setTitle(String paramString)
  {
    e = paramString;
  }
  
  public void setVideoConfigId(long paramLong)
  {
    k = paramLong;
  }
  
  public void setVideoConfigUniqueName(String paramString)
  {
    l = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    byte b2 = 1;
    paramParcel.writeString(a);
    paramParcel.writeLong(b);
    if (c)
    {
      b1 = 1;
      paramParcel.writeByte(b1);
      paramParcel.writeLong(d);
      paramParcel.writeString(e);
      paramParcel.writeString(f);
      paramParcel.writeLong(g);
      paramParcel.writeLong(h);
      if (!i) {
        break label118;
      }
    }
    label118:
    for (byte b1 = b2;; b1 = 0)
    {
      paramParcel.writeByte(b1);
      paramParcel.writeString(j);
      paramParcel.writeLong(k);
      paramParcel.writeString(l);
      return;
      b1 = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.ShowLinks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */