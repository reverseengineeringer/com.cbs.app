package com.cbs.app.visualon.player;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.google.android.gms.ads.a.a;
import com.google.android.gms.ads.a.a.a;
import com.google.android.gms.common.c;
import com.google.android.gms.common.d;
import java.io.IOException;

final class CBSPlayer$6
  implements Runnable
{
  public final void run()
  {
    for (;;)
    {
      try
      {
        localObject = a.a(CBSPlayer.H());
        String str2 = CBSPlayer.a;
        if (localObject == null) {
          continue;
        }
        str2 = CBSPlayer.a;
        if (!((a.a)localObject).b()) {
          continue;
        }
        CBSPlayer.a("optout");
      }
      catch (IllegalStateException localIllegalStateException)
      {
        Object localObject;
        Log.e(CBSPlayer.a, "IllegalStateException", localIllegalStateException);
        continue;
        String str1 = CBSPlayer.a;
        continue;
      }
      catch (d locald)
      {
        Log.e(CBSPlayer.a, "GooglePlayServicesRepairableException", locald);
        continue;
      }
      catch (IOException localIOException)
      {
        Log.e(CBSPlayer.a, "IOException");
        continue;
      }
      catch (c localc)
      {
        Log.e(CBSPlayer.a, "GooglePlayServicesNotAvailableException", localc);
        continue;
      }
      localObject = CBSPlayer.a;
      new Handler(CBSPlayer.H().getMainLooper()).post(new Runnable()
      {
        public final void run() {}
      });
      return;
      CBSPlayer.a(((a.a)localObject).a());
      localObject = CBSPlayer.a;
      new StringBuilder("advertisingId2").append(CBSPlayer.az());
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.CBSPlayer.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */