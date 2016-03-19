package com.cbs.app.view;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.b.a;
import com.google.android.gms.common.api.b.b;
import com.google.android.gms.common.api.b.c;
import com.google.android.gms.plus.d.a.a;
import java.io.IOException;

public class GoogleIntermediateActivity
  extends Activity
  implements b.b, b.c
{
  private static final String a = GoogleIntermediateActivity.class.getSimpleName();
  private static String b = null;
  private com.google.android.gms.common.api.b c;
  private boolean d;
  
  public final void a(int paramInt)
  {
    c.c();
  }
  
  public final void a(Bundle paramBundle)
  {
    getAccessToken();
  }
  
  public final void a(ConnectionResult paramConnectionResult)
  {
    new StringBuilder("onConnectionFailed: ConnectionResult.getErrorCode() = ").append(paramConnectionResult.c());
    if ((!d) && (paramConnectionResult.a()))
    {
      d = true;
      paramConnectionResult = paramConnectionResult.d().getIntentSender();
    }
    do
    {
      try
      {
        startIntentSenderForResult(paramConnectionResult, 0, null, 0, 0, 0);
        return;
      }
      catch (IntentSender.SendIntentException paramConnectionResult)
      {
        d = false;
        c.c();
        return;
      }
      if ((!d) && (paramConnectionResult.c() == 4))
      {
        d = false;
        c.c();
        return;
      }
    } while ((isFinishing()) || (d));
    Toast.makeText(this, "Failed to connect to Google service", 1).show();
    finish();
  }
  
  public void getAccessToken()
  {
    new AsyncTask()
    {
      private String a()
      {
        try
        {
          String str = com.google.android.gms.auth.b.a(GoogleIntermediateActivity.this, a, "oauth2:https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.profile.emails.read");
          return str;
        }
        catch (IOException localIOException)
        {
          Log.e(GoogleIntermediateActivity.a(), localIOException.toString());
          return null;
        }
        catch (com.google.android.gms.auth.d locald)
        {
          startActivityForResult(locald.a(), 1);
          GoogleIntermediateActivity.a();
          new StringBuilder("starting intent: ").append(locald.a().toString());
          Log.e(GoogleIntermediateActivity.a(), locald.toString());
          return null;
        }
        catch (com.google.android.gms.auth.a locala)
        {
          Log.e(GoogleIntermediateActivity.a(), locala.toString());
        }
        return null;
      }
    }.execute(new Void[0]);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    new StringBuilder("onActivityResult requestCode: ").append(paramInt1).append(" resultCode:").append(paramInt2);
    if (paramInt2 == 0)
    {
      Toast.makeText(this, "Cancelled", 0).show();
      finish();
    }
    do
    {
      return;
      switch (paramInt1)
      {
      default: 
        return;
      case 0: 
        d = false;
      }
    } while ((c == null) || (c.f()));
    c.c();
    return;
    getAccessToken();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903136);
    paramBundle = new b.a(this).a(this).a(this).a(com.google.android.gms.plus.d.c, new d.a.a().a()).a(com.google.android.gms.plus.d.d);
    if (b != null) {
      paramBundle.a(b);
    }
    c = paramBundle.b();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    c.d();
  }
  
  protected void onStart()
  {
    super.onStart();
    if ((c != null) && (!c.e())) {
      c.c();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.GoogleIntermediateActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */