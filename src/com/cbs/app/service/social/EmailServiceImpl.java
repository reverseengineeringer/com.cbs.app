package com.cbs.app.service.social;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.Html;
import android.widget.Toast;

public class EmailServiceImpl
  implements EmailService
{
  private Context a;
  
  public final void a(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("android.intent.action.SENDTO", Uri.parse("mailto:"));
    localIntent.putExtra("android.intent.extra.SUBJECT", paramString1);
    localIntent.putExtra("android.intent.extra.TEXT", Html.fromHtml(paramString2));
    try
    {
      a.startActivity(Intent.createChooser(localIntent, "Send mail..."));
      return;
    }
    catch (ActivityNotFoundException paramString1)
    {
      Toast.makeText(a, "There are no email clients installed.", 0).show();
    }
  }
  
  public void setContext(Context paramContext)
  {
    a = paramContext;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.social.EmailServiceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */