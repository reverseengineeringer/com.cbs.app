package com.google.android.libraries.cast.companionlibrary.cast;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.BitmapFactory;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.v7.app.MediaRouteDialogFactory;
import android.support.v7.media.MediaRouter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.accessibility.CaptioningManager;
import com.google.android.gms.cast.a.b;
import com.google.android.gms.cast.a.c.a;
import com.google.android.gms.cast.a.e;
import com.google.android.gms.cast.g;
import com.google.android.gms.cast.h;
import com.google.android.gms.cast.i;
import com.google.android.gms.cast.j;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.images.WebImage;
import com.google.android.libraries.cast.companionlibrary.R.drawable;
import com.google.android.libraries.cast.companionlibrary.R.string;
import com.google.android.libraries.cast.companionlibrary.cast.player.VideoCastControllerActivity;
import com.google.android.libraries.cast.companionlibrary.notification.VideoCastNotificationService;
import com.google.android.libraries.cast.companionlibrary.remotecontrol.VideoIntentReceiver;
import com.google.android.libraries.cast.companionlibrary.remotecontrol.a.a;
import com.google.android.libraries.cast.companionlibrary.widgets.MiniController.a;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class c
  extends a
  implements com.google.android.libraries.cast.companionlibrary.cast.b.c, MiniController.a
{
  public static final long q = TimeUnit.HOURS.toMillis(2L);
  private static final String r = com.google.android.libraries.cast.companionlibrary.a.b.a(c.class);
  private static c s;
  private ComponentName A;
  private i B;
  private com.google.android.libraries.cast.companionlibrary.remotecontrol.a C;
  private c.b D = c.b.b;
  private int E = 1;
  private int F;
  private String G;
  private a.e H;
  private com.google.android.libraries.cast.companionlibrary.cast.player.a I;
  private long J = q;
  private final Set<com.google.android.libraries.cast.companionlibrary.widgets.a> t = Collections.synchronizedSet(new HashSet());
  private final Set<com.google.android.libraries.cast.companionlibrary.cast.a.c> u = new CopyOnWriteArraySet();
  private final Set<com.google.android.libraries.cast.companionlibrary.cast.tracks.a> v = new CopyOnWriteArraySet();
  private double w = 0.05D;
  private com.google.android.libraries.cast.companionlibrary.cast.tracks.b x;
  private Class<?> y;
  private AudioManager z;
  
  private c() {}
  
  private c(Context paramContext, String paramString1, Class<?> paramClass, String paramString2)
  {
    super(paramContext, paramString1);
    G = paramString2;
    paramContext = paramClass;
    if (paramClass == null) {
      paramContext = VideoCastControllerActivity.class;
    }
    y = paramContext;
    h.a("cast-activity-name", y.getName());
    if (!TextUtils.isEmpty(G)) {
      h.a("cast-custom-data-namespace", paramString2);
    }
    z = ((AudioManager)b.getSystemService("audio"));
    A = new ComponentName(b, VideoIntentReceiver.class);
  }
  
  public static c B()
  {
    if (s == null) {
      throw new IllegalStateException("No VideoCastManager instance was found, did you forget to initialize it?");
    }
    return s;
  }
  
  public static c a(Context paramContext, String paramString1, Class<?> paramClass, String paramString2)
  {
    try
    {
      if (s == null)
      {
        com.google.android.gms.common.e.a(paramContext);
        s = new c(paramContext, paramString1, paramClass, paramString2);
      }
      paramContext = s;
      return paramContext;
    }
    finally {}
  }
  
  private boolean a(double paramDouble, boolean paramBoolean)
  {
    double d = 1.0D;
    if ((Build.VERSION.SDK_INT >= 16) && (E == 2) && (e(2))) {
      return false;
    }
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        x();
        paramDouble = K() + paramDouble;
        if (paramDouble <= 1.0D) {
          continue;
        }
        paramDouble = d;
      }
      catch (com.google.android.libraries.cast.companionlibrary.cast.b.d locald)
      {
        continue;
      }
      catch (com.google.android.libraries.cast.companionlibrary.cast.b.b localb)
      {
        continue;
      }
      catch (com.google.android.libraries.cast.companionlibrary.cast.b.a locala)
      {
        continue;
        continue;
      }
      b(paramDouble);
      return true;
      if (paramDouble >= 0.0D) {
        continue;
      }
      paramDouble = 0.0D;
    }
  }
  
  private void ab()
  {
    for (;;)
    {
      com.google.android.libraries.cast.companionlibrary.widgets.a locala;
      synchronized (t)
      {
        Iterator localIterator = t.iterator();
        if (localIterator.hasNext()) {
          locala = (com.google.android.libraries.cast.companionlibrary.widgets.a)localIterator.next();
        }
      }
      try
      {
        c(locala);
      }
      catch (com.google.android.libraries.cast.companionlibrary.cast.b.d locald)
      {
        continue;
        return;
        localObject = finally;
        throw ((Throwable)localObject);
      }
      catch (com.google.android.libraries.cast.companionlibrary.cast.b.b localb) {}
    }
  }
  
  private void ac()
  {
    if (B == null) {
      throw new com.google.android.libraries.cast.companionlibrary.cast.b.b();
    }
  }
  
  private boolean ad()
  {
    if (!e(4)) {
      return true;
    }
    Intent localIntent = new Intent(b, VideoCastNotificationService.class);
    localIntent.setPackage(b.getPackageName());
    localIntent.setAction("com.google.android.libraries.cast.companionlibrary.action.notificationvisibility");
    if (!k) {}
    for (boolean bool = true;; bool = false)
    {
      localIntent.putExtra("visible", bool);
      if (b.startService(localIntent) != null) {
        break;
      }
      return false;
    }
  }
  
  private void ae()
  {
    if (!e(4)) {}
    while (b == null) {
      return;
    }
    b.stopService(new Intent(b, VideoCastNotificationService.class));
  }
  
  private boolean af()
  {
    if (TextUtils.isEmpty(G)) {
      return false;
    }
    try
    {
      if (l != null) {
        com.google.android.gms.cast.a.b.c(l, G);
      }
      H = null;
      h.a("cast-custom-data-namespace", null);
      return true;
    }
    catch (IOException localIOException)
    {
      new StringBuilder("removeDataChannel() failed to remove namespace ").append(G);
      return false;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  private void ag()
  {
    if ((C == null) || (!e(2))) {}
    for (;;)
    {
      return;
      try
      {
        com.google.android.gms.cast.d locald = J();
        if (locald != null)
        {
          com.google.android.gms.cast.e locale = locald.d();
          C.a().a(7, locale.a("com.google.android.gms.cast.metadata.TITLE")).a(13, b.getResources().getString(R.string.ccl_casting_to_device, new Object[] { m() })).a(locald.e()).a();
          return;
        }
      }
      catch (Resources.NotFoundException localNotFoundException) {}catch (com.google.android.libraries.cast.companionlibrary.cast.b.d locald1) {}catch (com.google.android.libraries.cast.companionlibrary.cast.b.b localb) {}
    }
  }
  
  private void b(com.google.android.gms.cast.d paramd)
  {
    Uri localUri = null;
    if (paramd == null) {}
    while ((paramd == null) || (C == null)) {
      return;
    }
    if (paramd.b() == 2)
    {
      C.a().a(null).a();
      return;
    }
    paramd = paramd.d().b();
    if (Build.VERSION.SDK_INT > 18) {
      if (paramd.size() > 1)
      {
        localUri = ((WebImage)paramd.get(1)).b();
        paramd = null;
      }
    }
    for (;;)
    {
      if (paramd != null)
      {
        C.a().a(paramd).a();
        return;
        if (paramd.size() == 1)
        {
          localUri = ((WebImage)paramd.get(0)).b();
          paramd = null;
          continue;
        }
        if (b != null)
        {
          paramd = BitmapFactory.decodeResource(b.getResources(), R.drawable.album_art_placeholder_large);
          continue;
          if (!paramd.isEmpty())
          {
            localUri = ((WebImage)paramd.get(0)).b();
            paramd = null;
            continue;
          }
          paramd = BitmapFactory.decodeResource(b.getResources(), R.drawable.album_art_placeholder);
        }
      }
      else
      {
        new c.4(this).a(localUri);
        return;
      }
      paramd = null;
    }
  }
  
  private void c(com.google.android.libraries.cast.companionlibrary.widgets.a parama)
  {
    x();
    ac();
    if ((B.b() > 0L) || (G()))
    {
      com.google.android.gms.cast.d locald = J();
      com.google.android.gms.cast.e locale = locald.d();
      parama.setStreamType(locald.b());
      parama.setPlaybackStatus(E, F);
      parama.setSubtitle(b.getResources().getString(R.string.ccl_casting_to_device, new Object[] { g }));
      parama.setTitle(locale.a("com.google.android.gms.cast.metadata.TITLE"));
      if (!locale.b().isEmpty()) {
        parama.setIcon(((WebImage)locale.b().get(0)).b());
      }
    }
  }
  
  @TargetApi(14)
  private void e(boolean paramBoolean)
  {
    int i = 3;
    if (!e(2)) {}
    while (!j()) {
      return;
    }
    for (;;)
    {
      try
      {
        if ((C == null) && (paramBoolean))
        {
          localObject1 = J();
          if (e(2))
          {
            z.requestAudioFocus(null, 3, 3);
            Object localObject2 = new ComponentName(b, VideoIntentReceiver.class.getName());
            z.registerMediaButtonEventReceiver((ComponentName)localObject2);
            if (C == null)
            {
              localObject2 = new Intent("android.intent.action.MEDIA_BUTTON");
              ((Intent)localObject2).setComponent(A);
              C = new com.google.android.libraries.cast.companionlibrary.remotecontrol.a(PendingIntent.getBroadcast(b, 0, (Intent)localObject2, 0));
              com.google.android.libraries.cast.companionlibrary.remotecontrol.b.a(z, C);
            }
            C.a(c);
            C.b();
            if (localObject1 != null) {
              continue;
            }
            C.a(2);
          }
        }
        if (C == null) {
          break;
        }
        if (G()) {
          i = 8;
        }
        localObject1 = C;
        if (!paramBoolean) {
          continue;
        }
      }
      catch (com.google.android.libraries.cast.companionlibrary.cast.b.b localb)
      {
        Object localObject1;
        return;
        i = 2;
        continue;
      }
      catch (com.google.android.libraries.cast.companionlibrary.cast.b.d locald) {}
      ((com.google.android.libraries.cast.companionlibrary.remotecontrol.a)localObject1).a(i);
      return;
      C.a(3);
      b((com.google.android.gms.cast.d)localObject1);
      ag();
    }
  }
  
  public final void C()
  {
    x();
    if (E == 2) {
      Q();
    }
    boolean bool;
    do
    {
      return;
      bool = G();
    } while ((E != 3) && ((E != 1) || (!bool)));
    P();
  }
  
  public final com.google.android.libraries.cast.companionlibrary.cast.player.a D()
  {
    return I;
  }
  
  public final void E()
  {
    I = null;
  }
  
  public final i F()
  {
    return B;
  }
  
  public final boolean G()
  {
    x();
    com.google.android.gms.cast.d locald = J();
    return (locald != null) && (locald.b() == 2);
  }
  
  public final boolean H()
  {
    x();
    return (E == 4) || (E == 2);
  }
  
  public final boolean I()
  {
    x();
    return E == 3;
  }
  
  public final com.google.android.gms.cast.d J()
  {
    x();
    ac();
    return B.d();
  }
  
  public final double K()
  {
    x();
    if (D == c.b.a)
    {
      ac();
      return B.c().g();
    }
    return r();
  }
  
  public final boolean L()
  {
    x();
    if (D == c.b.a)
    {
      ac();
      return B.c().h();
    }
    return s();
  }
  
  public final long M()
  {
    x();
    ac();
    return B.b();
  }
  
  public final long N()
  {
    x();
    if (B == null) {
      return -1L;
    }
    if (G()) {
      return J;
    }
    return B.b() - B.a();
  }
  
  public final long O()
  {
    x();
    ac();
    return B.a();
  }
  
  public final void P()
  {
    x();
    if (B == null) {
      throw new com.google.android.libraries.cast.companionlibrary.cast.b.b();
    }
    B.b(l, null).a(new c.11(this));
  }
  
  public final void Q()
  {
    x();
    if (B == null) {
      throw new com.google.android.libraries.cast.companionlibrary.cast.b.b();
    }
    B.a(l, null).a(new c.12(this));
  }
  
  public final void R()
  {
    x();
    if (H())
    {
      Q();
      return;
    }
    if ((E == 1) && (F == 1))
    {
      a(J());
      return;
    }
    P();
  }
  
  public final int S()
  {
    return E;
  }
  
  public final int T()
  {
    return F;
  }
  
  public final void U()
  {
    ag();
    Iterator localIterator = u.iterator();
    while (localIterator.hasNext()) {
      ((com.google.android.libraries.cast.companionlibrary.cast.a.c)localIterator.next()).c();
    }
    try
    {
      b(J());
      return;
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.d locald) {}catch (com.google.android.libraries.cast.companionlibrary.cast.b.b localb) {}
  }
  
  public final void V()
  {
    if (e(2))
    {
      z.abandonAudioFocus(null);
      if (C != null)
      {
        com.google.android.libraries.cast.companionlibrary.remotecontrol.b.b(z, C);
        C = null;
      }
    }
  }
  
  public final Class<?> W()
  {
    return y;
  }
  
  public final double X()
  {
    return w;
  }
  
  public final com.google.android.libraries.cast.companionlibrary.cast.tracks.b Y()
  {
    return x;
  }
  
  public final long[] Z()
  {
    if ((B != null) && (B.c() != null)) {
      return B.c().i();
    }
    return null;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    new StringBuilder("onFailed: ").append(b.getString(paramInt1)).append(", code: ").append(paramInt2);
    super.a(paramInt1, paramInt2);
  }
  
  public final void a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, y);
    localIntent.putExtra("media", com.google.android.libraries.cast.companionlibrary.a.d.b(J()));
    paramContext.startActivity(localIntent);
  }
  
  /* Error */
  protected final void a(com.google.android.gms.cast.ApplicationMetadata paramApplicationMetadata, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: new 230	java/lang/StringBuilder
    //   3: dup
    //   4: ldc_w 684
    //   7: invokespecial 233	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   10: aload_2
    //   11: invokevirtual 361	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: ldc_w 686
    //   17: invokevirtual 361	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: aload_0
    //   21: getfield 688	com/google/android/libraries/cast/companionlibrary/cast/c:a	I
    //   24: invokevirtual 497	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   27: pop
    //   28: aload_0
    //   29: getfield 688	com/google/android/libraries/cast/companionlibrary/cast/c:a	I
    //   32: iconst_2
    //   33: if_icmpne +87 -> 120
    //   36: aload_0
    //   37: getfield 202	com/google/android/libraries/cast/companionlibrary/cast/c:c	Landroid/support/v7/media/MediaRouter;
    //   40: invokevirtual 691	android/support/v7/media/MediaRouter:getRoutes	()Ljava/util/List;
    //   43: astore 5
    //   45: aload 5
    //   47: ifnull +73 -> 120
    //   50: aload_0
    //   51: getfield 121	com/google/android/libraries/cast/companionlibrary/cast/c:h	Lcom/google/android/libraries/cast/companionlibrary/a/c;
    //   54: ldc_w 693
    //   57: invokevirtual 694	com/google/android/libraries/cast/companionlibrary/a/c:a	(Ljava/lang/String;)Ljava/lang/String;
    //   60: astore 4
    //   62: aload 5
    //   64: invokeinterface 695 1 0
    //   69: astore 5
    //   71: aload 5
    //   73: invokeinterface 219 1 0
    //   78: ifeq +42 -> 120
    //   81: aload 5
    //   83: invokeinterface 223 1 0
    //   88: checkcast 697	android/support/v7/media/MediaRouter$RouteInfo
    //   91: astore 6
    //   93: aload 4
    //   95: aload 6
    //   97: invokevirtual 700	android/support/v7/media/MediaRouter$RouteInfo:getId	()Ljava/lang/String;
    //   100: invokevirtual 703	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   103: ifeq -32 -> 71
    //   106: aload_0
    //   107: iconst_3
    //   108: putfield 688	com/google/android/libraries/cast/companionlibrary/cast/c:a	I
    //   111: aload_0
    //   112: getfield 202	com/google/android/libraries/cast/companionlibrary/cast/c:c	Landroid/support/v7/media/MediaRouter;
    //   115: aload 6
    //   117: invokevirtual 261	android/support/v7/media/MediaRouter:selectRoute	(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    //   120: aload_0
    //   121: invokespecial 485	com/google/android/libraries/cast/companionlibrary/cast/c:ad	()Z
    //   124: pop
    //   125: aload_0
    //   126: getfield 113	com/google/android/libraries/cast/companionlibrary/cast/c:G	Ljava/lang/String;
    //   129: invokestatic 140	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   132: ifne +46 -> 178
    //   135: aload_0
    //   136: getfield 356	com/google/android/libraries/cast/companionlibrary/cast/c:H	Lcom/google/android/gms/cast/a$e;
    //   139: ifnonnull +39 -> 178
    //   142: aload_0
    //   143: invokevirtual 283	com/google/android/libraries/cast/companionlibrary/cast/c:x	()V
    //   146: aload_0
    //   147: new 705	com/google/android/libraries/cast/companionlibrary/cast/c$3
    //   150: dup
    //   151: aload_0
    //   152: invokespecial 706	com/google/android/libraries/cast/companionlibrary/cast/c$3:<init>	(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V
    //   155: putfield 356	com/google/android/libraries/cast/companionlibrary/cast/c:H	Lcom/google/android/gms/cast/a$e;
    //   158: getstatic 349	com/google/android/gms/cast/a:b	Lcom/google/android/gms/cast/a$b;
    //   161: aload_0
    //   162: getfield 344	com/google/android/libraries/cast/companionlibrary/cast/c:l	Lcom/google/android/gms/common/api/b;
    //   165: aload_0
    //   166: getfield 113	com/google/android/libraries/cast/companionlibrary/cast/c:G	Ljava/lang/String;
    //   169: aload_0
    //   170: getfield 356	com/google/android/libraries/cast/companionlibrary/cast/c:H	Lcom/google/android/gms/cast/a$e;
    //   173: invokeinterface 709 4 0
    //   178: aload_0
    //   179: invokevirtual 283	com/google/android/libraries/cast/companionlibrary/cast/c:x	()V
    //   182: aload_0
    //   183: getfield 300	com/google/android/libraries/cast/companionlibrary/cast/c:B	Lcom/google/android/gms/cast/i;
    //   186: ifnonnull +44 -> 230
    //   189: aload_0
    //   190: new 464	com/google/android/gms/cast/i
    //   193: dup
    //   194: invokespecial 710	com/google/android/gms/cast/i:<init>	()V
    //   197: putfield 300	com/google/android/libraries/cast/companionlibrary/cast/c:B	Lcom/google/android/gms/cast/i;
    //   200: aload_0
    //   201: getfield 300	com/google/android/libraries/cast/companionlibrary/cast/c:B	Lcom/google/android/gms/cast/i;
    //   204: new 712	com/google/android/libraries/cast/companionlibrary/cast/c$15
    //   207: dup
    //   208: aload_0
    //   209: invokespecial 713	com/google/android/libraries/cast/companionlibrary/cast/c$15:<init>	(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V
    //   212: invokevirtual 716	com/google/android/gms/cast/i:a	(Lcom/google/android/gms/cast/i$c;)V
    //   215: aload_0
    //   216: getfield 300	com/google/android/libraries/cast/companionlibrary/cast/c:B	Lcom/google/android/gms/cast/i;
    //   219: new 718	com/google/android/libraries/cast/companionlibrary/cast/c$2
    //   222: dup
    //   223: aload_0
    //   224: invokespecial 719	com/google/android/libraries/cast/companionlibrary/cast/c$2:<init>	(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V
    //   227: invokevirtual 722	com/google/android/gms/cast/i:a	(Lcom/google/android/gms/cast/i$b;)V
    //   230: getstatic 349	com/google/android/gms/cast/a:b	Lcom/google/android/gms/cast/a$b;
    //   233: aload_0
    //   234: getfield 344	com/google/android/libraries/cast/companionlibrary/cast/c:l	Lcom/google/android/gms/common/api/b;
    //   237: aload_0
    //   238: getfield 300	com/google/android/libraries/cast/companionlibrary/cast/c:B	Lcom/google/android/gms/cast/i;
    //   241: invokevirtual 724	com/google/android/gms/cast/i:e	()Ljava/lang/String;
    //   244: aload_0
    //   245: getfield 300	com/google/android/libraries/cast/companionlibrary/cast/c:B	Lcom/google/android/gms/cast/i;
    //   248: invokeinterface 709 4 0
    //   253: aload_0
    //   254: aload_2
    //   255: putfield 727	com/google/android/libraries/cast/companionlibrary/cast/c:p	Ljava/lang/String;
    //   258: aload_0
    //   259: getfield 121	com/google/android/libraries/cast/companionlibrary/cast/c:h	Lcom/google/android/libraries/cast/companionlibrary/a/c;
    //   262: ldc_w 729
    //   265: aload_0
    //   266: getfield 727	com/google/android/libraries/cast/companionlibrary/cast/c:p	Ljava/lang/String;
    //   269: invokevirtual 134	com/google/android/libraries/cast/companionlibrary/a/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   272: aload_0
    //   273: getfield 300	com/google/android/libraries/cast/companionlibrary/cast/c:B	Lcom/google/android/gms/cast/i;
    //   276: aload_0
    //   277: getfield 344	com/google/android/libraries/cast/companionlibrary/cast/c:l	Lcom/google/android/gms/common/api/b;
    //   280: invokevirtual 732	com/google/android/gms/cast/i:a	(Lcom/google/android/gms/common/api/b;)Lcom/google/android/gms/common/api/c;
    //   283: new 734	com/google/android/libraries/cast/companionlibrary/cast/c$9
    //   286: dup
    //   287: aload_0
    //   288: invokespecial 735	com/google/android/libraries/cast/companionlibrary/cast/c$9:<init>	(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V
    //   291: invokevirtual 627	com/google/android/gms/common/api/c:a	(Lcom/google/android/gms/common/api/f;)V
    //   294: aload_0
    //   295: getfield 92	com/google/android/libraries/cast/companionlibrary/cast/c:u	Ljava/util/Set;
    //   298: invokeinterface 213 1 0
    //   303: astore_2
    //   304: aload_2
    //   305: invokeinterface 219 1 0
    //   310: ifeq +35 -> 345
    //   313: aload_2
    //   314: invokeinterface 223 1 0
    //   319: checkcast 225	com/google/android/libraries/cast/companionlibrary/cast/a/c
    //   322: aload_1
    //   323: aload_0
    //   324: getfield 727	com/google/android/libraries/cast/companionlibrary/cast/c:p	Ljava/lang/String;
    //   327: iload_3
    //   328: invokeinterface 737 4 0
    //   333: goto -29 -> 304
    //   336: astore_1
    //   337: aload_0
    //   338: getstatic 740	com/google/android/libraries/cast/companionlibrary/R$string:ccl_failed_no_connection_trans	I
    //   341: iconst_m1
    //   342: invokevirtual 508	com/google/android/libraries/cast/companionlibrary/cast/c:a	(II)V
    //   345: return
    //   346: astore_1
    //   347: aload_0
    //   348: getstatic 743	com/google/android/libraries/cast/companionlibrary/R$string:ccl_failed_no_connection	I
    //   351: iconst_m1
    //   352: invokevirtual 508	com/google/android/libraries/cast/companionlibrary/cast/c:a	(II)V
    //   355: return
    //   356: astore 4
    //   358: goto -105 -> 253
    //   361: astore 4
    //   363: goto -110 -> 253
    //   366: astore 4
    //   368: goto -190 -> 178
    //   371: astore 4
    //   373: goto -195 -> 178
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	376	0	this	c
    //   0	376	1	paramApplicationMetadata	com.google.android.gms.cast.ApplicationMetadata
    //   0	376	2	paramString	String
    //   0	376	3	paramBoolean	boolean
    //   60	34	4	str	String
    //   356	1	4	localIOException1	IOException
    //   361	1	4	localIllegalStateException1	IllegalStateException
    //   366	1	4	localIOException2	IOException
    //   371	1	4	localIllegalStateException2	IllegalStateException
    //   43	39	5	localObject	Object
    //   91	25	6	localRouteInfo	android.support.v7.media.MediaRouter.RouteInfo
    // Exception table:
    //   from	to	target	type
    //   125	158	336	com/google/android/libraries/cast/companionlibrary/cast/b/d
    //   158	178	336	com/google/android/libraries/cast/companionlibrary/cast/b/d
    //   178	230	336	com/google/android/libraries/cast/companionlibrary/cast/b/d
    //   230	253	336	com/google/android/libraries/cast/companionlibrary/cast/b/d
    //   253	304	336	com/google/android/libraries/cast/companionlibrary/cast/b/d
    //   304	333	336	com/google/android/libraries/cast/companionlibrary/cast/b/d
    //   125	158	346	com/google/android/libraries/cast/companionlibrary/cast/b/b
    //   158	178	346	com/google/android/libraries/cast/companionlibrary/cast/b/b
    //   178	230	346	com/google/android/libraries/cast/companionlibrary/cast/b/b
    //   230	253	346	com/google/android/libraries/cast/companionlibrary/cast/b/b
    //   253	304	346	com/google/android/libraries/cast/companionlibrary/cast/b/b
    //   304	333	346	com/google/android/libraries/cast/companionlibrary/cast/b/b
    //   230	253	356	java/io/IOException
    //   230	253	361	java/lang/IllegalStateException
    //   158	178	366	java/io/IOException
    //   158	178	371	java/lang/IllegalStateException
  }
  
  public final void a(com.google.android.gms.cast.d paramd)
  {
    a(paramd, true, 0, null);
  }
  
  public final void a(com.google.android.gms.cast.d paramd, boolean paramBoolean, int paramInt, JSONObject paramJSONObject)
  {
    x();
    if (paramd != null)
    {
      if (B == null) {
        throw new com.google.android.libraries.cast.companionlibrary.cast.b.b();
      }
      B.a(l, paramd, true, paramInt, null, paramJSONObject).a(new c.10(this));
    }
  }
  
  public final void a(j paramj)
  {
    B.a(l, paramj).a(new c.5(this));
    Iterator localIterator = u.iterator();
    while (localIterator.hasNext())
    {
      com.google.android.libraries.cast.companionlibrary.cast.a.c localc = (com.google.android.libraries.cast.companionlibrary.cast.a.c)localIterator.next();
      try
      {
        localc.a(paramj);
      }
      catch (Exception localException)
      {
        new StringBuilder("onTextTrackStyleChanged(): Failed to inform ").append(localc);
      }
    }
  }
  
  public final void a(ConnectionResult paramConnectionResult)
  {
    super.a(paramConnectionResult);
    e(false);
    ae();
  }
  
  public final void a(com.google.android.libraries.cast.companionlibrary.cast.a.c paramc)
  {
    if (paramc != null) {}
    try
    {
      a(paramc);
      u.add(paramc);
      new StringBuilder("Successfully added the new CastConsumer listener ").append(paramc);
      return;
    }
    finally
    {
      paramc = finally;
      throw paramc;
    }
  }
  
  public final void a(com.google.android.libraries.cast.companionlibrary.cast.tracks.a parama)
  {
    if (parama != null) {
      v.add(parama);
    }
  }
  
  public final void a(com.google.android.libraries.cast.companionlibrary.widgets.a parama)
  {
    i = 0;
    if (parama != null) {}
    synchronized (t)
    {
      boolean bool = t.add(parama);
      if (bool) {
        parama.setOnMiniControllerChangedListener(this);
      }
      try
      {
        if (!j()) {
          break label84;
        }
        x();
        if (I()) {
          break label156;
        }
        if (!H()) {}
      }
      catch (com.google.android.libraries.cast.companionlibrary.cast.b.d locald)
      {
        for (;;) {}
      }
      catch (com.google.android.libraries.cast.companionlibrary.cast.b.b localb)
      {
        for (;;)
        {
          label84:
          continue;
          i = 1;
        }
      }
      if (i != 0)
      {
        c(parama);
        parama.setVisibility(0);
      }
      new StringBuilder("Successfully added the new MiniController ").append(parama).append("*****").append(t.size());
      return;
    }
    new StringBuilder("Attempting to adding ").append(parama).append(" but it was already registered, skipping this step");
  }
  
  public final void a(List<h> paramList)
  {
    Iterator localIterator = v.iterator();
    while (localIterator.hasNext()) {
      ((com.google.android.libraries.cast.companionlibrary.cast.tracks.a)localIterator.next()).a(paramList);
    }
  }
  
  public final void a(Locale paramLocale)
  {
    Iterator localIterator = u.iterator();
    while (localIterator.hasNext()) {
      ((com.google.android.libraries.cast.companionlibrary.cast.a.c)localIterator.next()).a(paramLocale);
    }
  }
  
  public final void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    super.a(paramBoolean1, paramBoolean2, paramBoolean3);
    c(false);
    if ((paramBoolean2) && (!o)) {
      V();
    }
    E = 1;
  }
  
  public final void a(long[] paramArrayOfLong)
  {
    if ((B == null) || (B.d() == null)) {
      return;
    }
    B.a(l, paramArrayOfLong).a(new c.8(this));
  }
  
  public final boolean a(KeyEvent paramKeyEvent, double paramDouble)
  {
    boolean bool;
    if (j())
    {
      if (paramKeyEvent.getAction() != 0) {
        break label46;
      }
      bool = true;
      switch (paramKeyEvent.getKeyCode())
      {
      }
    }
    label46:
    do
    {
      do
      {
        return false;
        bool = false;
        break;
      } while (!a(paramDouble, bool));
      return true;
    } while (!a(-paramDouble, bool));
    return true;
  }
  
  public final void b(double paramDouble)
  {
    x();
    double d;
    if (paramDouble > 1.0D) {
      d = 1.0D;
    }
    while (D == c.b.a)
    {
      ac();
      B.a(l, d).a(new c.1(this));
      return;
      d = paramDouble;
      if (paramDouble < 0.0D) {
        d = 0.0D;
      }
    }
    a(d);
  }
  
  public final void b(j paramj)
  {
    if ((B == null) || (B.d() == null)) {}
    for (;;)
    {
      return;
      B.a(l, paramj).a(new c.6(this));
      Iterator localIterator = u.iterator();
      while (localIterator.hasNext())
      {
        com.google.android.libraries.cast.companionlibrary.cast.a.c localc = (com.google.android.libraries.cast.companionlibrary.cast.a.c)localIterator.next();
        try
        {
          localc.a(paramj);
        }
        catch (Exception localException)
        {
          new StringBuilder("onTextTrackStyleChanged(): Failed to inform ").append(localc);
        }
      }
    }
  }
  
  public final void b(com.google.android.libraries.cast.companionlibrary.cast.a.c paramc)
  {
    if (paramc != null) {}
    try
    {
      b(paramc);
      u.remove(paramc);
      return;
    }
    finally
    {
      paramc = finally;
      throw paramc;
    }
  }
  
  public final void b(com.google.android.libraries.cast.companionlibrary.cast.tracks.a parama)
  {
    if (parama != null) {
      v.remove(parama);
    }
  }
  
  public final void b(com.google.android.libraries.cast.companionlibrary.widgets.a parama)
  {
    if (parama != null) {
      synchronized (t)
      {
        t.remove(parama);
        parama.setVisibility(8);
        return;
      }
    }
  }
  
  public final boolean b(int paramInt1, int paramInt2)
  {
    boolean bool2 = true;
    boolean bool1 = bool2;
    switch (paramInt1)
    {
    default: 
      bool1 = false;
    }
    do
    {
      return bool1;
      if (!G()) {
        break;
      }
      bool1 = bool2;
    } while (paramInt2 == 2);
    return false;
  }
  
  public final void c(int paramInt)
  {
    if (a == 2) {
      if (paramInt == 2005)
      {
        a = 4;
        a(null);
      }
    }
    do
    {
      return;
      Iterator localIterator = u.iterator();
      while (localIterator.hasNext()) {
        localIterator.next();
      }
      a(null);
    } while (c == null);
    c.selectRoute(c.getDefaultRoute());
  }
  
  public final void c(boolean paramBoolean)
  {
    new StringBuilder("minicontroller size:").append(t.size());
    for (;;)
    {
      synchronized (t)
      {
        Iterator localIterator = t.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        com.google.android.libraries.cast.companionlibrary.widgets.a locala = (com.google.android.libraries.cast.companionlibrary.widgets.a)localIterator.next();
        if (paramBoolean)
        {
          i = 0;
          locala.setVisibility(i);
        }
      }
      int i = 8;
    }
  }
  
  protected final a.c.a d()
  {
    a.c.a locala = new a.c.a(f, new c.a(this));
    if (e(1)) {
      locala.a();
    }
    return locala;
  }
  
  public final void d(int paramInt)
  {
    Iterator localIterator = u.iterator();
    while (localIterator.hasNext()) {
      ((com.google.android.libraries.cast.companionlibrary.cast.a.c)localIterator.next()).d(paramInt);
    }
  }
  
  public final void d(boolean paramBoolean)
  {
    if (!paramBoolean) {
      a(new long[0]);
    }
    Iterator localIterator = u.iterator();
    while (localIterator.hasNext()) {
      ((com.google.android.libraries.cast.companionlibrary.cast.a.c)localIterator.next()).b(paramBoolean);
    }
  }
  
  protected final MediaRouteDialogFactory e()
  {
    return new com.google.android.libraries.cast.companionlibrary.cast.dialog.video.b();
  }
  
  protected final void f()
  {
    ae();
    if (B != null) {}
    try
    {
      com.google.android.gms.cast.a.b.c(l, B.e());
      B = null;
      af();
      c(false);
      E = 1;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  public final void i(int paramInt)
  {
    x();
    new StringBuilder("attempting to play media at position ").append(paramInt).append(" seconds");
    if (B == null) {
      throw new com.google.android.libraries.cast.companionlibrary.cast.b.b();
    }
    x();
    if (B == null) {
      throw new com.google.android.libraries.cast.companionlibrary.cast.b.b();
    }
    c.14 local14 = new c.14(this);
    B.a(l, paramInt, 1).a(local14);
  }
  
  public final void j(int paramInt)
  {
    x();
    if (B == null) {
      throw new com.google.android.libraries.cast.companionlibrary.cast.b.b();
    }
    B.a(l, paramInt, 0).a(new c.13(this));
  }
  
  protected final void q()
  {
    if (e(16))
    {
      x = new com.google.android.libraries.cast.companionlibrary.cast.tracks.b(b.getApplicationContext());
      Context localContext = b.getApplicationContext();
      if (com.google.android.libraries.cast.companionlibrary.a.d.a) {
        ((CaptioningManager)localContext.getSystemService("captioning")).addCaptioningChangeListener(new c.7(this));
      }
    }
  }
  
  public final void w()
  {
    if ((B != null) && (l != null)) {}
    try
    {
      com.google.android.gms.cast.a.b.a(l, B.e(), B);
      if ((!TextUtils.isEmpty(G)) && (H != null)) {}
      try
      {
        com.google.android.gms.cast.a.b.a(l, G, H);
        super.w();
        return;
      }
      catch (IOException localIOException1)
      {
        for (;;) {}
      }
      catch (IllegalStateException localIllegalStateException1)
      {
        for (;;) {}
      }
    }
    catch (IOException localIOException2)
    {
      for (;;) {}
    }
    catch (IllegalStateException localIllegalStateException2)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.cast.companionlibrary.cast.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */