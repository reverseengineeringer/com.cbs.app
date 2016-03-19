package com.cbs.app.view.model.syncbak;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class SyncbakStream$1
  implements Parcelable.Creator<SyncbakStream>
{
  public final SyncbakStream createFromParcel(Parcel paramParcel)
  {
    return new SyncbakStream(paramParcel);
  }
  
  public final SyncbakStream[] newArray(int paramInt)
  {
    return new SyncbakStream[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.syncbak.SyncbakStream.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */