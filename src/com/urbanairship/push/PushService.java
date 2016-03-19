package com.urbanairship.push;

import com.urbanairship.BaseIntentService;
import com.urbanairship.BaseIntentService.a;

public class PushService
  extends BaseIntentService
{
  public PushService()
  {
    super("PushService");
  }
  
  protected final BaseIntentService.a a(String paramString, com.urbanairship.l paraml)
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
        if (paramString.equals("com.urbanairship.push.ACTION_UPDATE_NAMED_USER_TAGS"))
        {
          i = 0;
          continue;
          if (paramString.equals("com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS"))
          {
            i = 1;
            continue;
            if (paramString.equals("com.urbanairship.push.ACTION_CLEAR_PENDING_NAMED_USER_TAGS"))
            {
              i = 2;
              continue;
              if (paramString.equals("com.urbanairship.push.ACTION_UPDATE_NAMED_USER"))
              {
                i = 3;
                continue;
                if (paramString.equals("com.urbanairship.push.ACTION_ADM_REGISTRATION_FINISHED"))
                {
                  i = 4;
                  continue;
                  if (paramString.equals("com.urbanairship.push.ACTION_START_REGISTRATION"))
                  {
                    i = 5;
                    continue;
                    if (paramString.equals("com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"))
                    {
                      i = 6;
                      continue;
                      if (paramString.equals("com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION"))
                      {
                        i = 7;
                        continue;
                        if (paramString.equals("com.urbanairship.push.ACTION_RECEIVE_ADM_MESSAGE"))
                        {
                          i = 8;
                          continue;
                          if (paramString.equals("com.urbanairship.push.ACTION_RECEIVE_GCM_MESSAGE")) {
                            i = 9;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        break;
      }
    }
    return new l(getApplicationContext(), paraml);
    return new i(getApplicationContext(), paraml);
    return new d(getApplicationContext(), paraml);
    return new f(getApplicationContext(), paraml);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.PushService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */