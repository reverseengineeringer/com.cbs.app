package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class AppConfig$1
  implements Parcelable.Creator<AppConfig>
{
  public final AppConfig createFromParcel(Parcel paramParcel)
  {
    return new AppConfig(paramParcel, null);
  }
  
  public final AppConfig[] newArray(int paramInt)
  {
    return new AppConfig[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.AppConfig.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */