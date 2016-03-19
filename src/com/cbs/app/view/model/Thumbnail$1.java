package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class Thumbnail$1
  implements Parcelable.Creator<Thumbnail>
{
  public final Thumbnail createFromParcel(Parcel paramParcel)
  {
    return new Thumbnail(paramParcel);
  }
  
  public final Thumbnail[] newArray(int paramInt)
  {
    return new Thumbnail[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.Thumbnail.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */