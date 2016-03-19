package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ConnectEvent$1
  implements Parcelable.Creator<ConnectEvent>
{
  public final ConnectEvent createFromParcel(Parcel paramParcel)
  {
    return new ConnectEvent(paramParcel);
  }
  
  public final ConnectEvent[] newArray(int paramInt)
  {
    return new ConnectEvent[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.ConnectEvent.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */