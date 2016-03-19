package com.adobe.mobile;

import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.LinearLayout;

public class MessageFullScreenActivity
  extends AdobeMarketingActivity
{
  protected o a;
  
  public void onBackPressed()
  {
    a.f = false;
    a.e();
    finish();
    overridePendingTransition(0, 0);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(new LinearLayout(this));
    a = ae.a();
    a.m = this;
  }
  
  public void onResume()
  {
    super.onResume();
    try
    {
      final ViewGroup localViewGroup = (ViewGroup)findViewById(16908290);
      if (localViewGroup == null)
      {
        am.a("Messages - unable to get root view group from os", new Object[0]);
        finish();
        overridePendingTransition(0, 0);
        return;
      }
      localViewGroup.post(new Runnable()
      {
        public final void run()
        {
          a.n = localViewGroup;
          a.h();
        }
      });
      return;
    }
    catch (NullPointerException localNullPointerException)
    {
      am.b("Messages - content view is in undefined state (%s)", new Object[] { localNullPointerException.getMessage() });
      finish();
      overridePendingTransition(0, 0);
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.MessageFullScreenActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */