package com.cbs.app.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class CbsCirclePageIndicator$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() {};
  int a;
  
  private CbsCirclePageIndicator$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readInt();
  }
  
  public CbsCirclePageIndicator$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(a);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.CbsCirclePageIndicator.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */