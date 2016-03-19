package android.support.v7.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;

public abstract class MediaRouteProvider
{
  private static final int MSG_DELIVER_DESCRIPTOR_CHANGED = 1;
  private static final int MSG_DELIVER_DISCOVERY_REQUEST_CHANGED = 2;
  private Callback mCallback;
  private final Context mContext;
  private MediaRouteProviderDescriptor mDescriptor;
  private MediaRouteDiscoveryRequest mDiscoveryRequest;
  private final ProviderHandler mHandler = new ProviderHandler(null);
  private final ProviderMetadata mMetadata;
  private boolean mPendingDescriptorChange;
  private boolean mPendingDiscoveryRequestChange;
  
  public MediaRouteProvider(Context paramContext)
  {
    this(paramContext, null);
  }
  
  MediaRouteProvider(Context paramContext, ProviderMetadata paramProviderMetadata)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context must not be null");
    }
    mContext = paramContext;
    if (paramProviderMetadata == null)
    {
      mMetadata = new ProviderMetadata(new ComponentName(paramContext, getClass()));
      return;
    }
    mMetadata = paramProviderMetadata;
  }
  
  private void deliverDescriptorChanged()
  {
    mPendingDescriptorChange = false;
    if (mCallback != null) {
      mCallback.onDescriptorChanged(this, mDescriptor);
    }
  }
  
  private void deliverDiscoveryRequestChanged()
  {
    mPendingDiscoveryRequestChange = false;
    onDiscoveryRequestChanged(mDiscoveryRequest);
  }
  
  public final Context getContext()
  {
    return mContext;
  }
  
  public final MediaRouteProviderDescriptor getDescriptor()
  {
    return mDescriptor;
  }
  
  public final MediaRouteDiscoveryRequest getDiscoveryRequest()
  {
    return mDiscoveryRequest;
  }
  
  public final Handler getHandler()
  {
    return mHandler;
  }
  
  public final ProviderMetadata getMetadata()
  {
    return mMetadata;
  }
  
  public RouteController onCreateRouteController(String paramString)
  {
    return null;
  }
  
  public void onDiscoveryRequestChanged(MediaRouteDiscoveryRequest paramMediaRouteDiscoveryRequest) {}
  
  public final void setCallback(Callback paramCallback)
  {
    MediaRouter.checkCallingThread();
    mCallback = paramCallback;
  }
  
  public final void setDescriptor(MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
  {
    
    if (mDescriptor != paramMediaRouteProviderDescriptor)
    {
      mDescriptor = paramMediaRouteProviderDescriptor;
      if (!mPendingDescriptorChange)
      {
        mPendingDescriptorChange = true;
        mHandler.sendEmptyMessage(1);
      }
    }
  }
  
  public final void setDiscoveryRequest(MediaRouteDiscoveryRequest paramMediaRouteDiscoveryRequest)
  {
    
    if ((mDiscoveryRequest == paramMediaRouteDiscoveryRequest) || ((mDiscoveryRequest != null) && (mDiscoveryRequest.equals(paramMediaRouteDiscoveryRequest)))) {}
    do
    {
      return;
      mDiscoveryRequest = paramMediaRouteDiscoveryRequest;
    } while (mPendingDiscoveryRequestChange);
    mPendingDiscoveryRequestChange = true;
    mHandler.sendEmptyMessage(2);
  }
  
  public static abstract class Callback
  {
    public void onDescriptorChanged(MediaRouteProvider paramMediaRouteProvider, MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor) {}
  }
  
  private final class ProviderHandler
    extends Handler
  {
    private ProviderHandler() {}
    
    public final void handleMessage(Message paramMessage)
    {
      switch (what)
      {
      default: 
        return;
      case 1: 
        MediaRouteProvider.this.deliverDescriptorChanged();
        return;
      }
      MediaRouteProvider.this.deliverDiscoveryRequestChanged();
    }
  }
  
  public static final class ProviderMetadata
  {
    private final ComponentName mComponentName;
    
    ProviderMetadata(ComponentName paramComponentName)
    {
      if (paramComponentName == null) {
        throw new IllegalArgumentException("componentName must not be null");
      }
      mComponentName = paramComponentName;
    }
    
    public final ComponentName getComponentName()
    {
      return mComponentName;
    }
    
    public final String getPackageName()
    {
      return mComponentName.getPackageName();
    }
    
    public final String toString()
    {
      return "ProviderMetadata{ componentName=" + mComponentName.flattenToShortString() + " }";
    }
  }
  
  public static abstract class RouteController
  {
    public boolean onControlRequest(Intent paramIntent, MediaRouter.ControlRequestCallback paramControlRequestCallback)
    {
      return false;
    }
    
    public void onRelease() {}
    
    public void onSelect() {}
    
    public void onSetVolume(int paramInt) {}
    
    public void onUnselect() {}
    
    public void onUnselect(int paramInt)
    {
      onUnselect();
    }
    
    public void onUpdateVolume(int paramInt) {}
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */