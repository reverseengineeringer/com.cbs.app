package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.HashMap;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowItem
  implements Parcelable
{
  public static final Parcelable.Creator<ShowItem> CREATOR = new Parcelable.Creator() {};
  private String a;
  private EpisodeVideoCount b;
  private String c;
  private String d;
  private long e;
  private HashMap<String, String> f;
  private long g;
  private String h;
  private long i;
  private String j;
  private String k;
  @JsonProperty("tune_in_time")
  private String l;
  
  public ShowItem() {}
  
  protected ShowItem(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = ((EpisodeVideoCount)paramParcel.readParcelable(EpisodeVideoCount.class.getClassLoader()));
    c = paramParcel.readString();
    d = paramParcel.readString();
    e = paramParcel.readLong();
    String str = paramParcel.readString();
    TypeReference local1 = new TypeReference() {};
    try
    {
      f = ((HashMap)new ObjectMapper().readValue(str, local1));
      g = paramParcel.readLong();
      h = paramParcel.readString();
      i = paramParcel.readLong();
      j = paramParcel.readString();
      k = paramParcel.readString();
      l = paramParcel.readString();
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        f = new HashMap();
      }
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCategory()
  {
    return a;
  }
  
  public EpisodeVideoCount getEpisodeVideoCount()
  {
    return b;
  }
  
  public String getFilepathShowGroupItemLogo()
  {
    return c;
  }
  
  public String getFilepathShowLogo()
  {
    return d;
  }
  
  public long getId()
  {
    return e;
  }
  
  public HashMap<String, String> getShowAssets()
  {
    return f;
  }
  
  public long getShowGroupId()
  {
    return g;
  }
  
  public String getShowGroupItemLinks()
  {
    return h;
  }
  
  public long getShowId()
  {
    return i;
  }
  
  public String getShowUrl()
  {
    return j;
  }
  
  public String getTitle()
  {
    return k;
  }
  
  public String getTuneInTime()
  {
    return l;
  }
  
  public void setCategory(String paramString)
  {
    a = paramString;
  }
  
  public void setEpisodeVideoCount(EpisodeVideoCount paramEpisodeVideoCount)
  {
    b = paramEpisodeVideoCount;
  }
  
  public void setFilepathShowGroupItemLogo(String paramString)
  {
    c = paramString;
  }
  
  public void setFilepathShowLogo(String paramString)
  {
    d = paramString;
  }
  
  public void setId(long paramLong)
  {
    e = paramLong;
  }
  
  public void setShowAssets(HashMap<String, String> paramHashMap)
  {
    f = paramHashMap;
  }
  
  public void setShowGroupId(long paramLong)
  {
    g = paramLong;
  }
  
  public void setShowGroupItemLinks(String paramString)
  {
    h = paramString;
  }
  
  public void setShowId(long paramLong)
  {
    i = paramLong;
  }
  
  public void setShowUrl(String paramString)
  {
    j = paramString;
  }
  
  public void setTitle(String paramString)
  {
    k = paramString;
  }
  
  public void setTuneInTime(String paramString)
  {
    l = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeParcelable(b, paramInt);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeLong(e);
    try
    {
      paramParcel.writeString(new ObjectMapper().writeValueAsString(f));
      paramParcel.writeLong(g);
      paramParcel.writeString(h);
      paramParcel.writeLong(i);
      paramParcel.writeString(j);
      paramParcel.writeString(k);
      paramParcel.writeString(l);
      return;
    }
    catch (JsonProcessingException localJsonProcessingException)
    {
      for (;;)
      {
        paramParcel.writeString("{}");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.ShowItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */