package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Schedule
  implements Parcelable, Comparable<Schedule>
{
  public static final Parcelable.Creator<Schedule> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("showTitle")
  private String A;
  @JsonProperty("airDate_sec")
  private long B;
  @JsonProperty("airDateString")
  private String C;
  @JsonProperty("endTime")
  private String D;
  @JsonProperty("duration")
  private String E;
  @JsonProperty("episodeNumber")
  private String F;
  @JsonProperty("episodeTitle")
  private String G;
  @JsonProperty("isNewEpisode")
  private String H;
  @JsonProperty("pressSummary")
  private String I;
  @JsonProperty("tvRating")
  private String J;
  @JsonProperty("urllink")
  private String K;
  @JsonProperty("hdtv")
  private String L;
  @JsonProperty("dayOfWeek")
  private String M;
  @JsonProperty("startTime")
  private String N;
  @JsonProperty("k")
  private String a;
  @JsonProperty("id")
  private String b;
  @JsonProperty("filepath_ipad")
  private String c;
  @JsonProperty("display_airdate")
  private String d;
  @JsonProperty("show_id")
  private long e;
  @JsonProperty("title")
  private String f;
  @JsonProperty("type")
  private String g;
  @JsonProperty("filepath")
  private String h;
  @JsonProperty("filepath_hour")
  private String i;
  @JsonProperty("filepath_halfhour")
  private String j;
  @JsonProperty("filepath_desktop_override_half_hour")
  private String k;
  @JsonProperty("filepath_desktop_override_one_hour")
  private String l;
  @JsonProperty("filepath_desktop_override_one_and_half_hour")
  private String m;
  @JsonProperty("filepath_desktop_override_two_hours")
  private String n;
  @JsonProperty("filepath_desktop_override_three_hours")
  private String o;
  @JsonProperty("filepath_apps_override_half_hour")
  private String p;
  @JsonProperty("filepath_apps_override_one_hour")
  private String q;
  @JsonProperty("filepath_apps_override_one_and_half_hour")
  private String r;
  @JsonProperty("filepath_apps_override_two_hours")
  private String s;
  @JsonProperty("filepath_apps_override_three_hours")
  private String t;
  @JsonProperty("filepath_mobile")
  private String u;
  @JsonProperty("filepath_show_logo")
  private String v;
  @JsonProperty("filepath_show_thumbnail")
  private String w;
  @JsonProperty("full_content_id")
  private String x;
  @JsonProperty("clip_content_id")
  private String y;
  @JsonProperty("showAssets")
  private ShowAssets z;
  
  public Schedule() {}
  
  protected Schedule(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = paramParcel.readString();
    d = paramParcel.readString();
    e = paramParcel.readLong();
    f = paramParcel.readString();
    g = paramParcel.readString();
    h = paramParcel.readString();
    i = paramParcel.readString();
    j = paramParcel.readString();
    k = paramParcel.readString();
    l = paramParcel.readString();
    m = paramParcel.readString();
    n = paramParcel.readString();
    o = paramParcel.readString();
    p = paramParcel.readString();
    q = paramParcel.readString();
    r = paramParcel.readString();
    s = paramParcel.readString();
    t = paramParcel.readString();
    u = paramParcel.readString();
    v = paramParcel.readString();
    w = paramParcel.readString();
    x = paramParcel.readString();
    y = paramParcel.readString();
    z = ((ShowAssets)paramParcel.readParcelable(ShowAssets.class.getClassLoader()));
    A = paramParcel.readString();
    B = paramParcel.readLong();
    C = paramParcel.readString();
    D = paramParcel.readString();
    E = paramParcel.readString();
    F = paramParcel.readString();
    G = paramParcel.readString();
    H = paramParcel.readString();
    I = paramParcel.readString();
    J = paramParcel.readString();
    K = paramParcel.readString();
    L = paramParcel.readString();
    M = paramParcel.readString();
    N = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Schedule))
    {
      paramObject = (Schedule)paramObject;
      bool1 = bool2;
      if (f.equals(f))
      {
        bool1 = bool2;
        if (B == B)
        {
          bool1 = bool2;
          if (N.equals(N))
          {
            bool1 = bool2;
            if (D.equals(D))
            {
              bool1 = bool2;
              if (E.equals(E)) {
                bool1 = true;
              }
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public long getAirDateSec()
  {
    return B;
  }
  
  public String getAirDateString()
  {
    return C;
  }
  
  public String getClipContentId()
  {
    return y;
  }
  
  public String getDayOfWeek()
  {
    return M;
  }
  
  public String getDisplayAirdate()
  {
    return d;
  }
  
  public String getDuration()
  {
    return E;
  }
  
  public String getEndTime()
  {
    return D;
  }
  
  public String getEpisodeNumber()
  {
    return F;
  }
  
  public String getEpisodeTitle()
  {
    return G;
  }
  
  public String getFilepath()
  {
    return h;
  }
  
  public String getFilepathAppsOverrideHalfHour()
  {
    return p;
  }
  
  public String getFilepathAppsOverrideOneAndHalfHour()
  {
    return r;
  }
  
  public String getFilepathAppsOverrideOneHour()
  {
    return q;
  }
  
  public String getFilepathAppsOverrideThreeHours()
  {
    return t;
  }
  
  public String getFilepathAppsOverrideTwoHours()
  {
    return s;
  }
  
  public String getFilepathDesktopOverrideHalfHour()
  {
    return k;
  }
  
  public String getFilepathDesktopOverrideOneAndHalfHour()
  {
    return m;
  }
  
  public String getFilepathDesktopOverrideOneHour()
  {
    return l;
  }
  
  public String getFilepathDesktopOverrideThreeHours()
  {
    return o;
  }
  
  public String getFilepathDesktopOverrideTwoHours()
  {
    return n;
  }
  
  public String getFilepathHalfhour()
  {
    return j;
  }
  
  public String getFilepathHour()
  {
    return i;
  }
  
  public String getFilepathIpad()
  {
    return c;
  }
  
  public String getFilepathMobile()
  {
    return u;
  }
  
  public String getFilepathShowLogo()
  {
    return v;
  }
  
  public String getFilepathShowThumbnail()
  {
    return w;
  }
  
  public String getFullContentId()
  {
    return x;
  }
  
  public Object getHdtv()
  {
    return L;
  }
  
  public String getId()
  {
    return b;
  }
  
  public String getIsNewEpisode()
  {
    return H;
  }
  
  public String getK()
  {
    return a;
  }
  
  public String getPressSummary()
  {
    return I;
  }
  
  public ShowAssets getShowAssets()
  {
    return z;
  }
  
  public long getShowId()
  {
    return e;
  }
  
  public String getShowTitle()
  {
    return A;
  }
  
  public String getStartTime()
  {
    return N;
  }
  
  public String getTitle()
  {
    return f;
  }
  
  public String getTvRating()
  {
    return J;
  }
  
  public String getType()
  {
    return g;
  }
  
  public String getUrllink()
  {
    return K;
  }
  
  public int hashCode()
  {
    return 45;
  }
  
  public void setAirDateSec(long paramLong)
  {
    B = paramLong;
  }
  
  public void setAirDateString(String paramString)
  {
    C = paramString;
  }
  
  public void setClipContentId(String paramString)
  {
    y = paramString;
  }
  
  public void setDayOfWeek(String paramString)
  {
    M = paramString;
  }
  
  public void setDisplayAirdate(String paramString)
  {
    d = paramString;
  }
  
  public void setDuration(String paramString)
  {
    E = paramString;
  }
  
  public void setEndTime(String paramString)
  {
    D = paramString;
  }
  
  public void setEpisodeNumber(String paramString)
  {
    F = paramString;
  }
  
  public void setEpisodeTitle(String paramString)
  {
    G = paramString;
  }
  
  public void setFilepath(String paramString)
  {
    h = paramString;
  }
  
  public void setFilepathAppsOverrideHalfHour(String paramString)
  {
    p = paramString;
  }
  
  public void setFilepathAppsOverrideOneAndHalfHour(String paramString)
  {
    r = paramString;
  }
  
  public void setFilepathAppsOverrideOneHour(String paramString)
  {
    q = paramString;
  }
  
  public void setFilepathAppsOverrideThreeHours(String paramString)
  {
    t = paramString;
  }
  
  public void setFilepathAppsOverrideTwoHours(String paramString)
  {
    s = paramString;
  }
  
  public void setFilepathDesktopOverrideHalfHour(String paramString)
  {
    k = paramString;
  }
  
  public void setFilepathDesktopOverrideOneAndHalfHour(String paramString)
  {
    m = paramString;
  }
  
  public void setFilepathDesktopOverrideOneHour(String paramString)
  {
    l = paramString;
  }
  
  public void setFilepathDesktopOverrideThreeHours(String paramString)
  {
    o = paramString;
  }
  
  public void setFilepathDesktopOverrideTwoHours(String paramString)
  {
    n = paramString;
  }
  
  public void setFilepathHalfhour(String paramString)
  {
    j = paramString;
  }
  
  public void setFilepathHour(String paramString)
  {
    i = paramString;
  }
  
  public void setFilepathIpad(String paramString)
  {
    c = paramString;
  }
  
  public void setFilepathMobile(String paramString)
  {
    u = paramString;
  }
  
  public void setFilepathShowLogo(String paramString)
  {
    v = paramString;
  }
  
  public void setFilepathShowThumbnail(String paramString)
  {
    w = paramString;
  }
  
  public void setFullContentId(String paramString)
  {
    x = paramString;
  }
  
  public void setHdtv(String paramString)
  {
    L = paramString;
  }
  
  public void setId(String paramString)
  {
    b = paramString;
  }
  
  public void setIsNewEpisode(String paramString)
  {
    H = paramString;
  }
  
  public void setK(String paramString)
  {
    a = paramString;
  }
  
  public void setPressSummary(String paramString)
  {
    I = paramString;
  }
  
  public void setShowAssets(ShowAssets paramShowAssets)
  {
    z = paramShowAssets;
  }
  
  public void setShowId(long paramLong)
  {
    e = paramLong;
  }
  
  public void setShowTitle(String paramString)
  {
    A = paramString;
  }
  
  public void setStartTime(String paramString)
  {
    N = paramString;
  }
  
  public void setTitle(String paramString)
  {
    f = paramString;
  }
  
  public void setTvRating(String paramString)
  {
    J = paramString;
  }
  
  public void setType(String paramString)
  {
    g = paramString;
  }
  
  public void setUrllink(String paramString)
  {
    K = paramString;
  }
  
  public String toString()
  {
    return A + getEpisodeTitle() + d + getTvRating();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeLong(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    paramParcel.writeString(h);
    paramParcel.writeString(i);
    paramParcel.writeString(j);
    paramParcel.writeString(k);
    paramParcel.writeString(l);
    paramParcel.writeString(m);
    paramParcel.writeString(n);
    paramParcel.writeString(o);
    paramParcel.writeString(p);
    paramParcel.writeString(q);
    paramParcel.writeString(r);
    paramParcel.writeString(s);
    paramParcel.writeString(t);
    paramParcel.writeString(u);
    paramParcel.writeString(v);
    paramParcel.writeString(w);
    paramParcel.writeString(x);
    paramParcel.writeString(y);
    paramParcel.writeParcelable(z, 0);
    paramParcel.writeString(A);
    paramParcel.writeLong(B);
    paramParcel.writeString(C);
    paramParcel.writeString(D);
    paramParcel.writeString(E);
    paramParcel.writeString(F);
    paramParcel.writeString(G);
    paramParcel.writeString(H);
    paramParcel.writeString(I);
    paramParcel.writeString(J);
    paramParcel.writeString(K);
    paramParcel.writeString(L);
    paramParcel.writeString(M);
    paramParcel.writeString(N);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.Schedule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */