package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

public class Toolbar$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
  {
    public final Toolbar.SavedState createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Toolbar.SavedState(paramAnonymousParcel);
    }
    
    public final Toolbar.SavedState[] newArray(int paramAnonymousInt)
    {
      return new Toolbar.SavedState[paramAnonymousInt];
    }
  };
  int expandedMenuItemId;
  boolean isOverflowOpen;
  
  public Toolbar$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    expandedMenuItemId = paramParcel.readInt();
    if (paramParcel.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      isOverflowOpen = bool;
      return;
    }
  }
  
  public Toolbar$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(expandedMenuItemId);
    if (isOverflowOpen) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.Toolbar.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */