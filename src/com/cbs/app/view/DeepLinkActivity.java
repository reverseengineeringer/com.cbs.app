package com.cbs.app.view;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

public class DeepLinkActivity
  extends Activity
{
  private static final String a = DeepLinkActivity.class.getSimpleName();
  
  private void a()
  {
    Object localObject = getIntent();
    if ((((Intent)localObject).getBooleanExtra("mustfinish", false)) && (!isFinishing())) {
      finish();
    }
    do
    {
      do
      {
        return;
        localObject = ((Intent)localObject).getData();
        if (localObject != null) {
          break;
        }
      } while (isFinishing());
      finish();
      return;
      if (((Uri)localObject).getPath() != null) {
        break;
      }
    } while (isFinishing());
    finish();
    return;
    com.cbs.app.GlobalConstants.b = true;
    Intent localIntent = new Intent(this, SplashActivity2.class);
    localIntent.putExtra("url", ((Uri)localObject).toString());
    localIntent.putExtra("isdeeplink", true);
    localIntent.addFlags(67108864);
    localIntent.addFlags(65536);
    startActivity(localIntent);
    finish();
  }
  
  public void onBackPressed()
  {
    if (!isFinishing()) {
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    a();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.DeepLinkActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */