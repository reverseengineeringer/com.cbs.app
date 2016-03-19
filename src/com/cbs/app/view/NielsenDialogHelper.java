package com.cbs.app.view;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;

public final class NielsenDialogHelper
{
  private static final String a = NielsenDialogHelper.class.getSimpleName();
  private static VideoData b;
  private static ShowItem c;
  private static VideoClickListener d;
  
  public static void a()
  {
    if ((b != null) && (d != null))
    {
      d.a(b, c);
      b = null;
      setShowWeWantToSee(null);
    }
  }
  
  public static void a(Context paramContext, VideoClickListener paramVideoClickListener)
  {
    d = paramVideoClickListener;
    paramContext = (AbstractFragmentActivity)paramContext;
    paramContext.startActivityForResult(new Intent(paramContext, NielsenDialogActivity.class), 10);
  }
  
  public static boolean a(Context paramContext)
  {
    boolean bool1 = false;
    boolean bool2 = Util.v(paramContext);
    String str = Preferences.b(paramContext);
    if (!bool2) {
      if ((str != null) && (str.contains("fg=1")))
      {
        Preferences.b(paramContext, true);
        bool1 = UriHandler.a(paramContext, Uri.parse(Util.d(str)));
      }
    }
    for (;;)
    {
      if ((bool2) && (!bool1)) {
        SVODPopupHelper.b(paramContext, "Homescreen");
      }
      return bool1;
      a(paramContext, null);
      continue;
      if (str != null) {
        bool1 = UriHandler.a(paramContext, Uri.parse(Util.d(str)));
      }
    }
  }
  
  public static void setShowWeWantToSee(ShowItem paramShowItem)
  {
    c = paramShowItem;
  }
  
  public static void setVideoWeWantedToSee(VideoData paramVideoData)
  {
    b = paramVideoData;
  }
  
  public static abstract interface VideoClickListener
  {
    public abstract void a(VideoData paramVideoData, ShowItem paramShowItem);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.NielsenDialogHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */