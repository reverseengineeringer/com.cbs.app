package android.support.v7.app;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.media.MediaRouteSelector;
import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;

public class MediaRouteDiscoveryFragment
  extends Fragment
{
  private final String ARGUMENT_SELECTOR = "selector";
  private MediaRouter.Callback mCallback;
  private MediaRouter mRouter;
  private MediaRouteSelector mSelector;
  
  private void ensureRouteSelector()
  {
    if (mSelector == null)
    {
      Bundle localBundle = getArguments();
      if (localBundle != null) {
        mSelector = MediaRouteSelector.fromBundle(localBundle.getBundle("selector"));
      }
      if (mSelector == null) {
        mSelector = MediaRouteSelector.EMPTY;
      }
    }
  }
  
  private void ensureRouter()
  {
    if (mRouter == null) {
      mRouter = MediaRouter.getInstance(getActivity());
    }
  }
  
  public MediaRouter getMediaRouter()
  {
    ensureRouter();
    return mRouter;
  }
  
  public MediaRouteSelector getRouteSelector()
  {
    ensureRouteSelector();
    return mSelector;
  }
  
  public MediaRouter.Callback onCreateCallback()
  {
    new MediaRouter.Callback() {};
  }
  
  public int onPrepareCallbackFlags()
  {
    return 4;
  }
  
  public void onStart()
  {
    super.onStart();
    ensureRouteSelector();
    ensureRouter();
    mCallback = onCreateCallback();
    if (mCallback != null) {
      mRouter.addCallback(mSelector, mCallback, onPrepareCallbackFlags());
    }
  }
  
  public void onStop()
  {
    if (mCallback != null)
    {
      mRouter.removeCallback(mCallback);
      mCallback = null;
    }
    super.onStop();
  }
  
  public void setRouteSelector(MediaRouteSelector paramMediaRouteSelector)
  {
    if (paramMediaRouteSelector == null) {
      throw new IllegalArgumentException("selector must not be null");
    }
    ensureRouteSelector();
    if (!mSelector.equals(paramMediaRouteSelector))
    {
      mSelector = paramMediaRouteSelector;
      Bundle localBundle2 = getArguments();
      Bundle localBundle1 = localBundle2;
      if (localBundle2 == null) {
        localBundle1 = new Bundle();
      }
      localBundle1.putBundle("selector", paramMediaRouteSelector.asBundle());
      setArguments(localBundle1);
      if (mCallback != null)
      {
        mRouter.removeCallback(mCallback);
        mRouter.addCallback(mSelector, mCallback, onPrepareCallbackFlags());
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteDiscoveryFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */