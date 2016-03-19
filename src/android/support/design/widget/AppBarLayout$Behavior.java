package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.BaseSavedState;
import java.lang.ref.WeakReference;
import java.util.List;

public class AppBarLayout$Behavior
  extends HeaderBehavior<AppBarLayout>
{
  private int a;
  private boolean b;
  private boolean c;
  private q d;
  private int e = -1;
  private boolean f;
  private float g;
  private WeakReference<View> h;
  private a i;
  
  public AppBarLayout$Behavior() {}
  
  public AppBarLayout$Behavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void a(AppBarLayout paramAppBarLayout)
  {
    List localList = AppBarLayout.h(paramAppBarLayout);
    int k = localList.size();
    int j = 0;
    while (j < k)
    {
      AppBarLayout.a locala = (AppBarLayout.a)localList.get(j);
      if (locala != null) {
        locala.a(paramAppBarLayout, super.b());
      }
      j += 1;
    }
  }
  
  private void a(final CoordinatorLayout paramCoordinatorLayout, final AppBarLayout paramAppBarLayout, int paramInt)
  {
    int j = a();
    if (j == paramInt)
    {
      if ((d != null) && (d.b())) {
        d.e();
      }
      return;
    }
    if (d == null)
    {
      d = w.a();
      d.a(a.c);
      d.a(new q.c()
      {
        public final void a(q paramAnonymousq)
        {
          c(paramCoordinatorLayout, paramAppBarLayout, paramAnonymousq.c());
        }
      });
    }
    for (;;)
    {
      float f1 = Math.abs(j - paramInt) / getResourcesgetDisplayMetricsdensity;
      d.a(Math.round(f1 * 1000.0F / 300.0F));
      d.a(j, paramInt);
      d.a();
      return;
      d.e();
    }
  }
  
  final int a()
  {
    return super.b() + a;
  }
  
  protected static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks() {});
    int a;
    float b;
    boolean c;
    
    public SavedState(Parcel paramParcel)
    {
      super();
      a = paramParcel.readInt();
      b = paramParcel.readFloat();
      if (paramParcel.readByte() != 0) {}
      for (boolean bool = true;; bool = false)
      {
        c = bool;
        return;
      }
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(a);
      paramParcel.writeFloat(b);
      if (c) {}
      for (paramInt = 1;; paramInt = 0)
      {
        paramParcel.writeByte((byte)paramInt);
        return;
      }
    }
  }
  
  public static abstract class a
  {
    public abstract boolean a();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.AppBarLayout.Behavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */