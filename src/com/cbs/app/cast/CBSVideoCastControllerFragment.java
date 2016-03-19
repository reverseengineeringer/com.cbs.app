package com.cbs.app.cast;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.widget.SeekBar;
import android.widget.Toast;
import com.cbs.app.view.utils.ImageHelper;
import com.google.android.gms.cast.e;
import com.google.android.gms.cast.h;
import java.io.IOException;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

public class CBSVideoCastControllerFragment
  extends Fragment
  implements com.google.android.libraries.cast.companionlibrary.cast.player.c
{
  private static boolean b = false;
  protected boolean a = true;
  private com.google.android.gms.cast.d c;
  private com.google.android.libraries.cast.companionlibrary.cast.c d;
  private com.google.android.libraries.cast.companionlibrary.cast.player.a e;
  private Thread f;
  private Timer g;
  private Handler h;
  private com.google.android.libraries.cast.companionlibrary.cast.player.d i;
  private com.google.android.libraries.cast.companionlibrary.a.a j;
  private Timer k;
  private int l;
  private b m;
  private c n = c.c;
  private e o;
  private boolean p = true;
  
  public static CBSVideoCastControllerFragment a(Bundle paramBundle)
  {
    CBSVideoCastControllerFragment localCBSVideoCastControllerFragment = new CBSVideoCastControllerFragment();
    Bundle localBundle = new Bundle();
    localBundle.putBundle("extras", paramBundle);
    localCBSVideoCastControllerFragment.setArguments(localBundle);
    return localCBSVideoCastControllerFragment;
  }
  
  private void a(final Uri paramUri)
  {
    if (j != null) {
      j.cancel(true);
    }
    if (paramUri == null)
    {
      i.setImage(BitmapFactory.decodeResource(getActivity().getResources(), 2130837600));
      return;
    }
    if ((o != null) && (e.a(o, paramUri)))
    {
      i.setImage(e.a(o));
      return;
    }
    o = null;
    j = new com.google.android.libraries.cast.companionlibrary.a.a(paramUri) {};
    DisplayMetrics localDisplayMetrics = getActivity().getResources().getDisplayMetrics();
    int i1 = (int)(Math.min(widthPixels, heightPixels) * 0.75F);
    if ((c != null) && (c.b() == 2)) {}
    for (paramUri = ImageHelper.b(paramUri.toString(), i1);; paramUri = ImageHelper.a(paramUri.toString(), i1))
    {
      paramUri = Uri.parse(paramUri);
      j.a(paramUri);
      return;
    }
  }
  
  private void e()
  {
    int i2 = 3;
    int i1 = i2;
    if (d.e(16))
    {
      i1 = i2;
      if (c != null)
      {
        i1 = i2;
        if (d.Y().b())
        {
          List localList = c.f();
          if ((localList != null) && (!localList.isEmpty())) {
            break label74;
          }
        }
      }
    }
    label74:
    for (i1 = 2;; i1 = 1)
    {
      i.setClosedCaptionState(i1);
      return;
    }
  }
  
  private void f()
  {
    if (k != null) {
      k.cancel();
    }
  }
  
  private void g()
  {
    f();
    k = new Timer();
    k.scheduleAtFixedRate(new d((byte)0), 100L, 1000L);
  }
  
  private void h()
  {
    Object localObject = null;
    if (c == null) {
      if (e == null) {}
    }
    for (localObject = com.google.android.libraries.cast.companionlibrary.a.d.a(e.a());; localObject = com.google.android.libraries.cast.companionlibrary.a.d.a(c))
    {
      a((Uri)localObject);
      if (c != null) {
        break;
      }
      return;
    }
    localObject = c.d();
    com.google.android.libraries.cast.companionlibrary.cast.player.d locald = i;
    if (((e)localObject).a("com.google.android.gms.cast.metadata.TITLE") != null)
    {
      localObject = ((e)localObject).a("com.google.android.gms.cast.metadata.TITLE");
      locald.setTitle((String)localObject);
      if (c.b() != 2) {
        break label122;
      }
    }
    label122:
    for (boolean bool = true;; bool = false)
    {
      i.c(bool);
      return;
      localObject = "";
      break;
    }
  }
  
  private void i()
  {
    int i1 = d.S();
    if (c == null) {}
    for (;;)
    {
      label15:
      return;
      i.setStreamType(c.b());
      if (i1 == 4) {
        i.setSubTitle(getString(2131230920));
      }
      for (;;)
      {
        switch (i1)
        {
        default: 
          return;
        case 1: 
          switch (d.T())
          {
          default: 
            return;
          case 1: 
            if (p) {
              break label15;
            }
            i.b();
            return;
            i.setSubTitle(getString(2131230894, new Object[] { d.m() }));
          }
          break;
        }
      }
      p = false;
      if (l == 2) {
        continue;
      }
      l = 2;
      i.setPlaybackStatus(l);
      return;
      p = false;
      if (l == 3) {
        continue;
      }
      l = 3;
      i.setPlaybackStatus(l);
      return;
      p = false;
      if (l == 4) {
        continue;
      }
      l = 4;
      i.setPlaybackStatus(l);
      return;
      try
      {
        if ((!d.G()) || (l == 1)) {
          continue;
        }
        l = 1;
        i.setPlaybackStatus(l);
        return;
      }
      catch (com.google.android.libraries.cast.companionlibrary.cast.b.d locald)
      {
        new StringBuilder("Failed to determine if stream is live").append(locald.getLocalizedMessage());
        return;
      }
      catch (com.google.android.libraries.cast.companionlibrary.cast.b.b localb)
      {
        for (;;) {}
      }
    }
  }
  
  public final void a()
  {
    f();
  }
  
  public final void a(SeekBar paramSeekBar)
  {
    try
    {
      if (l == 2)
      {
        l = 4;
        i.setPlaybackStatus(l);
        d.i(paramSeekBar.getProgress());
      }
      for (;;)
      {
        g();
        return;
        if (l == 3) {
          d.j(paramSeekBar.getProgress());
        }
      }
      return;
    }
    catch (Exception paramSeekBar)
    {
      com.google.android.libraries.cast.companionlibrary.a.b.a("VideoCastContrFragment", "Failed to complete seek", paramSeekBar);
      i.b();
    }
  }
  
  public final void a(List<h> paramList)
  {
    long[] arrayOfLong;
    if (paramList.isEmpty()) {
      arrayOfLong = new long[0];
    }
    for (;;)
    {
      d.a(arrayOfLong);
      if (paramList.size() > 0) {
        d.a(d.Y().a());
      }
      return;
      arrayOfLong = new long[paramList.size()];
      int i1 = 0;
      while (i1 < paramList.size())
      {
        arrayOfLong[i1] = ((h)paramList.get(i1)).a();
        i1 += 1;
      }
    }
  }
  
  public final void b()
  {
    new StringBuilder("isConnected returning: ").append(d.j());
    new StringBuilder("togglePlayback PlayBackState : ").append(l);
    switch (l)
    {
    default: 
      new StringBuilder("setting Player Status to : ").append(l);
      i.setPlaybackStatus(l);
      return;
    case 3: 
      d.P();
    }
    for (;;)
    {
      l = 4;
      g();
      break;
      d.Q();
      l = 4;
      break;
      if ((c.b() == 2) && (d.T() == 2)) {
        d.P();
      } else {
        d.a(c);
      }
    }
  }
  
  public final void c()
  {
    switch (3.a[n.ordinal()])
    {
    }
    while (c == null)
    {
      if (e != null) {
        a(com.google.android.libraries.cast.companionlibrary.a.d.a(e.a()));
      }
      return;
      Object localObject = d.D();
      if (localObject != null)
      {
        com.google.android.libraries.cast.companionlibrary.cast.player.d locald = i;
        if (((com.google.android.libraries.cast.companionlibrary.cast.player.a)localObject).b() != null) {}
        for (localObject = ((com.google.android.libraries.cast.companionlibrary.cast.player.a)localObject).b();; localObject = "")
        {
          locald.setSubTitle((String)localObject);
          i.b(true);
          break;
        }
      }
    }
    h();
    i();
    i.d(d.j());
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    m = new b((byte)0);
    paramBundle = getArguments();
    if (paramBundle == null) {}
    final Object localObject1;
    Object localObject2;
    boolean bool1;
    label272:
    do
    {
      do
      {
        return;
        localObject1 = paramBundle.getBundle("extras");
        localObject2 = ((Bundle)localObject1).getBundle("media");
        setRetainInstance(true);
        d.a(this);
        bool1 = d.y().c("ccl-start-cast-activity");
        if (bool1) {
          p = true;
        }
        d.y().a("ccl-start-cast-activity", Boolean.valueOf(false));
        if (!((Bundle)localObject1).getBoolean("hasAuth")) {
          break;
        }
      } while (!p);
      n = c.a;
      e = d.D();
      localObject1 = e;
      i.b(true);
      if (localObject1 != null)
      {
        localObject2 = i;
        if (((com.google.android.libraries.cast.companionlibrary.cast.player.a)localObject1).b() == null) {
          break label272;
        }
      }
      for (paramBundle = ((com.google.android.libraries.cast.companionlibrary.cast.player.a)localObject1).b();; paramBundle = "")
      {
        ((com.google.android.libraries.cast.companionlibrary.cast.player.d)localObject2).setSubTitle(paramBundle);
        f = new Thread(new Runnable()
        {
          public final void run() {}
        });
        f.start();
        g = new Timer();
        g.schedule(new a(f), ((com.google.android.libraries.cast.companionlibrary.cast.player.a)localObject1).d());
        a(com.google.android.libraries.cast.companionlibrary.a.d.a(e.a()));
        return;
      }
    } while (localObject2 == null);
    n = c.b;
    boolean bool2 = ((Bundle)localObject1).getBoolean("shouldStart");
    String str = ((Bundle)localObject1).getString("customData");
    if (!TextUtils.isEmpty(str)) {}
    for (;;)
    {
      try
      {
        paramBundle = new JSONObject(str);
        localObject2 = com.google.android.libraries.cast.companionlibrary.a.d.a((Bundle)localObject2);
        i2 = ((Bundle)localObject1).getInt("startPoint", 0);
        if ((bool2) && (bool1))
        {
          i1 = 1;
          c = ((com.google.android.gms.cast.d)localObject2);
          e();
        }
      }
      catch (JSONException paramBundle)
      {
        int i2;
        Log.e("VideoCastContrFragment", "Failed to unmarshalize custom data string: customData= " + str);
      }
      try
      {
        i.setStreamType(c.b());
        if (i1 == 0) {
          break label465;
        }
        l = 4;
        i.setPlaybackStatus(l);
        d.a(c, true, i2, paramBundle);
      }
      catch (Exception paramBundle)
      {
        for (;;)
        {
          Log.e("VideoCastContrFragment", "Failed to get playback and media information" + paramBundle.getLocalizedMessage());
          Toast.makeText(getActivity(), "Wait a sec, not connected yet. ", 0).show();
          i.b();
          break;
          l = d.S();
        }
      }
      h();
      g();
      return;
      paramBundle = null;
      continue;
      int i1 = 0;
      continue;
      label465:
      if (!d.H()) {
        break;
      }
      l = 2;
      i.setPlaybackStatus(l);
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    b = false;
    i = ((com.google.android.libraries.cast.companionlibrary.cast.player.d)paramActivity);
    h = new Handler();
    d = com.google.android.libraries.cast.companionlibrary.cast.c.B();
  }
  
  public void onDestroy()
  {
    f();
    d.D();
    if (g != null) {
      g.cancel();
    }
    if (f != null) {
      f = null;
    }
    if (d.D() != null) {
      d.E();
    }
    if (d != null) {
      d.b(m);
    }
    if (h != null) {
      h.removeCallbacksAndMessages(null);
    }
    if (o != null) {
      e.a(o, null);
    }
    if ((!b) && (e != null)) {
      com.google.android.libraries.cast.companionlibrary.cast.player.b localb = com.google.android.libraries.cast.companionlibrary.cast.player.b.g;
    }
    d.b(this);
    super.onDestroy();
  }
  
  public void onPause()
  {
    d.b(m);
    d.h();
    p = false;
    super.onPause();
  }
  
  public void onResume()
  {
    int i2 = 0;
    super.onResume();
    try
    {
      if (d == null) {
        d = com.google.android.libraries.cast.companionlibrary.cast.c.B();
      }
      if (m == null) {
        m = new b((byte)0);
      }
      if (((d.I()) || (d.H())) && (d.J() != null) && (c != null) && (c.a().equals(d.J().a()))) {
        p = false;
      }
      if (d.k()) {
        break label175;
      }
      if (!d.j()) {
        break label257;
      }
      i1 = i2;
      if (d.S() == 1)
      {
        i1 = i2;
        if (d.T() != 1) {}
      }
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.d locald)
    {
      Log.e("VideoCastContrFragment", "Failed to get media information or status of media playback" + locald.getLocalizedMessage());
      return;
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.b localb)
    {
      for (;;)
      {
        continue;
        int i1 = 1;
      }
    }
    if ((i1 != 0) && (!p))
    {
      i.b();
      return;
    }
    label175:
    d.a(m);
    d.g();
    if (!p)
    {
      i();
      c = d.J();
      e();
      h();
      return;
    }
    label257:
  }
  
  public void onStop()
  {
    super.onStop();
    if (j != null)
    {
      j.cancel(true);
      j = null;
    }
  }
  
  public static class ErrorDialogFragment
    extends DialogFragment
  {
    private com.google.android.libraries.cast.companionlibrary.cast.player.d a;
    
    public static ErrorDialogFragment a(String paramString)
    {
      ErrorDialogFragment localErrorDialogFragment = new ErrorDialogFragment();
      Bundle localBundle = new Bundle();
      localBundle.putString("message", paramString);
      localErrorDialogFragment.setArguments(localBundle);
      return localErrorDialogFragment;
    }
    
    public void onAttach(Activity paramActivity)
    {
      a = ((com.google.android.libraries.cast.companionlibrary.cast.player.d)paramActivity);
      super.onAttach(paramActivity);
      setCancelable(false);
    }
    
    public Dialog onCreateDialog(Bundle paramBundle)
    {
      paramBundle = getArguments().getString("message");
      new AlertDialog.Builder(getActivity()).setTitle(2131230896).setMessage(paramBundle).setPositiveButton(2131230925, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          CBSVideoCastControllerFragment.d();
          CBSVideoCastControllerFragment.ErrorDialogFragment.a(CBSVideoCastControllerFragment.ErrorDialogFragment.this).b();
        }
      }).create();
    }
  }
  
  final class a
    extends TimerTask
  {
    private final Thread b;
    
    public a(Thread paramThread)
    {
      b = paramThread;
    }
    
    public final void run()
    {
      if (b != null)
      {
        com.google.android.libraries.cast.companionlibrary.a.b.a("Timer is expired, going to interrupt the thread");
        b.interrupt();
        CBSVideoCastControllerFragment.f(CBSVideoCastControllerFragment.this).post(new Runnable()
        {
          public final void run()
          {
            CBSVideoCastControllerFragment.b(CBSVideoCastControllerFragment.this).b(false);
            CBSVideoCastControllerFragment.a(CBSVideoCastControllerFragment.this, getString(2131230897));
            a = false;
            if ((CBSVideoCastControllerFragment.e(CBSVideoCastControllerFragment.this) != null) && (CBSVideoCastControllerFragment.e(CBSVideoCastControllerFragment.this).c() == com.google.android.libraries.cast.companionlibrary.cast.player.b.b))
            {
              CBSVideoCastControllerFragment.e(CBSVideoCastControllerFragment.this);
              com.google.android.libraries.cast.companionlibrary.cast.player.b localb = com.google.android.libraries.cast.companionlibrary.cast.player.b.f;
            }
          }
        });
      }
    }
  }
  
  private final class b
    extends com.google.android.libraries.cast.companionlibrary.cast.a.d
  {
    private b() {}
    
    public final void a()
    {
      CBSVideoCastControllerFragment.b(CBSVideoCastControllerFragment.this).d(true);
    }
    
    public final void a(int paramInt)
    {
      CBSVideoCastControllerFragment.b(CBSVideoCastControllerFragment.this).d(false);
    }
    
    public final void a(int paramInt1, int paramInt2)
    {
      new StringBuilder("onFailed(): ").append(getString(paramInt1)).append(", status code: ").append(paramInt2);
      if ((paramInt2 == 2100) || (paramInt2 == 2102)) {
        ((CBSVideoCastControllerActivity)getActivity()).a(getString(paramInt1));
      }
    }
    
    public final void b()
    {
      CBSVideoCastControllerFragment.j(CBSVideoCastControllerFragment.this);
    }
    
    public final void c()
    {
      try
      {
        CBSVideoCastControllerFragment.a(CBSVideoCastControllerFragment.this, CBSVideoCastControllerFragment.g(CBSVideoCastControllerFragment.this).J());
        CBSVideoCastControllerFragment.h(CBSVideoCastControllerFragment.this);
        CBSVideoCastControllerFragment.i(CBSVideoCastControllerFragment.this);
        return;
      }
      catch (com.google.android.libraries.cast.companionlibrary.cast.b.d locald) {}catch (com.google.android.libraries.cast.companionlibrary.cast.b.b localb) {}
    }
    
    public final void c(int paramInt)
    {
      CBSVideoCastControllerFragment.b(CBSVideoCastControllerFragment.this).b();
    }
    
    public final void e()
    {
      super.e();
      CBSVideoCastControllerFragment.b(CBSVideoCastControllerFragment.this).b();
    }
  }
  
  private static enum c
  {
    private c() {}
  }
  
  private final class d
    extends TimerTask
  {
    private d() {}
    
    public final void run()
    {
      CBSVideoCastControllerFragment.f(CBSVideoCastControllerFragment.this).post(new Runnable()
      {
        /* Error */
        public final void run()
        {
          // Byte code:
          //   0: aload_0
          //   1: getfield 20	com/cbs/app/cast/CBSVideoCastControllerFragment$d$1:a	Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;
          //   4: getfield 32	com/cbs/app/cast/CBSVideoCastControllerFragment$d:a	Lcom/cbs/app/cast/CBSVideoCastControllerFragment;
          //   7: invokestatic 36	com/cbs/app/cast/CBSVideoCastControllerFragment:k	(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)I
          //   10: iconst_4
          //   11: if_icmpeq +19 -> 30
          //   14: aload_0
          //   15: getfield 20	com/cbs/app/cast/CBSVideoCastControllerFragment$d$1:a	Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;
          //   18: getfield 32	com/cbs/app/cast/CBSVideoCastControllerFragment$d:a	Lcom/cbs/app/cast/CBSVideoCastControllerFragment;
          //   21: invokestatic 40	com/cbs/app/cast/CBSVideoCastControllerFragment:g	(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;
          //   24: invokevirtual 46	com/google/android/libraries/cast/companionlibrary/cast/c:j	()Z
          //   27: ifne +4 -> 31
          //   30: return
          //   31: aload_0
          //   32: getfield 20	com/cbs/app/cast/CBSVideoCastControllerFragment$d$1:a	Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;
          //   35: getfield 32	com/cbs/app/cast/CBSVideoCastControllerFragment$d:a	Lcom/cbs/app/cast/CBSVideoCastControllerFragment;
          //   38: invokestatic 40	com/cbs/app/cast/CBSVideoCastControllerFragment:g	(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;
          //   41: invokevirtual 50	com/google/android/libraries/cast/companionlibrary/cast/c:M	()J
          //   44: lstore_3
          //   45: lload_3
          //   46: l2i
          //   47: istore_1
          //   48: iload_1
          //   49: ifle -19 -> 30
          //   52: aload_0
          //   53: getfield 20	com/cbs/app/cast/CBSVideoCastControllerFragment$d$1:a	Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;
          //   56: getfield 32	com/cbs/app/cast/CBSVideoCastControllerFragment$d:a	Lcom/cbs/app/cast/CBSVideoCastControllerFragment;
          //   59: invokestatic 40	com/cbs/app/cast/CBSVideoCastControllerFragment:g	(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;
          //   62: invokevirtual 53	com/google/android/libraries/cast/companionlibrary/cast/c:O	()J
          //   65: l2i
          //   66: istore_2
          //   67: aload_0
          //   68: getfield 20	com/cbs/app/cast/CBSVideoCastControllerFragment$d$1:a	Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;
          //   71: getfield 32	com/cbs/app/cast/CBSVideoCastControllerFragment$d:a	Lcom/cbs/app/cast/CBSVideoCastControllerFragment;
          //   74: invokestatic 57	com/cbs/app/cast/CBSVideoCastControllerFragment:b	(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;
          //   77: iload_2
          //   78: iload_1
          //   79: invokeinterface 62 3 0
          //   84: return
          //   85: astore 5
          //   87: ldc 64
          //   89: ldc 66
          //   91: aload 5
          //   93: invokestatic 71	com/google/android/libraries/cast/companionlibrary/a/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
          //   96: return
          //   97: astore 5
          //   99: ldc 64
          //   101: ldc 73
          //   103: aload 5
          //   105: invokestatic 71	com/google/android/libraries/cast/companionlibrary/a/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
          //   108: return
          //   109: astore 5
          //   111: goto -12 -> 99
          // Local variable table:
          //   start	length	slot	name	signature
          //   0	114	0	this	1
          //   47	32	1	i	int
          //   66	12	2	j	int
          //   44	2	3	l	long
          //   85	7	5	localException	Exception
          //   97	7	5	locald	com.google.android.libraries.cast.companionlibrary.cast.b.d
          //   109	1	5	localb	com.google.android.libraries.cast.companionlibrary.cast.b.b
          // Exception table:
          //   from	to	target	type
          //   52	84	85	java/lang/Exception
          //   31	45	97	com/google/android/libraries/cast/companionlibrary/cast/b/d
          //   52	84	97	com/google/android/libraries/cast/companionlibrary/cast/b/d
          //   87	96	97	com/google/android/libraries/cast/companionlibrary/cast/b/d
          //   31	45	109	com/google/android/libraries/cast/companionlibrary/cast/b/b
          //   52	84	109	com/google/android/libraries/cast/companionlibrary/cast/b/b
          //   87	96	109	com/google/android/libraries/cast/companionlibrary/cast/b/b
        }
      });
    }
  }
  
  private final class e
  {
    private Bitmap b;
    private Uri c;
    
    private e() {}
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSVideoCastControllerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */