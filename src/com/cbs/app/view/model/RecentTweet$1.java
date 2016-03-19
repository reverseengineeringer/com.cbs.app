package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class RecentTweet$1
  implements Parcelable.Creator<RecentTweet>
{
  public final RecentTweet createFromParcel(Parcel paramParcel)
  {
    return new RecentTweet(paramParcel);
  }
  
  public final RecentTweet[] newArray(int paramInt)
  {
    return new RecentTweet[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.RecentTweet.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */