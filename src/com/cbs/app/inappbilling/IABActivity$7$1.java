package com.cbs.app.inappbilling;

import android.content.Intent;
import android.os.Bundle;
import com.cbs.app.view.fragments.settings.DoneListener;

final class IABActivity$7$1
  implements DoneListener
{
  IABActivity$7$1(IABActivity.7 param7) {}
  
  public final void a(String paramString)
  {
    IABActivity.c();
    Intent localIntent = new Intent();
    Bundle localBundle = new Bundle();
    localBundle.putString("sku", paramString);
    localIntent.putExtras(localBundle);
    a.b.setResult(-1, localIntent);
    a.b.finish();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABActivity.7.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */