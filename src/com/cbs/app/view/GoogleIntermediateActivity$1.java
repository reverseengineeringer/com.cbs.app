package com.cbs.app.view;

import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gms.auth.a;
import com.google.android.gms.auth.b;
import com.google.android.gms.auth.d;
import java.io.IOException;

final class GoogleIntermediateActivity$1
  extends AsyncTask<Void, Void, String>
{
  GoogleIntermediateActivity$1(GoogleIntermediateActivity paramGoogleIntermediateActivity, String paramString) {}
  
  private String a()
  {
    try
    {
      String str = b.a(b, a, "oauth2:https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.profile.emails.read");
      return str;
    }
    catch (IOException localIOException)
    {
      Log.e(GoogleIntermediateActivity.a(), localIOException.toString());
      return null;
    }
    catch (d locald)
    {
      b.startActivityForResult(locald.a(), 1);
      GoogleIntermediateActivity.a();
      new StringBuilder("starting intent: ").append(locald.a().toString());
      Log.e(GoogleIntermediateActivity.a(), locald.toString());
      return null;
    }
    catch (a locala)
    {
      Log.e(GoogleIntermediateActivity.a(), locala.toString());
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.GoogleIntermediateActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */