package com.urbanairship;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public class CoreActivity
  extends Activity
{
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c.a(getApplication());
    paramBundle = getIntent();
    if (paramBundle != null)
    {
      new StringBuilder("CoreActivity - Received intent: ").append(paramBundle.getAction());
      if (!"com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY".equals(paramBundle.getAction())) {
        break label60;
      }
      CoreReceiver.b(this, paramBundle);
    }
    for (;;)
    {
      finish();
      return;
      label60:
      if ("com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY".equals(paramBundle.getAction())) {
        CoreReceiver.c(this, paramBundle);
      } else if ("com.urbanairship.ACTION_CHANNEL_CAPTURE".equals(paramBundle.getAction())) {
        CoreReceiver.a(this, paramBundle);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.CoreActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */