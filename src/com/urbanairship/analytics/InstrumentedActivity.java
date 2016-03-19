package com.urbanairship.analytics;

import android.app.Activity;
import android.os.Bundle;

@Deprecated
public class InstrumentedActivity
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.urbanairship.c.a(getApplication());
  }
  
  public void onStart()
  {
    super.onStart();
    c.a(this);
  }
  
  public void onStop()
  {
    super.onStop();
    c.b(this);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.InstrumentedActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */