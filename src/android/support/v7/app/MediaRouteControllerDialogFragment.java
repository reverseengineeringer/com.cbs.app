package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;

public class MediaRouteControllerDialogFragment
  extends DialogFragment
{
  public MediaRouteControllerDialogFragment()
  {
    setCancelable(true);
  }
  
  public MediaRouteControllerDialog onCreateControllerDialog(Context paramContext, Bundle paramBundle)
  {
    return new MediaRouteControllerDialog(paramContext);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    return onCreateControllerDialog(getActivity(), paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteControllerDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */