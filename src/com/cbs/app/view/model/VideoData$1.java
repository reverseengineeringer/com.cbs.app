package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class VideoData$1
  implements Parcelable.Creator<VideoData>
{
  public final VideoData createFromParcel(Parcel paramParcel)
  {
    return new VideoData(paramParcel);
  }
  
  public final VideoData[] newArray(int paramInt)
  {
    return new VideoData[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.VideoData.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */