package com.cbs.app.view.fragments.show.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ShowItem$1
  implements Parcelable.Creator<ShowItem>
{
  public final ShowItem createFromParcel(Parcel paramParcel)
  {
    return new ShowItem(paramParcel);
  }
  
  public final ShowItem[] newArray(int paramInt)
  {
    return new ShowItem[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.model.ShowItem.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */