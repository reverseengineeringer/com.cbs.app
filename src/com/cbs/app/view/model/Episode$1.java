package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class Episode$1
  implements Parcelable.Creator<Episode>
{
  public final Episode createFromParcel(Parcel paramParcel)
  {
    return new Episode(paramParcel);
  }
  
  public final Episode[] newArray(int paramInt)
  {
    return new Episode[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.Episode.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */