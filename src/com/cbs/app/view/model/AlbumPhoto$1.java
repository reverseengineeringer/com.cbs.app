package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class AlbumPhoto$1
  implements Parcelable.Creator<AlbumPhoto>
{
  public final AlbumPhoto createFromParcel(Parcel paramParcel)
  {
    return new AlbumPhoto(paramParcel);
  }
  
  public final AlbumPhoto[] newArray(int paramInt)
  {
    return new AlbumPhoto[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.AlbumPhoto.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */