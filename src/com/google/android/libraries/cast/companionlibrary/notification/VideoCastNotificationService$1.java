package com.google.android.libraries.cast.companionlibrary.notification;

import com.google.android.libraries.cast.companionlibrary.cast.a.d;
import com.google.android.libraries.cast.companionlibrary.cast.c;

final class VideoCastNotificationService$1
  extends d
{
  VideoCastNotificationService$1(VideoCastNotificationService paramVideoCastNotificationService) {}
  
  public final void b()
  {
    int i = VideoCastNotificationService.a(a).S();
    VideoCastNotificationService.a(a, i);
  }
  
  public final void c(int paramInt)
  {
    VideoCastNotificationService.a();
    a.stopSelf();
  }
  
  public final void c(boolean paramBoolean)
  {
    VideoCastNotificationService localVideoCastNotificationService = a;
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      VideoCastNotificationService.a(localVideoCastNotificationService, paramBoolean);
      if ((!VideoCastNotificationService.b(a)) || (VideoCastNotificationService.c(a) == null)) {
        break;
      }
      a.startForeground(1, VideoCastNotificationService.c(a));
      return;
    }
    a.stopForeground(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.cast.companionlibrary.notification.VideoCastNotificationService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */