package android.support.v7.media;

import android.content.Intent;

final class RegisteredMediaRouteProvider$Controller
  extends MediaRouteProvider.RouteController
{
  private RegisteredMediaRouteProvider.Connection mConnection;
  private int mControllerId;
  private int mPendingSetVolume = -1;
  private int mPendingUpdateVolumeDelta;
  private final String mRouteId;
  private boolean mSelected;
  
  public RegisteredMediaRouteProvider$Controller(RegisteredMediaRouteProvider paramRegisteredMediaRouteProvider, String paramString)
  {
    mRouteId = paramString;
  }
  
  public final void attachConnection(RegisteredMediaRouteProvider.Connection paramConnection)
  {
    mConnection = paramConnection;
    mControllerId = paramConnection.createRouteController(mRouteId);
    if (mSelected)
    {
      paramConnection.selectRoute(mControllerId);
      if (mPendingSetVolume >= 0)
      {
        paramConnection.setVolume(mControllerId, mPendingSetVolume);
        mPendingSetVolume = -1;
      }
      if (mPendingUpdateVolumeDelta != 0)
      {
        paramConnection.updateVolume(mControllerId, mPendingUpdateVolumeDelta);
        mPendingUpdateVolumeDelta = 0;
      }
    }
  }
  
  public final void detachConnection()
  {
    if (mConnection != null)
    {
      mConnection.releaseRouteController(mControllerId);
      mConnection = null;
      mControllerId = 0;
    }
  }
  
  public final boolean onControlRequest(Intent paramIntent, MediaRouter.ControlRequestCallback paramControlRequestCallback)
  {
    if (mConnection != null) {
      return mConnection.sendControlRequest(mControllerId, paramIntent, paramControlRequestCallback);
    }
    return false;
  }
  
  public final void onRelease()
  {
    RegisteredMediaRouteProvider.access$100(this$0, this);
  }
  
  public final void onSelect()
  {
    mSelected = true;
    if (mConnection != null) {
      mConnection.selectRoute(mControllerId);
    }
  }
  
  public final void onSetVolume(int paramInt)
  {
    if (mConnection != null)
    {
      mConnection.setVolume(mControllerId, paramInt);
      return;
    }
    mPendingSetVolume = paramInt;
    mPendingUpdateVolumeDelta = 0;
  }
  
  public final void onUnselect()
  {
    onUnselect(0);
  }
  
  public final void onUnselect(int paramInt)
  {
    mSelected = false;
    if (mConnection != null) {
      mConnection.unselectRoute(mControllerId, paramInt);
    }
  }
  
  public final void onUpdateVolume(int paramInt)
  {
    if (mConnection != null)
    {
      mConnection.updateVolume(mControllerId, paramInt);
      return;
    }
    mPendingUpdateVolumeDelta += paramInt;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.RegisteredMediaRouteProvider.Controller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */