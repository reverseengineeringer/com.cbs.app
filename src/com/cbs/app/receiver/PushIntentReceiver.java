package com.cbs.app.receiver;

import com.urbanairship.push.BaseIntentReceiver;
import com.urbanairship.push.PushMessage;

public class PushIntentReceiver
  extends BaseIntentReceiver
{
  private static final String a = PushIntentReceiver.class.getSimpleName();
  
  protected final void a(PushMessage paramPushMessage)
  {
    new StringBuilder("Received background push message: ").append(paramPushMessage);
  }
  
  protected final void a(PushMessage paramPushMessage, int paramInt)
  {
    new StringBuilder("Received push notification. Alert: ").append(paramPushMessage.e()).append(". Notification ID: ").append(paramInt);
  }
  
  protected final void a(String paramString)
  {
    new StringBuilder("Channel registration updated. Channel Id:").append(paramString).append(".");
  }
  
  protected final boolean a(PushMessage paramPushMessage, String paramString)
  {
    new StringBuilder("User clicked notification button. Button ID: ").append(paramString).append(" Alert: ").append(paramPushMessage.e());
    return false;
  }
  
  protected final boolean b(PushMessage paramPushMessage)
  {
    new StringBuilder("User clicked notification. Alert: ").append(paramPushMessage.e());
    return false;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.receiver.PushIntentReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */