package com.urbanairship.actions;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;

public class ActionActivity
  extends Activity
{
  private static int b = 0;
  private ResultReceiver a;
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (a != null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("com.urbanairship.actions.actionactivity.RESULT_INTENT_EXTRA", paramIntent);
      a.send(paramInt2, localBundle);
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    finish();
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.urbanairship.c.a(getApplication());
    Intent localIntent = getIntent();
    if (localIntent == null) {
      finish();
    }
    while (paramBundle != null) {
      return;
    }
    paramBundle = (Intent)localIntent.getParcelableExtra("com.urbanairship.actions.START_ACTIVITY_INTENT_EXTRA");
    if (paramBundle != null)
    {
      a = ((ResultReceiver)localIntent.getParcelableExtra("com.urbanairship.actions.actionactivity.RESULT_RECEIVER_EXTRA"));
      int i = b + 1;
      b = i;
      startActivityForResult(paramBundle, i);
      return;
    }
    finish();
  }
  
  protected void onStart()
  {
    super.onStart();
    com.urbanairship.analytics.c.a(this);
  }
  
  protected void onStop()
  {
    super.onStop();
    com.urbanairship.analytics.c.b(this);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */