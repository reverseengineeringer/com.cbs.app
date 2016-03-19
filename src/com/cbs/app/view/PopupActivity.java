package com.cbs.app.view;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

public class PopupActivity
  extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903246);
    findViewById(2131690208).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (!isFinishing()) {
          finish();
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.PopupActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */