package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class Show$1
  implements Parcelable.Creator<Show>
{
  public final Show createFromParcel(Parcel paramParcel)
  {
    return new Show(paramParcel);
  }
  
  public final Show[] newArray(int paramInt)
  {
    return new Show[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.Show.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */