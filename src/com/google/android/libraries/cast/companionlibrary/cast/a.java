package com.google.android.libraries.cast.companionlibrary.cast;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.app.MediaRouteActionProvider;
import android.support.v7.app.MediaRouteButton;
import android.support.v7.app.MediaRouteDialogFactory;
import android.support.v7.media.MediaRouteSelector;
import android.support.v7.media.MediaRouteSelector.Builder;
import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.RouteInfo;
import android.view.Menu;
import android.view.MenuItem;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.a.b;
import com.google.android.gms.cast.a.c.a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.b.a;
import com.google.android.gms.common.api.b.b;
import com.google.android.gms.common.api.b.c;
import com.google.android.libraries.cast.companionlibrary.R.string;
import com.google.android.libraries.cast.companionlibrary.cast.reconnection.ReconnectionService;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

public abstract class a
  implements b.b, b.c, com.google.android.libraries.cast.companionlibrary.cast.b.c
{
  private static final String q = com.google.android.libraries.cast.companionlibrary.a.b.a(a.class);
  private static String r;
  protected int a = 4;
  protected Context b;
  protected MediaRouter c;
  protected MediaRouteSelector d;
  protected b e;
  protected CastDevice f;
  protected String g;
  protected com.google.android.libraries.cast.companionlibrary.a.c h;
  protected String i;
  protected int j;
  protected boolean k;
  protected com.google.android.gms.common.api.b l;
  protected AsyncTask<Void, Integer, Boolean> m;
  protected int n;
  protected boolean o;
  protected String p;
  private final Set<com.google.android.libraries.cast.companionlibrary.cast.a.a> s = new CopyOnWriteArraySet();
  private boolean t = false;
  private Handler u;
  private MediaRouter.RouteInfo v;
  private int w = 0;
  
  protected a() {}
  
  protected a(Context paramContext, String paramString)
  {
    r = paramContext.getString(R.string.ccl_version);
    new StringBuilder("BaseCastManager is instantiated\nVersion: ").append(r).append("\nApplication ID: ").append(paramString);
    b = paramContext.getApplicationContext();
    h = new com.google.android.libraries.cast.companionlibrary.a.c(b);
    u = new Handler(new a.a(this, (byte)0));
    i = paramString;
    h.a("application-id", paramString);
    c = MediaRouter.getInstance(b);
    paramContext = new MediaRouteSelector.Builder();
    paramString = i;
    if (paramString == null) {
      throw new IllegalArgumentException("applicationId cannot be null");
    }
    StringBuilder localStringBuilder = new StringBuilder("com.google.android.gms.cast.CATEGORY_CAST");
    if (paramString != null)
    {
      String str = paramString.toUpperCase();
      if (!str.matches("[A-F0-9]+")) {
        throw new IllegalArgumentException("Invalid application ID: " + paramString);
      }
      localStringBuilder.append("/").append(str);
    }
    d = paramContext.addControlCategory(localStringBuilder.toString()).build();
    e = new b(this);
    c.addCallback(d, e, 4);
  }
  
  public static final String a()
  {
    return r;
  }
  
  private void b(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    new StringBuilder("disconnectDevice(").append(paramBoolean2).append(",").append(paramBoolean3).append(")");
    if (f == null) {
      return;
    }
    f = null;
    g = null;
    new StringBuilder("mConnectionSuspended: ").append(o);
    if ((!o) && (paramBoolean2))
    {
      h(0);
      z();
    }
    try
    {
      if (((j()) || (k())) && (paramBoolean1))
      {
        x();
        com.google.android.gms.cast.a.b.b(l, p).a(new a.4(this));
      }
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.d locald)
    {
      for (;;) {}
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.b localb)
    {
      for (;;) {}
    }
    a(paramBoolean1, paramBoolean2, paramBoolean3);
    f();
    if ((l == null) || (l.e())) {}
    try
    {
      l.d();
      if ((c != null) && (paramBoolean3)) {
        c.selectRoute(c.getDefaultRoute());
      }
      l = null;
      p = null;
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  private static boolean b(int paramInt1, int paramInt2)
  {
    return (paramInt1 == 0) || ((paramInt1 & paramInt2) == paramInt2);
  }
  
  public final MenuItem a(Menu paramMenu, int paramInt)
  {
    paramMenu = paramMenu.findItem(paramInt);
    MediaRouteActionProvider localMediaRouteActionProvider = (MediaRouteActionProvider)MenuItemCompat.getActionProvider(paramMenu);
    if (localMediaRouteActionProvider != null)
    {
      localMediaRouteActionProvider.setRouteSelector(d);
      e();
      localMediaRouteActionProvider.setDialogFactory(e());
    }
    return paramMenu;
  }
  
  public final void a(double paramDouble)
  {
    x();
    try
    {
      com.google.android.gms.cast.a.b.a(l, paramDouble);
      return;
    }
    catch (IOException localIOException)
    {
      throw new com.google.android.libraries.cast.companionlibrary.cast.b.a("Failed to set volume", localIOException);
    }
    catch (IllegalStateException localIllegalStateException)
    {
      throw new com.google.android.libraries.cast.companionlibrary.cast.b.b("setDeviceVolume()", localIllegalStateException);
    }
  }
  
  public final void a(int paramInt)
  {
    o = true;
    Iterator localIterator = s.iterator();
    while (localIterator.hasNext()) {
      ((com.google.android.libraries.cast.companionlibrary.cast.a.a)localIterator.next()).a(paramInt);
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    Iterator localIterator = s.iterator();
    while (localIterator.hasNext()) {
      ((com.google.android.libraries.cast.companionlibrary.cast.a.a)localIterator.next()).a(paramInt1, paramInt2);
    }
  }
  
  @TargetApi(14)
  public final void a(int paramInt, String paramString)
  {
    String.format("reconnectSessionIfPossible(%d, %s)", new Object[] { Integer.valueOf(paramInt), paramString });
    if (j()) {
      return;
    }
    String str1 = h.a("route-id");
    Object localObject = h.a("session-id");
    String str2 = h.a("route-id");
    String str3 = h.a("ssid");
    int i1;
    if ((localObject == null) || (str2 == null))
    {
      i1 = 0;
      label90:
      if (i1 == 0) {
        break label308;
      }
      paramString = c.getRoutes();
      if (paramString == null) {
        break label371;
      }
      localObject = paramString.iterator();
      do
      {
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        paramString = (MediaRouter.RouteInfo)((Iterator)localObject).next();
      } while (!paramString.getId().equals(str1));
    }
    for (;;)
    {
      if (paramString != null) {
        if (!j())
        {
          str1 = h.a("session-id");
          localObject = h.a("route-id");
          new StringBuilder("reconnectSessionIfPossible() Retrieved from preferences: sessionId=").append(str1).append(", routeId=").append((String)localObject);
          if ((str1 != null) && (localObject != null)) {
            break label310;
          }
        }
      }
      for (;;)
      {
        if ((m != null) && (!m.isCancelled())) {
          m.cancel(true);
        }
        m = new a.1(this, paramInt);
        if (Build.VERSION.SDK_INT < 11) {
          break label358;
        }
        m.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        return;
        if ((paramString != null) && ((str3 == null) || (!str3.equals(paramString))))
        {
          i1 = 0;
          break label90;
        }
        i1 = 1;
        break label90;
        label308:
        break;
        label310:
        f(2);
        paramString = CastDevice.a(paramString.getExtras());
        if (paramString != null)
        {
          new StringBuilder("trying to acquire Cast Client for ").append(paramString);
          a(paramString);
          continue;
          f(1);
        }
      }
      label358:
      m.execute(new Void[0]);
      return;
      label371:
      paramString = null;
    }
  }
  
  protected final void a(long paramLong)
  {
    if (!e(8)) {
      return;
    }
    long l1 = SystemClock.elapsedRealtime();
    h.a("media-end", Long.valueOf(l1 + paramLong));
    Context localContext = b.getApplicationContext();
    Intent localIntent = new Intent(localContext, ReconnectionService.class);
    localIntent.setPackage(localContext.getPackageName());
    localContext.startService(localIntent);
  }
  
  public final void a(Bundle paramBundle)
  {
    new StringBuilder("onConnected() reached with prior suspension: ").append(o);
    if (o)
    {
      o = false;
      if ((paramBundle != null) && (paramBundle.getBoolean("com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"))) {
        l();
      }
    }
    for (;;)
    {
      return;
      w();
      return;
      if (!j())
      {
        if (a != 2) {
          continue;
        }
        f(4);
        return;
      }
      try
      {
        if (e(8))
        {
          paramBundle = com.google.android.libraries.cast.companionlibrary.a.d.a(b);
          h.a("ssid", paramBundle);
        }
        com.google.android.gms.cast.a.b.a(l);
        if (!j()) {
          if (a == 2) {
            f(4);
          }
        }
        for (;;)
        {
          paramBundle = s.iterator();
          while (paramBundle.hasNext()) {
            ((com.google.android.libraries.cast.companionlibrary.cast.a.a)paramBundle.next()).d();
          }
          x();
          if (a == 2)
          {
            paramBundle = h.a("session-id");
            com.google.android.gms.cast.a.b.b(l, i, paramBundle).a(new a.2(this));
          }
          else
          {
            com.google.android.gms.cast.a.b.a(l, i).a(new a.3(this));
          }
        }
        return;
      }
      catch (IOException paramBundle)
      {
        return;
      }
      catch (IllegalStateException paramBundle) {}
    }
  }
  
  public final void a(MediaRouteButton paramMediaRouteButton)
  {
    paramMediaRouteButton.setRouteSelector(d);
    e();
    paramMediaRouteButton.setDialogFactory(e());
  }
  
  public final void a(MediaRouter.RouteInfo paramRouteInfo)
  {
    Iterator localIterator = s.iterator();
    while (localIterator.hasNext()) {
      ((com.google.android.libraries.cast.companionlibrary.cast.a.a)localIterator.next()).a(paramRouteInfo);
    }
  }
  
  protected abstract void a(ApplicationMetadata paramApplicationMetadata, String paramString, boolean paramBoolean);
  
  public final void a(CastDevice paramCastDevice)
  {
    if (paramCastDevice == null) {
      b(t, true, false);
    }
    for (;;)
    {
      Object localObject = s.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((com.google.android.libraries.cast.companionlibrary.cast.a.a)((Iterator)localObject).next()).a(paramCastDevice);
      }
      f = paramCastDevice;
      g = f.c();
      if (l == null)
      {
        new StringBuilder("acquiring a connection to Google Play services for ").append(f);
        localObject = d();
        l = new b.a(b).a(com.google.android.gms.cast.a.a, ((a.c.a)localObject).b()).a(this).a(this).b();
        l.c();
      }
      else if ((!l.e()) && (!l.f()))
      {
        l.c();
      }
    }
  }
  
  public void a(ConnectionResult paramConnectionResult)
  {
    new StringBuilder("onConnectionFailed() reached, error code: ").append(paramConnectionResult.c()).append(", reason: ").append(paramConnectionResult.toString());
    b(t, false, false);
    o = false;
    if (c != null) {
      c.selectRoute(c.getDefaultRoute());
    }
    Iterator localIterator = s.iterator();
    while (localIterator.hasNext()) {
      ((com.google.android.libraries.cast.companionlibrary.cast.a.a)localIterator.next()).a(paramConnectionResult);
    }
  }
  
  public final void a(com.google.android.libraries.cast.companionlibrary.cast.a.a parama)
  {
    if ((parama != null) && (s.add(parama))) {
      new StringBuilder("Successfully added the new BaseCastConsumer listener ").append(parama);
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    Iterator localIterator = s.iterator();
    while (localIterator.hasNext()) {
      ((com.google.android.libraries.cast.companionlibrary.cast.a.a)localIterator.next()).a(paramBoolean);
    }
  }
  
  protected void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    g = null;
    Iterator localIterator = s.iterator();
    while (localIterator.hasNext()) {
      ((com.google.android.libraries.cast.companionlibrary.cast.a.a)localIterator.next()).e();
    }
  }
  
  public final int b()
  {
    return w;
  }
  
  public final void b(int paramInt)
  {
    w = paramInt;
  }
  
  public final void b(com.google.android.libraries.cast.companionlibrary.cast.a.a parama)
  {
    if ((parama != null) && (s.remove(parama))) {
      new StringBuilder("Successfully removed the existing BaseCastConsumer listener ").append(parama);
    }
  }
  
  protected final void b(boolean paramBoolean)
  {
    if (paramBoolean) {
      if ((c != null) && (e != null)) {
        i();
      }
    }
    for (;;)
    {
      Iterator localIterator = s.iterator();
      while (localIterator.hasNext()) {
        ((com.google.android.libraries.cast.companionlibrary.cast.a.a)localIterator.next()).c(paramBoolean);
      }
      if (c != null)
      {
        c.removeCallback(e);
        e.a();
      }
    }
  }
  
  protected abstract void c(int paramInt);
  
  public final boolean c()
  {
    new StringBuilder("isChromecastAvailable: ").append(w);
    return w > 0;
  }
  
  protected abstract a.c.a d();
  
  protected abstract void d(int paramInt);
  
  protected abstract MediaRouteDialogFactory e();
  
  public final boolean e(int paramInt)
  {
    return (n & paramInt) == paramInt;
  }
  
  protected void f() {}
  
  public final void f(int paramInt)
  {
    if (a != paramInt)
    {
      a = paramInt;
      paramInt = a;
      Iterator localIterator = s.iterator();
      while (localIterator.hasNext()) {
        ((com.google.android.libraries.cast.companionlibrary.cast.a.a)localIterator.next()).e(paramInt);
      }
    }
  }
  
  public final void g()
  {
    try
    {
      j += 1;
      if (!k)
      {
        k = true;
        u.removeMessages(1);
        u.sendEmptyMessageDelayed(0, 300L);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void g(int paramInt)
  {
    a(paramInt, null);
  }
  
  public final void h()
  {
    try
    {
      int i1 = j - 1;
      j = i1;
      if ((i1 == 0) && (k))
      {
        k = false;
        u.removeMessages(0);
        u.sendEmptyMessageDelayed(1, 300L);
      }
      return;
    }
    finally {}
  }
  
  public final void h(int paramInt)
  {
    if (b(paramInt, 4)) {
      h.a("session-id", null);
    }
    if (b(paramInt, 1)) {
      h.a("route-id", null);
    }
    if (b(paramInt, 2)) {
      h.a("ssid", null);
    }
    if (b(paramInt, 8)) {
      h.a("media-end", null);
    }
  }
  
  public final void i()
  {
    c.addCallback(d, e, 4);
  }
  
  public final boolean j()
  {
    return (l != null) && (l.e());
  }
  
  public final boolean k()
  {
    return (l != null) && (l.f());
  }
  
  public final void l()
  {
    if ((j()) || (k())) {
      b(t, true, true);
    }
  }
  
  public final String m()
  {
    return g;
  }
  
  public final MediaRouteSelector n()
  {
    return d;
  }
  
  public final MediaRouter.RouteInfo o()
  {
    return v;
  }
  
  public final void p()
  {
    n = 30;
    q();
  }
  
  protected void q() {}
  
  public final double r()
  {
    x();
    try
    {
      double d1 = com.google.android.gms.cast.a.b.b(l);
      return d1;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      throw new com.google.android.libraries.cast.companionlibrary.cast.b.b("getDeviceVolume()", localIllegalStateException);
    }
  }
  
  public final boolean s()
  {
    x();
    try
    {
      boolean bool = com.google.android.gms.cast.a.b.c(l);
      return bool;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      throw new com.google.android.libraries.cast.companionlibrary.cast.b.b("isDeviceMute()", localIllegalStateException);
    }
  }
  
  public final int t()
  {
    return a;
  }
  
  public final void u()
  {
    if ((m != null) && (!m.isCancelled())) {
      m.cancel(true);
    }
  }
  
  public final void v()
  {
    a(10, null);
  }
  
  public void w()
  {
    Iterator localIterator = s.iterator();
    while (localIterator.hasNext()) {
      ((com.google.android.libraries.cast.companionlibrary.cast.a.a)localIterator.next()).a();
    }
  }
  
  public final void x()
  {
    if (!j())
    {
      if (o) {
        throw new com.google.android.libraries.cast.companionlibrary.cast.b.d();
      }
      throw new com.google.android.libraries.cast.companionlibrary.cast.b.b();
    }
  }
  
  public final com.google.android.libraries.cast.companionlibrary.a.c y()
  {
    return h;
  }
  
  protected final void z()
  {
    if (!e(8)) {
      return;
    }
    Context localContext = b.getApplicationContext();
    Intent localIntent = new Intent(localContext, ReconnectionService.class);
    localIntent.setPackage(localContext.getPackageName());
    localContext.stopService(localIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.cast.companionlibrary.cast.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */