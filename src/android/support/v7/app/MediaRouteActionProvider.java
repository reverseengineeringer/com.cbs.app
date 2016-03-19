package android.support.v7.app;

import android.content.Context;
import android.support.v4.view.ActionProvider;
import android.support.v7.media.MediaRouteSelector;
import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;
import android.support.v7.media.MediaRouter.ProviderInfo;
import android.support.v7.media.MediaRouter.RouteInfo;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.lang.ref.WeakReference;

public class MediaRouteActionProvider
  extends ActionProvider
{
  private static final String TAG = "MediaRouteActionProvider";
  private MediaRouteButton mButton;
  private final MediaRouterCallback mCallback;
  private MediaRouteDialogFactory mDialogFactory = MediaRouteDialogFactory.getDefault();
  private final MediaRouter mRouter;
  private MediaRouteSelector mSelector = MediaRouteSelector.EMPTY;
  
  public MediaRouteActionProvider(Context paramContext)
  {
    super(paramContext);
    mRouter = MediaRouter.getInstance(paramContext);
    mCallback = new MediaRouterCallback(this);
  }
  
  private void refreshRoute()
  {
    refreshVisibility();
  }
  
  public MediaRouteDialogFactory getDialogFactory()
  {
    return mDialogFactory;
  }
  
  public MediaRouteButton getMediaRouteButton()
  {
    return mButton;
  }
  
  public MediaRouteSelector getRouteSelector()
  {
    return mSelector;
  }
  
  public boolean isVisible()
  {
    return mRouter.isRouteAvailable(mSelector, 1);
  }
  
  public View onCreateActionView()
  {
    if (mButton != null) {
      Log.e("MediaRouteActionProvider", "onCreateActionView: this ActionProvider is already associated with a menu item. Don't reuse MediaRouteActionProvider instances! Abandoning the old menu item...");
    }
    mButton = onCreateMediaRouteButton();
    mButton.setCheatSheetEnabled(true);
    mButton.setRouteSelector(mSelector);
    mButton.setDialogFactory(mDialogFactory);
    mButton.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
    return mButton;
  }
  
  public MediaRouteButton onCreateMediaRouteButton()
  {
    return new MediaRouteButton(getContext());
  }
  
  public boolean onPerformDefaultAction()
  {
    if (mButton != null) {
      return mButton.showDialog();
    }
    return false;
  }
  
  public boolean overridesItemVisibility()
  {
    return true;
  }
  
  public void setDialogFactory(MediaRouteDialogFactory paramMediaRouteDialogFactory)
  {
    if (paramMediaRouteDialogFactory == null) {
      throw new IllegalArgumentException("factory must not be null");
    }
    if (mDialogFactory != paramMediaRouteDialogFactory)
    {
      mDialogFactory = paramMediaRouteDialogFactory;
      if (mButton != null) {
        mButton.setDialogFactory(paramMediaRouteDialogFactory);
      }
    }
  }
  
  public void setRouteSelector(MediaRouteSelector paramMediaRouteSelector)
  {
    if (paramMediaRouteSelector == null) {
      throw new IllegalArgumentException("selector must not be null");
    }
    if (!mSelector.equals(paramMediaRouteSelector))
    {
      if (!mSelector.isEmpty()) {
        mRouter.removeCallback(mCallback);
      }
      if (!paramMediaRouteSelector.isEmpty()) {
        mRouter.addCallback(paramMediaRouteSelector, mCallback);
      }
      mSelector = paramMediaRouteSelector;
      refreshRoute();
      if (mButton != null) {
        mButton.setRouteSelector(paramMediaRouteSelector);
      }
    }
  }
  
  private static final class MediaRouterCallback
    extends MediaRouter.Callback
  {
    private final WeakReference<MediaRouteActionProvider> mProviderWeak;
    
    public MediaRouterCallback(MediaRouteActionProvider paramMediaRouteActionProvider)
    {
      mProviderWeak = new WeakReference(paramMediaRouteActionProvider);
    }
    
    private void refreshRoute(MediaRouter paramMediaRouter)
    {
      MediaRouteActionProvider localMediaRouteActionProvider = (MediaRouteActionProvider)mProviderWeak.get();
      if (localMediaRouteActionProvider != null)
      {
        localMediaRouteActionProvider.refreshRoute();
        return;
      }
      paramMediaRouter.removeCallback(this);
    }
    
    public final void onProviderAdded(MediaRouter paramMediaRouter, MediaRouter.ProviderInfo paramProviderInfo)
    {
      refreshRoute(paramMediaRouter);
    }
    
    public final void onProviderChanged(MediaRouter paramMediaRouter, MediaRouter.ProviderInfo paramProviderInfo)
    {
      refreshRoute(paramMediaRouter);
    }
    
    public final void onProviderRemoved(MediaRouter paramMediaRouter, MediaRouter.ProviderInfo paramProviderInfo)
    {
      refreshRoute(paramMediaRouter);
    }
    
    public final void onRouteAdded(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      refreshRoute(paramMediaRouter);
    }
    
    public final void onRouteChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      refreshRoute(paramMediaRouter);
    }
    
    public final void onRouteRemoved(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      refreshRoute(paramMediaRouter);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteActionProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */