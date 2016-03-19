package com.cbs.app.service;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.cbs.app.view.SubscriptionActivity;

public class SVODService
{
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if ((paramContext != null) && ((paramContext instanceof Activity)))
    {
      paramContext = (Activity)paramContext;
      Intent localIntent = new Intent(paramContext, SubscriptionActivity.class);
      Bundle localBundle = new Bundle();
      if (paramString1 != null) {
        localBundle.putString("url", paramString1);
      }
      localBundle.putString("showId", paramString2);
      localBundle.putString("cid", paramString3);
      localIntent.putExtras(localBundle);
      paramContext.startActivityForResult(localIntent, 9999);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.SVODService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */