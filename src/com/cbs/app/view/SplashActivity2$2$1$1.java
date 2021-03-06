package com.cbs.app.view;

import android.content.Intent;
import android.os.Parcelable;
import com.cbs.app.GlobalConstants;
import com.cbs.app.view.model.Episode;
import java.util.List;

final class SplashActivity2$2$1$1
  implements Runnable
{
  SplashActivity2$2$1$1(SplashActivity2.2.1 param1) {}
  
  public final void run()
  {
    Intent localIntent = new Intent(a.a.a, NavigationActivity.class);
    if (GlobalConstants.b) {
      localIntent.putExtra("url", a.a.a.getIntent().getStringExtra("url"));
    }
    localIntent.addFlags(65536);
    localIntent.putExtra("homeMarquee", SplashActivity2.l(a.a.a));
    localIntent.putExtra("episodeSchedule", SplashActivity2.m(a.a.a));
    if (SplashActivity2.n(a.a.a) != null) {
      localIntent.putExtra("tonightEpisodes", (Parcelable[])SplashActivity2.n(a.a.a).toArray(new Episode[SplashActivity2.n(a.a.a).size()]));
    }
    localIntent.addFlags(268468224);
    a.a.a.startActivity(localIntent);
    a.a.a.overridePendingTransition(0, 0);
    if (a.a.a.isFinishing()) {
      a.a.a.finish();
    }
    a.a.a.overridePendingTransition(0, 0);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.2.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */