package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class EpisodeVideoCount
  implements Parcelable
{
  public static final Parcelable.Creator<EpisodeVideoCount> CREATOR = new Parcelable.Creator() {};
  public int a;
  public int b;
  public int c;
  
  public EpisodeVideoCount() {}
  
  protected EpisodeVideoCount(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readInt();
    c = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getTotalClips()
  {
    return a;
  }
  
  public int getTotalEpisodes()
  {
    return b;
  }
  
  public int getTotalPremiumEpisodes()
  {
    return c;
  }
  
  public void setTotalClips(int paramInt)
  {
    a = paramInt;
  }
  
  public void setTotalEpisodes(int paramInt)
  {
    b = paramInt;
  }
  
  public void setTotalPremiumEpisodes(int paramInt)
  {
    c = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeInt(b);
    paramParcel.writeInt(c);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.EpisodeVideoCount
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */