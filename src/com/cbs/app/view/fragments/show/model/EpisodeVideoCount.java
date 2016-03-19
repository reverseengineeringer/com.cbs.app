package com.cbs.app.view.fragments.show.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class EpisodeVideoCount
  implements Parcelable
{
  public static final Parcelable.Creator<EpisodeVideoCount> CREATOR = new Parcelable.Creator()
  {
    public final EpisodeVideoCount createFromParcel(Parcel paramAnonymousParcel)
    {
      return new EpisodeVideoCount(paramAnonymousParcel);
    }
    
    public final EpisodeVideoCount[] newArray(int paramAnonymousInt)
    {
      return new EpisodeVideoCount[paramAnonymousInt];
    }
  };
  public int totalClips;
  public int totalEpisodes;
  public int totalPremiumEpisodes;
  
  public EpisodeVideoCount() {}
  
  public EpisodeVideoCount(Parcel paramParcel)
  {
    totalClips = paramParcel.readInt();
    totalEpisodes = paramParcel.readInt();
    totalPremiumEpisodes = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "EpisodeVideoCount{totalClips=" + totalClips + ", totalEpisodes=" + totalEpisodes + ", totalPremiumEpisodes=" + totalPremiumEpisodes + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(totalClips);
    paramParcel.writeInt(totalEpisodes);
    paramParcel.writeInt(totalPremiumEpisodes);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.model.EpisodeVideoCount
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */