package com.google.android.gms.iid;

import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class MessengerCompat
  implements Parcelable
{
  public static final Parcelable.Creator<MessengerCompat> CREATOR = new Parcelable.Creator() {};
  Messenger a;
  c b;
  
  public MessengerCompat(Handler paramHandler)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      a = new Messenger(paramHandler);
      return;
    }
    b = new a(paramHandler);
  }
  
  public MessengerCompat(IBinder paramIBinder)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      a = new Messenger(paramIBinder);
      return;
    }
    b = c.a.a(paramIBinder);
  }
  
  public static int a(Message paramMessage)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return sendingUid;
    }
    return arg2;
  }
  
  public final IBinder a()
  {
    if (a != null) {
      return a.getBinder();
    }
    return b.asBinder();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    try
    {
      boolean bool = a().equals(((MessengerCompat)paramObject).a());
      return bool;
    }
    catch (ClassCastException paramObject) {}
    return false;
  }
  
  public int hashCode()
  {
    return a().hashCode();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (a != null)
    {
      paramParcel.writeStrongBinder(a.getBinder());
      return;
    }
    paramParcel.writeStrongBinder(b.asBinder());
  }
  
  private final class a
    extends c.a
  {
    Handler a;
    
    a(Handler paramHandler)
    {
      a = paramHandler;
    }
    
    public final void a(Message paramMessage)
    {
      arg2 = Binder.getCallingUid();
      a.dispatchMessage(paramMessage);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.iid.MessengerCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */