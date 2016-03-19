package android.support.v7.app;

public class MediaRouteDialogFactory
{
  private static final MediaRouteDialogFactory sDefault = new MediaRouteDialogFactory();
  
  public static MediaRouteDialogFactory getDefault()
  {
    return sDefault;
  }
  
  public MediaRouteChooserDialogFragment onCreateChooserDialogFragment()
  {
    return new MediaRouteChooserDialogFragment();
  }
  
  public MediaRouteControllerDialogFragment onCreateControllerDialogFragment()
  {
    return new MediaRouteControllerDialogFragment();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteDialogFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */