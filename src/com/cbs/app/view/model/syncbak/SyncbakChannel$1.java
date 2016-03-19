package com.cbs.app.view.model.syncbak;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class SyncbakChannel$1
  implements Parcelable.Creator<SyncbakChannel>
{
  public final SyncbakChannel createFromParcel(Parcel paramParcel)
  {
    return new SyncbakChannel(paramParcel);
  }
  
  public final SyncbakChannel[] newArray(int paramInt)
  {
    return new SyncbakChannel[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.syncbak.SyncbakChannel.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */