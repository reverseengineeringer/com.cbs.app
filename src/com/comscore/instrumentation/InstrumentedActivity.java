package com.comscore.instrumentation;

import android.app.Activity;
import android.os.Bundle;
import com.comscore.a.b;
import com.comscore.a.k;

public class InstrumentedActivity
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    k.a(getApplicationContext());
  }
  
  protected void onPause()
  {
    super.onPause();
    k.d();
  }
  
  protected void onResume()
  {
    super.onResume();
    k.g().a(getClass().getSimpleName());
    k.c();
  }
}

/* Location:
 * Qualified Name:     com.comscore.instrumentation.InstrumentedActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */