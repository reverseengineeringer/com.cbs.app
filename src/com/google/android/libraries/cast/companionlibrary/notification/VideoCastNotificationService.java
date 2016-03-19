package com.google.android.libraries.cast.companionlibrary.notification;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.Notification.MediaStyle;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.app.TaskStackBuilder;
import android.widget.RemoteViews;
import com.google.android.gms.cast.e;
import com.google.android.gms.common.images.WebImage;
import com.google.android.libraries.cast.companionlibrary.R.dimen;
import com.google.android.libraries.cast.companionlibrary.R.drawable;
import com.google.android.libraries.cast.companionlibrary.R.id;
import com.google.android.libraries.cast.companionlibrary.R.layout;
import com.google.android.libraries.cast.companionlibrary.R.string;
import com.google.android.libraries.cast.companionlibrary.cast.player.VideoCastControllerActivity;
import java.util.List;

public class VideoCastNotificationService
  extends Service
{
  private static final String a = com.google.android.libraries.cast.companionlibrary.a.b.a(VideoCastNotificationService.class);
  private Bitmap b;
  private boolean c;
  private Class<?> d;
  private int e = -1;
  private Notification f;
  private boolean g;
  private boolean h;
  private boolean i;
  private com.google.android.libraries.cast.companionlibrary.cast.c j;
  private com.google.android.libraries.cast.companionlibrary.cast.a.d k;
  private com.google.android.libraries.cast.companionlibrary.a.a l;
  private int m;
  
  public VideoCastNotificationService()
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      bool1 = true;
      h = bool1;
      if (Build.VERSION.SDK_INT < 21) {
        break label47;
      }
    }
    label47:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      i = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  private RemoteViews a(com.google.android.gms.cast.d paramd, Bitmap paramBitmap, boolean paramBoolean)
  {
    new StringBuilder("Build version is: ").append(Build.VERSION.SDK_INT);
    Object localObject4;
    Object localObject5;
    if (i)
    {
      localObject1 = new Intent("com.google.android.libraries.cast.companionlibrary.action.toggleplayback");
      ((Intent)localObject1).setPackage(getPackageName());
      localObject1 = PendingIntent.getBroadcast(this, 0, (Intent)localObject1, 0);
      localObject2 = new Intent("com.google.android.libraries.cast.companionlibrary.action.stop");
      ((Intent)localObject2).setPackage(getPackageName());
      localObject2 = PendingIntent.getBroadcast(this, 0, (Intent)localObject2, 0);
      localObject3 = com.google.android.libraries.cast.companionlibrary.a.d.b(j.J());
      localObject4 = new Intent(this, d);
      ((Intent)localObject4).putExtra("media", (Bundle)localObject3);
      paramd = paramd.d();
      localObject5 = getResources().getString(R.string.ccl_casting_to_device, new Object[] { j.m() });
      TaskStackBuilder localTaskStackBuilder = TaskStackBuilder.create(this);
      localTaskStackBuilder.addParentStack(d);
      localTaskStackBuilder.addNextIntent((Intent)localObject4);
      if (localTaskStackBuilder.getIntentCount() > 1) {
        localTaskStackBuilder.editIntentAt(1).putExtra("media", (Bundle)localObject3);
      }
      localObject3 = localTaskStackBuilder.getPendingIntent(1, 134217728);
      paramd = new Notification.Builder(this).setSmallIcon(R.drawable.ic_stat_action_notification).setContentTitle(paramd.a("com.google.android.gms.cast.metadata.TITLE")).setContentText((CharSequence)localObject5).setContentIntent((PendingIntent)localObject3).setLargeIcon(paramBitmap);
      if (paramBoolean) {}
      for (int n = R.drawable.ic_pause_white_48dp;; n = R.drawable.ic_play_arrow_white_48dp)
      {
        f = paramd.addAction(n, getString(R.string.ccl_pause), (PendingIntent)localObject1).addAction(R.drawable.ic_clear_white_24dp, getString(R.string.ccl_disconnect), (PendingIntent)localObject2).setStyle(new Notification.MediaStyle().setShowActionsInCompactView(new int[] { 0, 1 })).setOngoing(true).setShowWhen(false).setVisibility(1).build();
        return null;
      }
    }
    Object localObject1 = com.google.android.libraries.cast.companionlibrary.a.d.b(j.J());
    Object localObject2 = new Intent(this, d);
    ((Intent)localObject2).putExtra("media", (Bundle)localObject1);
    Object localObject3 = TaskStackBuilder.create(this);
    ((TaskStackBuilder)localObject3).addParentStack(d);
    ((TaskStackBuilder)localObject3).addNextIntent((Intent)localObject2);
    if (((TaskStackBuilder)localObject3).getIntentCount() > 1) {
      ((TaskStackBuilder)localObject3).editIntentAt(1).putExtra("media", (Bundle)localObject1);
    }
    localObject1 = ((TaskStackBuilder)localObject3).getPendingIntent(1, 134217728);
    localObject3 = paramd.d();
    localObject2 = new RemoteViews(getPackageName(), R.layout.custom_notification);
    if (h)
    {
      localObject4 = new Intent("com.google.android.libraries.cast.companionlibrary.action.toggleplayback");
      ((Intent)localObject4).setPackage(getPackageName());
      localObject4 = PendingIntent.getBroadcast(this, 0, (Intent)localObject4, 0);
      localObject5 = new Intent("com.google.android.libraries.cast.companionlibrary.action.stop");
      ((Intent)localObject5).setPackage(getPackageName());
      localObject5 = PendingIntent.getBroadcast(this, 0, (Intent)localObject5, 0);
      ((RemoteViews)localObject2).setOnClickPendingIntent(R.id.play_pause, (PendingIntent)localObject4);
      ((RemoteViews)localObject2).setOnClickPendingIntent(R.id.removeView, (PendingIntent)localObject5);
      if (!paramBoolean) {
        break label693;
      }
      if (paramd.b() == 2) {
        ((RemoteViews)localObject2).setImageViewResource(R.id.play_pause, R.drawable.ic_av_stop_sm_dark);
      }
    }
    else
    {
      if (paramBitmap == null) {
        break label707;
      }
      ((RemoteViews)localObject2).setImageViewBitmap(R.id.icon_view, paramBitmap);
    }
    for (;;)
    {
      ((RemoteViews)localObject2).setTextViewText(R.id.title_view, ((e)localObject3).a("com.google.android.gms.cast.metadata.TITLE"));
      paramd = getResources().getString(R.string.ccl_casting_to_device, new Object[] { j.m() });
      ((RemoteViews)localObject2).setTextViewText(R.id.subtitle_view, paramd);
      f = new NotificationCompat.Builder(this).setSmallIcon(R.drawable.ic_stat_action_notification).setContentIntent((PendingIntent)localObject1).setContent((RemoteViews)localObject2).setAutoCancel(false).setOngoing(true).build();
      f.contentView = ((RemoteViews)localObject2);
      return (RemoteViews)localObject2;
      ((RemoteViews)localObject2).setImageViewResource(R.id.play_pause, R.drawable.ic_av_pause_sm_dark);
      break;
      label693:
      ((RemoteViews)localObject2).setImageViewResource(R.id.play_pause, R.drawable.ic_av_play_sm_dark);
      break;
      label707:
      paramd = BitmapFactory.decodeResource(getResources(), R.drawable.album_art_placeholder);
      ((RemoteViews)localObject2).setImageViewBitmap(R.id.iconView, paramd);
    }
  }
  
  private void a(final com.google.android.gms.cast.d paramd)
  {
    if (paramd == null) {
      return;
    }
    if (l != null) {
      l.cancel(false);
    }
    Uri localUri;
    try
    {
      if (!paramd.d().c())
      {
        a(paramd, null, c);
        return;
      }
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.a locala)
    {
      localUri = null;
    }
    for (;;)
    {
      l = new com.google.android.libraries.cast.companionlibrary.a.a(paramd) {};
      l.a(localUri);
      return;
      if ((paramd.d().b().size() > 2) && (paramd.b() == 2)) {
        localUri = ((WebImage)paramd.d().b().get(2)).b();
      } else {
        localUri = ((WebImage)paramd.d().b().get(0)).b();
      }
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    m = com.google.android.libraries.cast.companionlibrary.a.d.a(this, getResources().getDimension(R.dimen.ccl_notification_image_size));
    j = com.google.android.libraries.cast.companionlibrary.cast.c.B();
    String str = j.y().a("cast-activity-name");
    if (str != null) {}
    try
    {
      for (d = Class.forName(str);; d = VideoCastControllerActivity.class)
      {
        if ((!j.j()) && (!j.k())) {
          j.v();
        }
        k = new com.google.android.libraries.cast.companionlibrary.cast.a.d()
        {
          public final void b()
          {
            int i = VideoCastNotificationService.a(VideoCastNotificationService.this).S();
            VideoCastNotificationService.a(VideoCastNotificationService.this, i);
          }
          
          public final void c(int paramAnonymousInt)
          {
            VideoCastNotificationService.a();
            stopSelf();
          }
          
          public final void c(boolean paramAnonymousBoolean)
          {
            VideoCastNotificationService localVideoCastNotificationService = VideoCastNotificationService.this;
            if (!paramAnonymousBoolean) {}
            for (paramAnonymousBoolean = true;; paramAnonymousBoolean = false)
            {
              VideoCastNotificationService.a(localVideoCastNotificationService, paramAnonymousBoolean);
              if ((!VideoCastNotificationService.b(VideoCastNotificationService.this)) || (VideoCastNotificationService.c(VideoCastNotificationService.this) == null)) {
                break;
              }
              startForeground(1, VideoCastNotificationService.c(VideoCastNotificationService.this));
              return;
            }
            stopForeground(true);
          }
        };
        j.a(k);
        return;
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;) {}
    }
  }
  
  public void onDestroy()
  {
    if (l != null) {
      l.cancel(false);
    }
    ((NotificationManager)getSystemService("notification")).cancel(1);
    if ((j != null) && (k != null))
    {
      j.b(k);
      j = null;
    }
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    String str;
    if (paramIntent != null)
    {
      str = paramIntent.getAction();
      if ((!"com.google.android.libraries.cast.companionlibrary.action.toggleplayback".equals(str)) || (!h)) {
        break label36;
      }
    }
    for (;;)
    {
      label36:
      try
      {
        j.R();
        return 1;
      }
      catch (Exception paramIntent) {}
      if (("com.google.android.libraries.cast.companionlibrary.action.stop".equals(str)) && (h)) {}
      try
      {
        j.l();
        stopSelf();
        return 1;
        if ("com.google.android.libraries.cast.companionlibrary.action.notificationvisibility".equals(str))
        {
          g = paramIntent.getBooleanExtra("visible", false);
          new StringBuilder("onStartCommand(): Action: ACTION_VISIBILITY ").append(g);
          if (g) {
            if (f != null)
            {
              startForeground(1, f);
              return 1;
            }
          }
          try
          {
            a(j.J());
            return 1;
          }
          catch (com.google.android.libraries.cast.companionlibrary.cast.b.d paramIntent)
          {
            return 1;
            stopForeground(true);
            return 1;
          }
          catch (com.google.android.libraries.cast.companionlibrary.cast.b.b paramIntent)
          {
            return 1;
          }
        }
      }
      catch (Exception paramIntent) {}
    }
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.cast.companionlibrary.notification.VideoCastNotificationService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */