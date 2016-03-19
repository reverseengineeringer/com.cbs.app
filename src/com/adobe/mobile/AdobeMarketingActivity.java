package com.adobe.mobile;

import android.app.Activity;
import android.os.Bundle;

public abstract class AdobeMarketingActivity
  extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    j.a(getApplicationContext(), j.a.a);
  }
  
  public void onPause()
  {
    super.onPause();
    j.b();
  }
  
  public void onResume()
  {
    super.onResume();
    j.a(this);
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.AdobeMarketingActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */