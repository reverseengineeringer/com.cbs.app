package android.support.v4.media;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.v4.os.ResultReceiver;

public abstract class IMediaBrowserServiceCompat$Stub
  extends Binder
  implements IMediaBrowserServiceCompat
{
  private static final String DESCRIPTOR = "android.support.v4.media.IMediaBrowserServiceCompat";
  static final int TRANSACTION_addSubscription = 3;
  static final int TRANSACTION_connect = 1;
  static final int TRANSACTION_disconnect = 2;
  static final int TRANSACTION_getMediaItem = 5;
  static final int TRANSACTION_removeSubscription = 4;
  
  public IMediaBrowserServiceCompat$Stub()
  {
    attachInterface(this, "android.support.v4.media.IMediaBrowserServiceCompat");
  }
  
  public static IMediaBrowserServiceCompat asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("android.support.v4.media.IMediaBrowserServiceCompat");
    if ((localIInterface != null) && ((localIInterface instanceof IMediaBrowserServiceCompat))) {
      return (IMediaBrowserServiceCompat)localIInterface;
    }
    return new Proxy(paramIBinder);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    String str2 = null;
    String str1 = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("android.support.v4.media.IMediaBrowserServiceCompat");
      return true;
    case 1: 
      paramParcel1.enforceInterface("android.support.v4.media.IMediaBrowserServiceCompat");
      str2 = paramParcel1.readString();
      paramParcel2 = str1;
      if (paramParcel1.readInt() != 0) {
        paramParcel2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      }
      connect(str2, paramParcel2, IMediaBrowserServiceCompatCallbacks.Stub.asInterface(paramParcel1.readStrongBinder()));
      return true;
    case 2: 
      paramParcel1.enforceInterface("android.support.v4.media.IMediaBrowserServiceCompat");
      disconnect(IMediaBrowserServiceCompatCallbacks.Stub.asInterface(paramParcel1.readStrongBinder()));
      return true;
    case 3: 
      paramParcel1.enforceInterface("android.support.v4.media.IMediaBrowserServiceCompat");
      addSubscription(paramParcel1.readString(), IMediaBrowserServiceCompatCallbacks.Stub.asInterface(paramParcel1.readStrongBinder()));
      return true;
    case 4: 
      paramParcel1.enforceInterface("android.support.v4.media.IMediaBrowserServiceCompat");
      removeSubscription(paramParcel1.readString(), IMediaBrowserServiceCompatCallbacks.Stub.asInterface(paramParcel1.readStrongBinder()));
      return true;
    }
    paramParcel1.enforceInterface("android.support.v4.media.IMediaBrowserServiceCompat");
    str1 = paramParcel1.readString();
    paramParcel2 = str2;
    if (paramParcel1.readInt() != 0) {
      paramParcel2 = (ResultReceiver)ResultReceiver.CREATOR.createFromParcel(paramParcel1);
    }
    getMediaItem(str1, paramParcel2);
    return true;
  }
  
  private static class Proxy
    implements IMediaBrowserServiceCompat
  {
    private IBinder mRemote;
    
    Proxy(IBinder paramIBinder)
    {
      mRemote = paramIBinder;
    }
    
    public void addSubscription(String paramString, IMediaBrowserServiceCompatCallbacks paramIMediaBrowserServiceCompatCallbacks)
    {
      Object localObject = null;
      Parcel localParcel = Parcel.obtain();
      try
      {
        localParcel.writeInterfaceToken("android.support.v4.media.IMediaBrowserServiceCompat");
        localParcel.writeString(paramString);
        paramString = (String)localObject;
        if (paramIMediaBrowserServiceCompatCallbacks != null) {
          paramString = paramIMediaBrowserServiceCompatCallbacks.asBinder();
        }
        localParcel.writeStrongBinder(paramString);
        mRemote.transact(3, localParcel, null, 1);
        return;
      }
      finally
      {
        localParcel.recycle();
      }
    }
    
    public IBinder asBinder()
    {
      return mRemote;
    }
    
    /* Error */
    public void connect(String paramString, Bundle paramBundle, IMediaBrowserServiceCompatCallbacks paramIMediaBrowserServiceCompatCallbacks)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore 4
      //   3: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   6: astore 5
      //   8: aload 5
      //   10: ldc 30
      //   12: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   15: aload 5
      //   17: aload_1
      //   18: invokevirtual 37	android/os/Parcel:writeString	(Ljava/lang/String;)V
      //   21: aload_2
      //   22: ifnull +57 -> 79
      //   25: aload 5
      //   27: iconst_1
      //   28: invokevirtual 61	android/os/Parcel:writeInt	(I)V
      //   31: aload_2
      //   32: aload 5
      //   34: iconst_0
      //   35: invokevirtual 67	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
      //   38: aload 4
      //   40: astore_1
      //   41: aload_3
      //   42: ifnull +10 -> 52
      //   45: aload_3
      //   46: invokeinterface 43 1 0
      //   51: astore_1
      //   52: aload 5
      //   54: aload_1
      //   55: invokevirtual 46	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   58: aload_0
      //   59: getfield 19	android/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy:mRemote	Landroid/os/IBinder;
      //   62: iconst_1
      //   63: aload 5
      //   65: aconst_null
      //   66: iconst_1
      //   67: invokeinterface 52 5 0
      //   72: pop
      //   73: aload 5
      //   75: invokevirtual 55	android/os/Parcel:recycle	()V
      //   78: return
      //   79: aload 5
      //   81: iconst_0
      //   82: invokevirtual 61	android/os/Parcel:writeInt	(I)V
      //   85: goto -47 -> 38
      //   88: astore_1
      //   89: aload 5
      //   91: invokevirtual 55	android/os/Parcel:recycle	()V
      //   94: aload_1
      //   95: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	96	0	this	Proxy
      //   0	96	1	paramString	String
      //   0	96	2	paramBundle	Bundle
      //   0	96	3	paramIMediaBrowserServiceCompatCallbacks	IMediaBrowserServiceCompatCallbacks
      //   1	38	4	localObject	Object
      //   6	84	5	localParcel	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	21	88	finally
      //   25	38	88	finally
      //   45	52	88	finally
      //   52	73	88	finally
      //   79	85	88	finally
    }
    
    public void disconnect(IMediaBrowserServiceCompatCallbacks paramIMediaBrowserServiceCompatCallbacks)
    {
      IBinder localIBinder = null;
      Parcel localParcel = Parcel.obtain();
      try
      {
        localParcel.writeInterfaceToken("android.support.v4.media.IMediaBrowserServiceCompat");
        if (paramIMediaBrowserServiceCompatCallbacks != null) {
          localIBinder = paramIMediaBrowserServiceCompatCallbacks.asBinder();
        }
        localParcel.writeStrongBinder(localIBinder);
        mRemote.transact(2, localParcel, null, 1);
        return;
      }
      finally
      {
        localParcel.recycle();
      }
    }
    
    public String getInterfaceDescriptor()
    {
      return "android.support.v4.media.IMediaBrowserServiceCompat";
    }
    
    /* Error */
    public void getMediaItem(String paramString, ResultReceiver paramResultReceiver)
    {
      // Byte code:
      //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_3
      //   4: aload_3
      //   5: ldc 30
      //   7: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   10: aload_3
      //   11: aload_1
      //   12: invokevirtual 37	android/os/Parcel:writeString	(Ljava/lang/String;)V
      //   15: aload_2
      //   16: ifnull +33 -> 49
      //   19: aload_3
      //   20: iconst_1
      //   21: invokevirtual 61	android/os/Parcel:writeInt	(I)V
      //   24: aload_2
      //   25: aload_3
      //   26: iconst_0
      //   27: invokevirtual 76	android/support/v4/os/ResultReceiver:writeToParcel	(Landroid/os/Parcel;I)V
      //   30: aload_0
      //   31: getfield 19	android/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy:mRemote	Landroid/os/IBinder;
      //   34: iconst_5
      //   35: aload_3
      //   36: aconst_null
      //   37: iconst_1
      //   38: invokeinterface 52 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 55	android/os/Parcel:recycle	()V
      //   48: return
      //   49: aload_3
      //   50: iconst_0
      //   51: invokevirtual 61	android/os/Parcel:writeInt	(I)V
      //   54: goto -24 -> 30
      //   57: astore_1
      //   58: aload_3
      //   59: invokevirtual 55	android/os/Parcel:recycle	()V
      //   62: aload_1
      //   63: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	64	0	this	Proxy
      //   0	64	1	paramString	String
      //   0	64	2	paramResultReceiver	ResultReceiver
      //   3	56	3	localParcel	Parcel
      // Exception table:
      //   from	to	target	type
      //   4	15	57	finally
      //   19	30	57	finally
      //   30	44	57	finally
      //   49	54	57	finally
    }
    
    public void removeSubscription(String paramString, IMediaBrowserServiceCompatCallbacks paramIMediaBrowserServiceCompatCallbacks)
    {
      Object localObject = null;
      Parcel localParcel = Parcel.obtain();
      try
      {
        localParcel.writeInterfaceToken("android.support.v4.media.IMediaBrowserServiceCompat");
        localParcel.writeString(paramString);
        paramString = (String)localObject;
        if (paramIMediaBrowserServiceCompatCallbacks != null) {
          paramString = paramIMediaBrowserServiceCompatCallbacks.asBinder();
        }
        localParcel.writeStrongBinder(paramString);
        mRemote.transact(4, localParcel, null, 1);
        return;
      }
      finally
      {
        localParcel.recycle();
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.IMediaBrowserServiceCompat.Stub
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */