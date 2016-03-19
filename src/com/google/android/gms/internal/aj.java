package com.google.android.gms.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@fs
public final class aj
  extends Thread
{
  private boolean a = false;
  private boolean b = false;
  private boolean c = false;
  private final Object d;
  private final ai e;
  private final ah f;
  private final fr g;
  private final int h;
  private final int i;
  private final int j;
  private final int k;
  private final int l;
  
  public aj(ai paramai, ah paramah, fr paramfr)
  {
    e = paramai;
    f = paramah;
    g = paramfr;
    d = new Object();
    paramai = ax.K;
    i = ((Integer)o.n().a(paramai)).intValue();
    paramai = ax.L;
    j = ((Integer)o.n().a(paramai)).intValue();
    paramai = ax.M;
    k = ((Integer)o.n().a(paramai)).intValue();
    paramai = ax.N;
    l = ((Integer)o.n().a(paramai)).intValue();
    paramai = ax.O;
    h = ((Integer)o.n().a(paramai)).intValue();
    setName("ContentFetchTask");
  }
  
  private a a(View paramView, ag paramag)
  {
    int m = 0;
    if (paramView == null) {
      return new a(0, 0);
    }
    if (((paramView instanceof TextView)) && (!(paramView instanceof EditText)))
    {
      paramView = ((TextView)paramView).getText();
      if (!TextUtils.isEmpty(paramView))
      {
        paramag.b(paramView.toString());
        return new a(1, 0);
      }
      return new a(0, 0);
    }
    if (((paramView instanceof WebView)) && (!(paramView instanceof hs)))
    {
      paramag.e();
      paramView = (WebView)paramView;
      if (!ka.f()) {}
      for (m = 0; m != 0; m = 1)
      {
        return new a(0, 1);
        paramag.e();
        paramView.post(new aj.2(this, paramag, paramView));
      }
      return new a(0, 0);
    }
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      int n = 0;
      int i1 = 0;
      while (m < paramView.getChildCount())
      {
        a locala = a(paramView.getChildAt(m), paramag);
        i1 += a;
        n += b;
        m += 1;
      }
      return new a(i1, n);
    }
    return new a(0, 0);
  }
  
  private boolean e()
  {
    for (;;)
    {
      int m;
      boolean bool;
      try
      {
        Object localObject1 = e.b();
        if (localObject1 == null) {
          return false;
        }
        Object localObject2 = (ActivityManager)((Context)localObject1).getSystemService("activity");
        KeyguardManager localKeyguardManager = (KeyguardManager)((Context)localObject1).getSystemService("keyguard");
        if ((localObject2 != null) && (localKeyguardManager != null))
        {
          localObject2 = ((ActivityManager)localObject2).getRunningAppProcesses();
          if (localObject2 == null) {
            return false;
          }
          localObject2 = ((List)localObject2).iterator();
          if (((Iterator)localObject2).hasNext())
          {
            ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject2).next();
            if (Process.myPid() != pid) {
              continue;
            }
            if (importance != 100) {
              break label169;
            }
            m = 1;
            if ((m != 0) && (!localKeyguardManager.inKeyguardRestrictedInputMode()))
            {
              localObject1 = (PowerManager)((Context)localObject1).getSystemService("power");
              if (localObject1 == null)
              {
                bool = false;
                break label163;
              }
              bool = ((PowerManager)localObject1).isScreenOn();
              break label163;
            }
          }
          return false;
        }
      }
      catch (Throwable localThrowable)
      {
        return false;
      }
      return false;
      label163:
      if (bool)
      {
        return true;
        label169:
        m = 0;
      }
    }
  }
  
  public final void a()
  {
    synchronized (d)
    {
      if (a)
      {
        b.a(3);
        return;
      }
      a = true;
      start();
      return;
    }
  }
  
  final void a(View paramView)
  {
    try
    {
      ag localag = new ag(i, j, k, l);
      paramView = a(paramView, localag);
      localag.f();
      if ((a == 0) && (b == 0)) {
        return;
      }
      if (((b != 0) || (localag.h() != 0)) && ((b != 0) || (!f.a(localag))))
      {
        f.c(localag);
        return;
      }
    }
    catch (Exception paramView)
    {
      b.a("Exception in fetchContentOnUIThread", paramView);
      g.a(paramView, true);
    }
  }
  
  final void a(ag paramag, WebView paramWebView, String paramString)
  {
    paramag.d();
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = new JSONObject(paramString).optString("text");
        if (TextUtils.isEmpty(paramWebView.getTitle())) {
          break label84;
        }
        paramag.a(paramWebView.getTitle() + "\n" + paramString);
      }
      while (paramag.a())
      {
        f.b(paramag);
        return;
        label84:
        paramag.a(paramString);
      }
      return;
    }
    catch (JSONException paramag)
    {
      b.a(3);
      return;
    }
    catch (Throwable paramag)
    {
      b.a(3);
      g.a(paramag, true);
    }
  }
  
  public final ag b()
  {
    return f.a();
  }
  
  public final void c()
  {
    synchronized (d)
    {
      b = false;
      d.notifyAll();
      b.a(3);
      return;
    }
  }
  
  public final boolean d()
  {
    return b;
  }
  
  public final void run()
  {
    while (!c) {
      try
      {
        if (e())
        {
          localActivity = e.a();
          if (localActivity == null) {
            b.a(3);
          }
        }
      }
      catch (Throwable localThrowable)
      {
        Activity localActivity;
        b.a("Error in ContentFetchTask", localThrowable);
        g.a(localThrowable, true);
        synchronized (d)
        {
          for (;;)
          {
            boolean bool = b;
            if (!bool) {
              break;
            }
            try
            {
              b.a(3);
              d.wait();
            }
            catch (InterruptedException localInterruptedException) {}
          }
          if (localActivity != null)
          {
            Object localObject2 = null;
            ??? = localObject2;
            if (localActivity.getWindow() != null)
            {
              ??? = localObject2;
              if (localActivity.getWindow().getDecorView() != null) {
                ??? = localActivity.getWindow().getDecorView().findViewById(16908290);
              }
            }
            if ((??? != null) && (??? != null)) {
              ((View)???).post(new aj.1(this, (View)???));
            }
          }
          for (;;)
          {
            Thread.sleep(h * 1000);
            break;
            b.a(3);
            synchronized (d)
            {
              b = true;
              new StringBuilder("ContentFetchThread: paused, mPause = ").append(b);
              b.a(3);
            }
          }
        }
      }
    }
  }
  
  @fs
  final class a
  {
    final int a;
    final int b;
    
    a(int paramInt1, int paramInt2)
    {
      a = paramInt1;
      b = paramInt2;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */