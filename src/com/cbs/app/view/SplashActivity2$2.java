package com.cbs.app.view;

import android.app.Activity;
import android.content.Intent;
import android.os.Parcelable;
import com.cbs.app.GlobalConstants;
import com.cbs.app.view.model.Episode;
import java.util.List;

final class SplashActivity2$2
  implements Runnable
{
  SplashActivity2$2(SplashActivity2 paramSplashActivity2) {}
  
  public final void run()
  {
    SplashActivity2 localSplashActivity2 = a;
    if (SplashActivity2.a(a)) {
      localSplashActivity2.runOnUiThread(new Runnable()
      {
        public final void run()
        {
          a.runOnUiThread(new Runnable()
          {
            public final void run()
            {
              Intent localIntent = new Intent(a, NavigationActivity.class);
              if (GlobalConstants.b) {
                localIntent.putExtra("url", a.getIntent().getStringExtra("url"));
              }
              localIntent.addFlags(65536);
              localIntent.putExtra("homeMarquee", SplashActivity2.l(a));
              localIntent.putExtra("episodeSchedule", SplashActivity2.m(a));
              if (SplashActivity2.n(a) != null) {
                localIntent.putExtra("tonightEpisodes", (Parcelable[])SplashActivity2.n(a).toArray(new Episode[SplashActivity2.n(a).size()]));
              }
              localIntent.addFlags(268468224);
              a.startActivity(localIntent);
              a.overridePendingTransition(0, 0);
              if (a.isFinishing()) {
                a.finish();
              }
              a.overridePendingTransition(0, 0);
            }
          });
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */