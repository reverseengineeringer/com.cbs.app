package android.support.v7.media;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.media.MediaRouter;
import android.media.MediaRouter.RouteInfo;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.Display;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class MediaRouterJellybeanMr1
{
  private static final String TAG = "MediaRouterJellybeanMr1";
  
  public static Object createCallback(Callback paramCallback)
  {
    return new CallbackProxy(paramCallback);
  }
  
  public static final class ActiveScanWorkaround
    implements Runnable
  {
    private static final int WIFI_DISPLAY_SCAN_INTERVAL = 15000;
    private boolean mActivelyScanningWifiDisplays;
    private final DisplayManager mDisplayManager;
    private final Handler mHandler;
    private Method mScanWifiDisplaysMethod;
    
    public ActiveScanWorkaround(Context paramContext, Handler paramHandler)
    {
      if (Build.VERSION.SDK_INT != 17) {
        throw new UnsupportedOperationException();
      }
      mDisplayManager = ((DisplayManager)paramContext.getSystemService("display"));
      mHandler = paramHandler;
      try
      {
        mScanWifiDisplaysMethod = DisplayManager.class.getMethod("scanWifiDisplays", new Class[0]);
        return;
      }
      catch (NoSuchMethodException paramContext) {}
    }
    
    public final void run()
    {
      if (mActivelyScanningWifiDisplays) {}
      try
      {
        mScanWifiDisplaysMethod.invoke(mDisplayManager, new Object[0]);
        mHandler.postDelayed(this, 15000L);
        return;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        for (;;) {}
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        for (;;) {}
      }
    }
    
    public final void setActiveScanRouteTypes(int paramInt)
    {
      if ((paramInt & 0x2) != 0) {
        if ((!mActivelyScanningWifiDisplays) && (mScanWifiDisplaysMethod != null))
        {
          mActivelyScanningWifiDisplays = true;
          mHandler.post(this);
        }
      }
      while (!mActivelyScanningWifiDisplays) {
        return;
      }
      mActivelyScanningWifiDisplays = false;
      mHandler.removeCallbacks(this);
    }
  }
  
  public static abstract interface Callback
    extends MediaRouterJellybean.Callback
  {
    public abstract void onRoutePresentationDisplayChanged(Object paramObject);
  }
  
  static class CallbackProxy<T extends MediaRouterJellybeanMr1.Callback>
    extends MediaRouterJellybean.CallbackProxy<T>
  {
    public CallbackProxy(T paramT)
    {
      super();
    }
    
    public void onRoutePresentationDisplayChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      ((MediaRouterJellybeanMr1.Callback)mCallback).onRoutePresentationDisplayChanged(paramRouteInfo);
    }
  }
  
  public static final class IsConnectingWorkaround
  {
    private Method mGetStatusCodeMethod;
    private int mStatusConnecting;
    
    public IsConnectingWorkaround()
    {
      if (Build.VERSION.SDK_INT != 17) {
        throw new UnsupportedOperationException();
      }
      try
      {
        mStatusConnecting = MediaRouter.RouteInfo.class.getField("STATUS_CONNECTING").getInt(null);
        mGetStatusCodeMethod = MediaRouter.RouteInfo.class.getMethod("getStatusCode", new Class[0]);
        return;
      }
      catch (IllegalAccessException localIllegalAccessException) {}catch (NoSuchMethodException localNoSuchMethodException) {}catch (NoSuchFieldException localNoSuchFieldException) {}
    }
    
    public final boolean isConnecting(Object paramObject)
    {
      paramObject = (MediaRouter.RouteInfo)paramObject;
      if (mGetStatusCodeMethod != null) {}
      try
      {
        int i = ((Integer)mGetStatusCodeMethod.invoke(paramObject, new Object[0])).intValue();
        int j = mStatusConnecting;
        return i == j;
      }
      catch (InvocationTargetException paramObject)
      {
        return false;
      }
      catch (IllegalAccessException paramObject)
      {
        for (;;) {}
      }
    }
  }
  
  public static final class RouteInfo
  {
    public static Display getPresentationDisplay(Object paramObject)
    {
      return ((MediaRouter.RouteInfo)paramObject).getPresentationDisplay();
    }
    
    public static boolean isEnabled(Object paramObject)
    {
      return ((MediaRouter.RouteInfo)paramObject).isEnabled();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouterJellybeanMr1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */