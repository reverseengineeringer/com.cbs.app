package com.urbanairship.analytics;

import android.app.ListActivity;
import android.os.Bundle;

@Deprecated
public class InstrumentedListActivity
  extends ListActivity
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
 * Qualified Name:     com.urbanairship.analytics.InstrumentedListActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */