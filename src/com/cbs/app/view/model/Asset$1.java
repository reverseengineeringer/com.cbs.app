package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class Asset$1
  implements Parcelable.Creator<Asset>
{
  public final Asset createFromParcel(Parcel paramParcel)
  {
    return new Asset(paramParcel);
  }
  
  public final Asset[] newArray(int paramInt)
  {
    return new Asset[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.Asset.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */