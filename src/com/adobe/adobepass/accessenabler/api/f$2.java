package com.adobe.adobepass.accessenabler.api;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.webkit.WebView;
import com.adobe.adobepass.accessenabler.d.c;

final class f$2
  extends CountDownTimer
{
  f$2(f paramf)
  {
    super(120000L, 120000L);
  }
  
  public final void onFinish()
  {
    c.a("PassiveAuthnService", "Timer - Time has elapsed.");
    if (aa).a == e.a.a)
    {
      c.a("PassiveAuthnService", "Timer - Ending passive flow.");
      f.d(a).stopLoading();
      Intent localIntent = new Intent(f.c(a), AccessEnablerService.class);
      Bundle localBundle = new Bundle();
      localBundle.putInt("op_code", 12);
      localIntent.putExtras(localBundle);
      f.c(a).startService(localIntent);
    }
  }
  
  public final void onTick(long paramLong) {}
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.api.f.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */