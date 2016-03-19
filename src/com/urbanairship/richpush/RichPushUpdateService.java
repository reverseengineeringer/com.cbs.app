package com.urbanairship.richpush;

import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.urbanairship.BaseIntentService;
import com.urbanairship.BaseIntentService.a;
import com.urbanairship.j;
import com.urbanairship.l;
import com.urbanairship.p;
import java.net.MalformedURLException;
import java.net.URL;

public class RichPushUpdateService
  extends BaseIntentService
{
  public RichPushUpdateService()
  {
    super("RichPushUpdateService");
  }
  
  static URL a(String paramString, Object... paramVarArgs)
  {
    String str = ale;
    paramString = String.format(str + paramString, paramVarArgs);
    try
    {
      paramString = new URL(paramString);
      return paramString;
    }
    catch (MalformedURLException paramString)
    {
      j.a("Invalid userURL", paramString);
    }
    return null;
  }
  
  static void a(Intent paramIntent, boolean paramBoolean)
  {
    paramIntent = (ResultReceiver)paramIntent.getParcelableExtra("com.urbanairship.richpush.RESULT_RECEIVER");
    if (paramIntent != null)
    {
      if (paramBoolean) {
        paramIntent.send(0, new Bundle());
      }
    }
    else {
      return;
    }
    paramIntent.send(1, new Bundle());
  }
  
  protected final BaseIntentService.a a(String paramString, l paraml)
  {
    int i = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return null;
        if (paramString.equals("com.urbanairship.richpush.USER_UPDATE"))
        {
          i = 0;
          continue;
          if (paramString.equals("com.urbanairship.richpush.SYNC_MESSAGE_STATE"))
          {
            i = 1;
            continue;
            if (paramString.equals("com.urbanairship.richpush.MESSAGES_UPDATE")) {
              i = 2;
            }
          }
        }
        break;
      }
    }
    return new f(getApplicationContext(), paraml);
    return new a(getApplicationContext(), paraml);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushUpdateService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */