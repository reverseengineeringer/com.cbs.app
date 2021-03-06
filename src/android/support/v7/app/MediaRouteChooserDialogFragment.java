package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v7.media.MediaRouteSelector;

public class MediaRouteChooserDialogFragment
  extends DialogFragment
{
  private final String ARGUMENT_SELECTOR = "selector";
  private MediaRouteSelector mSelector;
  
  public MediaRouteChooserDialogFragment()
  {
    setCancelable(true);
  }
  
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
  
  public MediaRouteSelector getRouteSelector()
  {
    ensureRouteSelector();
    return mSelector;
  }
  
  public MediaRouteChooserDialog onCreateChooserDialog(Context paramContext, Bundle paramBundle)
  {
    return new MediaRouteChooserDialog(paramContext);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = onCreateChooserDialog(getActivity(), paramBundle);
    paramBundle.setRouteSelector(getRouteSelector());
    return paramBundle;
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
      Bundle localBundle = getArguments();
      Object localObject = localBundle;
      if (localBundle == null) {
        localObject = new Bundle();
      }
      ((Bundle)localObject).putBundle("selector", paramMediaRouteSelector.asBundle());
      setArguments((Bundle)localObject);
      localObject = (MediaRouteChooserDialog)getDialog();
      if (localObject != null) {
        ((MediaRouteChooserDialog)localObject).setRouteSelector(paramMediaRouteSelector);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteChooserDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */