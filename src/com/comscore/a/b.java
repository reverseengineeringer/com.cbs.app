package com.comscore.a;

import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.comscore.utils.ConnectivityChangeReceiver;
import com.comscore.utils.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicInteger;

public final class b
{
  protected AtomicInteger A = new AtomicInteger(0);
  protected long B;
  protected long C;
  protected long D;
  protected long E;
  protected long F;
  protected long G;
  protected long H;
  protected long I;
  protected long J;
  protected d K = d.a;
  protected long L;
  protected long M;
  protected long N;
  protected int O;
  protected int P;
  protected int Q;
  protected long R;
  protected long S;
  protected long T;
  protected int U;
  protected long V;
  protected long W;
  protected Runnable X;
  protected String Y;
  String Z;
  com.comscore.utils.i a;
  Context aa;
  protected final HashMap<String, String> ab = new HashMap();
  protected final HashMap<String, String> ac = new HashMap();
  boolean ad = true;
  protected long ae = 0L;
  protected boolean af = false;
  protected Thread.UncaughtExceptionHandler ag = Thread.getDefaultUncaughtExceptionHandler();
  boolean ah;
  com.comscore.utils.m ai;
  com.comscore.utils.m aj;
  String[] ak;
  private com.comscore.utils.a.b al;
  private boolean am = true;
  private boolean an;
  com.comscore.utils.l b;
  com.comscore.b.e c;
  com.comscore.utils.c d;
  @Deprecated
  com.comscore.utils.g e;
  com.comscore.utils.b.a f;
  com.comscore.c.c g;
  ConnectivityChangeReceiver h;
  protected Runnable i;
  protected Runnable j;
  protected long k;
  protected boolean l = true;
  protected boolean m = true;
  boolean n = false;
  AtomicInteger o = new AtomicInteger();
  long p;
  AtomicInteger q = new AtomicInteger(0);
  long r;
  long s;
  String t;
  String u;
  boolean v = true;
  String w;
  protected a x = a.a;
  protected AtomicInteger y = new AtomicInteger(0);
  protected AtomicInteger z = new AtomicInteger(0);
  
  public b()
  {
    a();
  }
  
  private String W()
  {
    String str = aa.getPackageName();
    try
    {
      str = aa.getPackageManager().getPackageInfo(str, 0).versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return "0";
  }
  
  private boolean X()
  {
    boolean bool = false;
    if (!am) {
      return false;
    }
    long l1 = System.currentTimeMillis();
    if (l1 - R > 1800000L)
    {
      I = H;
      H = l1;
      O += 1;
      bool = true;
    }
    R = l1;
    return bool;
  }
  
  private void Y()
  {
    if (!am) {}
    do
    {
      return;
      Z();
    } while (k < 60000L);
    i = new t(this);
    f.a(i, k, true, k);
  }
  
  private void Z()
  {
    if (!am) {}
    while (i == null) {
      return;
    }
    f.b(i);
    i = null;
  }
  
  private String a(String paramString, Properties paramProperties, boolean paramBoolean)
  {
    paramProperties = paramProperties.getProperty(paramString);
    if (paramProperties != null)
    {
      b.a(paramString, paramProperties);
      return paramProperties;
    }
    if ((paramBoolean) && (b.a(paramString).booleanValue())) {
      return b.b(paramString);
    }
    return null;
  }
  
  private void a(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString2);
    a(paramString1, localArrayList);
  }
  
  private void a(String paramString, ArrayList<String> paramArrayList)
  {
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      String str1 = (String)paramArrayList.next();
      String str2 = b.b(paramString);
      String str3 = b.b(str1);
      if ((com.comscore.utils.n.f(str2)) && (com.comscore.utils.n.g(str3))) {
        b.a(str1, str2);
      }
    }
    b.d(paramString);
  }
  
  private void b(String paramString1, String paramString2)
  {
    if (!am) {
      return;
    }
    c(paramString1, paramString2);
  }
  
  private void c(String paramString1, String paramString2)
  {
    if (!am) {
      return;
    }
    ab.put(paramString1, paramString2);
  }
  
  private void d(String paramString)
  {
    if (!am) {
      return;
    }
    int i2 = paramString.indexOf('?');
    if (i2 >= 0)
    {
      localObject = paramString;
      if (i2 < paramString.length() - 1)
      {
        localObject = paramString.substring(i2 + 1).split("&");
        int i3 = localObject.length;
        int i1 = 0;
        if (i1 < i3)
        {
          String[] arrayOfString = localObject[i1].split("=");
          if (arrayOfString.length == 2) {
            b(arrayOfString[0], arrayOfString[1]);
          }
          for (;;)
          {
            i1 += 1;
            break;
            if (arrayOfString.length == 1) {
              b("name", arrayOfString[0]);
            }
          }
        }
      }
    }
    for (Object localObject = paramString.substring(0, i2 + 1);; localObject = paramString + '?')
    {
      Y = ((String)localObject);
      return;
    }
  }
  
  private void e(String paramString)
  {
    if (!am) {}
    while (al == null) {
      return;
    }
    al.a(paramString);
    al.f();
  }
  
  private void f(String paramString)
  {
    if (!am) {}
    do
    {
      return;
      Z = paramString;
    } while (b == null);
    b.a("appName", Z);
  }
  
  private void g(String paramString)
  {
    if (!am) {
      return;
    }
    if (ah) {}
    for (String str = "https://sb.scorecardresearch.com/p2?";; str = "http://b.scorecardresearch.com/p2?")
    {
      d(str);
      c("c2", paramString);
      return;
    }
  }
  
  private void r(boolean paramBoolean)
  {
    if (!am) {
      return;
    }
    long l1 = System.currentTimeMillis();
    long l2 = l1 - J;
    switch (f.a[x.ordinal()])
    {
    }
    for (;;)
    {
      J = l1;
      if (!paramBoolean) {
        break;
      }
      b.a("lastApplicationAccumulationTimestamp", Long.toString(J));
      b.a("foregroundTransitionsCount", Long.toString(A.get()));
      b.a("accumulatedForegroundTime", Long.toString(F));
      b.a("accumulatedBackgroundTime", Long.toString(E));
      b.a("accumulatedInactiveTime", Long.toString(G));
      b.a("totalForegroundTime", Long.toString(B));
      b.a("totalBackgroundTime", Long.toString(C));
      b.a("totalInactiveTime", Long.toString(D));
      return;
      F += l2;
      B = (l2 + B);
      continue;
      E += l2;
      C = (l2 + C);
      continue;
      G += l2;
      D = (l2 + D);
    }
  }
  
  private void s(boolean paramBoolean)
  {
    if (!am) {
      return;
    }
    long l1 = System.currentTimeMillis();
    long l2 = l1 - W;
    switch (f.b[K.ordinal()])
    {
    }
    for (;;)
    {
      W = l1;
      if (!paramBoolean) {
        break;
      }
      b.a("lastSessionAccumulationTimestamp", Long.toString(W));
      b.a("lastApplicationSessionTimestamp", Long.toString(R));
      b.a("lastUserSessionTimestamp", Long.toString(S));
      b.a("lastActiveUserSessionTimestamp", Long.toString(T));
      b.a("accumulatedApplicationSessionTime", Long.toString(L));
      b.a("accumulatedActiveUserSessionTime", Long.toString(N));
      b.a("accumulatedUserSessionTime", Long.toString(M));
      b.a("activeUserSessionCount", Long.toString(Q));
      b.a("userSessionCount", Long.toString(P));
      b.a("lastUserInteractionTimestamp", Long.toString(V));
      b.a("userInteractionCount", Integer.toString(U));
      b.a("previousGenesis", Long.toString(I));
      b.a("genesis", Long.toString(H));
      b.a("applicationSessionCountKey", Integer.toString(O));
      return;
      N += l2;
      T = l1;
      M += l2;
      S = l1;
      L = (l2 + L);
      R = l1;
    }
  }
  
  public final Context A()
  {
    return aa;
  }
  
  public final String B()
  {
    return w;
  }
  
  public final boolean C()
  {
    return ad;
  }
  
  public final String D()
  {
    return Y;
  }
  
  public final String E()
  {
    if (al == null) {
      return null;
    }
    return al.b();
  }
  
  public final String F()
  {
    if (al == null) {
      return null;
    }
    return al.c();
  }
  
  public final com.comscore.utils.a.b G()
  {
    return al;
  }
  
  public final String H()
  {
    if (al == null) {
      return "";
    }
    return al.d();
  }
  
  public final String I()
  {
    Object localObject;
    PackageManager localPackageManager;
    if (((Z == null) || (Z.length() == 0)) && (aa != null))
    {
      localObject = aa.getPackageName();
      localPackageManager = aa.getPackageManager();
    }
    try
    {
      localObject = localPackageManager.getApplicationLabel(localPackageManager.getApplicationInfo((String)localObject, 0));
      if (localObject != null) {
        a(localObject.toString(), false);
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        Z = b.b("appName");
      }
    }
    return Z;
  }
  
  public final long J()
  {
    return H;
  }
  
  public final long K()
  {
    return I;
  }
  
  public final HashMap<String, String> L()
  {
    return ab;
  }
  
  public final String M()
  {
    return (String)ab.get("c2");
  }
  
  public final com.comscore.utils.m N()
  {
    return ai;
  }
  
  public final com.comscore.utils.m O()
  {
    return aj;
  }
  
  public final boolean P()
  {
    return ah;
  }
  
  public final long Q()
  {
    return ae;
  }
  
  public final String[] R()
  {
    return ak;
  }
  
  public final void S()
  {
    q(true);
  }
  
  final boolean T()
  {
    return (aa == null) || (al.e()) || (Y == null) || (Y.length() == 0);
  }
  
  public final boolean U()
  {
    return am;
  }
  
  public final void V()
  {
    f.a(new e(this, false), true);
  }
  
  public final int a(boolean paramBoolean)
  {
    int i1 = A.get();
    if ((paramBoolean) && (am))
    {
      A.set(0);
      b.a("foregroundTransitionsCount", Long.toString(A.get()));
    }
    return i1;
  }
  
  public final void a()
  {
    ai = com.comscore.utils.m.a;
    aj = com.comscore.utils.m.a;
    ah = false;
    ak = com.comscore.utils.e.c;
    x = a.a;
    K = d.a;
    n = false;
    o.set(0);
    p = -1L;
    q.set(0);
    s = -1L;
    r = -1L;
    t = null;
    u = null;
    y.set(0);
    z.set(0);
    B = 0L;
    C = 0L;
    D = 0L;
    E = 0L;
    F = 0L;
    G = 0L;
    L = 0L;
    N = 0L;
    M = 0L;
    H = -1L;
    I = 0L;
    Q = -1;
    P = -1;
    U = 0;
    V = -1L;
    J = -1L;
    W = -1L;
    R = -1L;
    S = -1L;
    T = -1L;
    r = -1L;
    s = -1L;
    if (am)
    {
      Z();
      l = true;
      k = -1L;
    }
    if (j != null)
    {
      f.b(j);
      j = null;
    }
    if (X != null)
    {
      f.b(X);
      X = null;
    }
    if (c != null) {
      c.c();
    }
    if (d != null) {
      d.c();
    }
    if (f != null) {
      f.c();
    }
    if (b != null) {
      b.c();
    }
  }
  
  public final void a(int paramInt, boolean paramBoolean)
  {
    if (!am) {}
    while (f == null) {
      return;
    }
    f.a(new s(this, 60, true), true);
  }
  
  protected final void a(a parama)
  {
    if (!am) {}
    while ((parama == a.a) || (!v) || (n)) {
      return;
    }
    a(com.comscore.b.d.a, ac, false);
  }
  
  protected final void a(d paramd)
  {
    if (!am) {}
    long l1;
    do
    {
      return;
      com.comscore.utils.b.a(this, "Leaving session state: " + paramd);
      l1 = System.currentTimeMillis();
      switch (f.b[paramd.ordinal()])
      {
      default: 
        return;
      case 1: 
        if (X != null)
        {
          f.b(X);
          X = null;
        }
        T = l1;
      case 2: 
        S = l1;
      case 3: 
        R = l1;
        return;
      }
    } while (X());
    long l2 = L;
    L = (l1 - W + l2);
  }
  
  final void a(com.comscore.b.d paramd, HashMap<String, String> paramHashMap)
  {
    if (!am) {}
    do
    {
      do
      {
        return;
      } while (T());
      if ((!n) && (paramd != com.comscore.b.d.a)) {
        g.a(com.comscore.b.c.a(this, com.comscore.b.d.a, new HashMap(), Y));
      }
    } while (paramd == com.comscore.b.d.c);
    g.a(com.comscore.b.c.a(this, paramd, com.comscore.utils.n.a(paramHashMap), Y));
  }
  
  public final void a(com.comscore.b.d paramd, HashMap<String, String> paramHashMap, boolean paramBoolean)
  {
    if (!am) {}
    do
    {
      return;
      if (!paramBoolean)
      {
        a(paramd, paramHashMap);
        return;
      }
    } while (f == null);
    f.a(new u(this, paramd, paramHashMap), paramBoolean);
  }
  
  public final void a(com.comscore.utils.m paramm)
  {
    if (!am) {}
    while ((paramm == null) || (f == null) || (aj == paramm)) {
      return;
    }
    f.a(new o(this, paramm), true);
  }
  
  public final void a(String paramString)
  {
    w = paramString;
  }
  
  public final void a(String paramString, boolean paramBoolean)
  {
    if (!am) {}
    do
    {
      return;
      if (!paramBoolean)
      {
        f(paramString);
        return;
      }
    } while (f == null);
    f.a(new m(this, paramString), paramBoolean);
  }
  
  public final long b(boolean paramBoolean)
  {
    long l1 = B;
    if ((paramBoolean) && (am))
    {
      B = 0L;
      b.a("totalForegroundTime", Long.toString(B));
    }
    return l1;
  }
  
  protected final void b()
  {
    b = new com.comscore.utils.l(aa);
    g = new com.comscore.c.c(this);
    Object localObject = new ArrayList();
    ((ArrayList)localObject).add("lastApplicationAccumulationTimestamp");
    ((ArrayList)localObject).add("lastSessionAccumulationTimestamp");
    a("lastActivityTime", (ArrayList)localObject);
    a("ns_ap_fg", "foregroundTransitionsCount");
    a("installTime", "installId");
    a("ns_ap_ver", "previousVersion");
    g.a();
    e = new com.comscore.utils.g(this);
    c = new com.comscore.b.e(this);
    a = new com.comscore.utils.i(this);
    d = new com.comscore.utils.c(this);
    h = new ConnectivityChangeReceiver(this);
    J = com.comscore.utils.n.a(b.b("lastApplicationAccumulationTimestamp"), -1L);
    W = com.comscore.utils.n.a(b.b("lastSessionAccumulationTimestamp"), -1L);
    R = com.comscore.utils.n.a(b.b("lastApplicationSessionTimestamp"), -1L);
    S = com.comscore.utils.n.a(b.b("lastUserSessionTimestamp"), -1L);
    T = com.comscore.utils.n.a(b.b("lastActiveUserSessionTimestamp"), -1L);
    A.set(com.comscore.utils.n.d(b.b("foregroundTransitionsCount")));
    F = com.comscore.utils.n.c(b.b("accumulatedForegroundTime"));
    E = com.comscore.utils.n.c(b.b("accumulatedBackgroundTime"));
    G = com.comscore.utils.n.c(b.b("accumulatedInactiveTime"));
    B = com.comscore.utils.n.c(b.b("totalForegroundTime"));
    C = com.comscore.utils.n.c(b.b("totalBackgroundTime"));
    D = com.comscore.utils.n.c(b.b("totalInactiveTime"));
    L = com.comscore.utils.n.c(b.b("accumulatedApplicationSessionTime"));
    N = com.comscore.utils.n.c(b.b("accumulatedActiveUserSessionTime"));
    M = com.comscore.utils.n.c(b.b("accumulatedUserSessionTime"));
    Q = com.comscore.utils.n.a(b.b("activeUserSessionCount"), -1);
    P = com.comscore.utils.n.a(b.b("userSessionCount"), -1);
    V = com.comscore.utils.n.a(b.b("lastUserInteractionTimestamp"), -1L);
    U = com.comscore.utils.n.a(b.b("userInteractionCount"), 0);
    O = com.comscore.utils.n.a(b.b("applicationSessionCountKey"), 0);
    t = W();
    I = com.comscore.utils.n.a(b.b("previousGenesis"), 0L);
    H = com.comscore.utils.n.a(b.b("genesis"), -1L);
    if (H < 0L)
    {
      H = System.currentTimeMillis();
      I = 0L;
      R = H;
      O += 1;
    }
    for (;;)
    {
      s = com.comscore.utils.n.a(b.b("firstInstallId"), -1L);
      if (s >= 0L) {
        break;
      }
      s = H;
      r = H;
      b.a("currentVersion", t);
      b.a("firstInstallId", String.valueOf(s));
      b.a("installId", String.valueOf(r));
      b.a("genesis", Long.toString(H));
      b.a("previousGenesis", Long.toString(I));
      long l1 = System.currentTimeMillis();
      if (J >= 0L)
      {
        long l2 = l1 - J;
        G += l2;
        b.a("accumulatedInactiveTime", Long.toString(G));
        D = (l2 + D);
        b.a("totalInactiveTime", Long.toString(D));
      }
      J = l1;
      W = l1;
      b.a("lastApplicationAccumulationTimestamp", Long.toString(J));
      b.a("lastSessionAccumulationTimestamp", Long.toString(W));
      b.a("lastApplicationSessionTimestamp", Long.toString(R));
      if (!b.a("runs").booleanValue()) {
        b.a("runs", "0");
      }
      o.set(com.comscore.utils.n.d(b.b("runs")));
      q.set(com.comscore.utils.n.d(b.b("coldStartCount")));
      al = new com.comscore.utils.a.b(aa, b, this);
      return;
      if (!X())
      {
        L += System.currentTimeMillis() - W;
        b.a("accumulatedApplicationSessionTime", Long.toString(L));
      }
      R = H;
    }
    if (b.a("previousVersion").booleanValue()) {
      u = b.b("previousVersion");
    }
    localObject = b.b("currentVersion");
    if (!((String)localObject).equals(t))
    {
      u = ((String)localObject);
      b.a("previousVersion", u);
      r = H;
      b.a("installId", String.valueOf(r));
    }
    for (;;)
    {
      b.a("currentVersion", t);
      break;
      r = com.comscore.utils.n.a(b.b("installId"), -1L);
    }
  }
  
  final void b(int paramInt, boolean paramBoolean)
  {
    if (!am) {}
    do
    {
      return;
      Z();
      int i1 = paramInt;
      if (paramInt < 60) {
        i1 = 60;
      }
      l = paramBoolean;
      k = (i1 * 1000);
      if (x == a.c)
      {
        Y();
        return;
      }
    } while ((x != a.b) || (l));
    Y();
  }
  
  protected final void b(a parama)
  {
    com.comscore.utils.b.a(this, "Leaving application state: " + parama);
    switch (f.a[parama.ordinal()])
    {
    default: 
      return;
    case 1: 
      h.a();
      c.a(3000);
      aa.registerReceiver(h, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
      d.a();
      return;
    case 2: 
      Z();
      return;
    }
    w = null;
    Z();
  }
  
  protected final void b(d paramd)
  {
    if (!am) {
      return;
    }
    com.comscore.utils.b.a(this, "Entering session state: " + paramd);
    long l1;
    switch (f.b[paramd.ordinal()])
    {
    default: 
      return;
    case 1: 
      if (am)
      {
        l1 = System.currentTimeMillis();
        if (l1 - T >= 300000L) {
          Q += 1;
        }
        T = l1;
      }
      if (am)
      {
        if (X != null)
        {
          f.b(X);
          X = null;
        }
        X = new c(this);
        f.a(X, 300000L);
      }
    case 2: 
      if (am)
      {
        l1 = System.currentTimeMillis();
        if (l1 - S >= 300000L) {
          P += 1;
        }
        S = l1;
      }
      break;
    }
    X();
  }
  
  public final void b(String paramString)
  {
    if (!am) {}
    while ((paramString == null) || (paramString.length() == 0) || (f == null)) {
      return;
    }
    f.a(new l(this, paramString), true);
  }
  
  public final long c(boolean paramBoolean)
  {
    long l1 = F;
    if ((paramBoolean) && (am))
    {
      F = 0L;
      b.a("accumulatedForegroundTime", Long.toString(F));
    }
    return l1;
  }
  
  public final void c()
  {
    if (!am) {
      return;
    }
    o.getAndIncrement();
    b.a("runs", Long.toString(o.get()));
  }
  
  protected final void c(a parama)
  {
    if (!am) {}
    for (;;)
    {
      return;
      com.comscore.utils.b.a(this, "Entering application state: " + parama);
      switch (f.a[parama.ordinal()])
      {
      default: 
        return;
      case 1: 
        h.b();
        c.b();
        d.c();
      }
      try
      {
        aa.unregisterReceiver(h);
        Z();
        return;
        if (l) {
          continue;
        }
        Y();
        return;
        Y();
        A.getAndIncrement();
        return;
      }
      catch (IllegalArgumentException parama)
      {
        for (;;) {}
      }
    }
  }
  
  public final void c(String paramString)
  {
    if (!am) {}
    while ((paramString == null) || (paramString.length() == 0) || (f == null)) {
      return;
    }
    f.a(new n(this, paramString), true);
  }
  
  public final long d(boolean paramBoolean)
  {
    long l1 = C;
    if ((paramBoolean) && (am))
    {
      C = 0L;
      b.a("totalBackgroundTime", Long.toString(C));
    }
    return l1;
  }
  
  public final boolean d()
  {
    if (!am) {}
    while (n) {
      return false;
    }
    n = true;
    q.getAndIncrement();
    b.a("coldStartCount", String.valueOf(q));
    p = System.currentTimeMillis();
    return true;
  }
  
  public final long e(boolean paramBoolean)
  {
    long l1 = E;
    if ((paramBoolean) && (am))
    {
      E = 0L;
      b.a("accumulatedBackgroundTime", Long.toString(E));
    }
    return l1;
  }
  
  /* Error */
  protected final void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 162	com/comscore/a/b:aa	Landroid/content/Context;
    //   4: ifnull +569 -> 573
    //   7: aload_0
    //   8: getfield 162	com/comscore/a/b:aa	Landroid/content/Context;
    //   11: invokevirtual 753	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   14: invokevirtual 759	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   17: astore 5
    //   19: aload 5
    //   21: ldc_w 761
    //   24: invokevirtual 767	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   27: astore 6
    //   29: new 227	java/util/Properties
    //   32: dup
    //   33: invokespecial 768	java/util/Properties:<init>	()V
    //   36: astore 5
    //   38: aload 5
    //   40: aload 6
    //   42: invokevirtual 772	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   45: aload_0
    //   46: ldc_w 774
    //   49: aload 5
    //   51: iconst_0
    //   52: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   55: invokestatic 778	com/comscore/utils/n:e	(Ljava/lang/String;)Z
    //   58: putstatic 780	com/comscore/utils/e:a	Z
    //   61: aload_0
    //   62: aload_0
    //   63: ldc_w 782
    //   66: aload 5
    //   68: iconst_0
    //   69: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   72: invokestatic 778	com/comscore/utils/n:e	(Ljava/lang/String;)Z
    //   75: putfield 361	com/comscore/a/b:ah	Z
    //   78: aload_0
    //   79: ldc_w 784
    //   82: aload 5
    //   84: iconst_1
    //   85: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   88: astore 6
    //   90: aload 6
    //   92: ifnull +9 -> 101
    //   95: aload_0
    //   96: aload 6
    //   98: invokespecial 255	com/comscore/a/b:e	(Ljava/lang/String;)V
    //   101: aload_0
    //   102: ldc_w 786
    //   105: aload 5
    //   107: iconst_1
    //   108: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   111: astore 6
    //   113: aload 6
    //   115: ifnull +9 -> 124
    //   118: aload_0
    //   119: aload 6
    //   121: invokespecial 295	com/comscore/a/b:f	(Ljava/lang/String;)V
    //   124: aload_0
    //   125: ldc_w 788
    //   128: aload 5
    //   130: iconst_0
    //   131: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   134: astore 6
    //   136: aload 6
    //   138: ifnull +9 -> 147
    //   141: aload_0
    //   142: aload 6
    //   144: invokespecial 301	com/comscore/a/b:g	(Ljava/lang/String;)V
    //   147: aload_0
    //   148: ldc_w 790
    //   151: aload 5
    //   153: iconst_0
    //   154: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   157: astore 6
    //   159: aload 6
    //   161: ifnull +9 -> 170
    //   164: aload_0
    //   165: aload 6
    //   167: invokespecial 364	com/comscore/a/b:d	(Ljava/lang/String;)V
    //   170: aload_0
    //   171: ldc_w 792
    //   174: aload 5
    //   176: iconst_0
    //   177: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   180: astore 6
    //   182: aload 6
    //   184: ifnull +12 -> 196
    //   187: aload_0
    //   188: getfield 656	com/comscore/a/b:a	Lcom/comscore/utils/i;
    //   191: aload 6
    //   193: invokevirtual 794	com/comscore/utils/i:b	(Ljava/lang/String;)V
    //   196: aload_0
    //   197: ldc_w 796
    //   200: aload 5
    //   202: iconst_0
    //   203: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   206: astore 6
    //   208: aload 6
    //   210: ifnull +18 -> 228
    //   213: aload_0
    //   214: aload 6
    //   216: invokestatic 802	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   219: invokevirtual 806	java/lang/String:toUpperCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   222: invokestatic 809	com/comscore/utils/m:valueOf	(Ljava/lang/String;)Lcom/comscore/utils/m;
    //   225: putfield 502	com/comscore/a/b:ai	Lcom/comscore/utils/m;
    //   228: aload_0
    //   229: ldc_w 811
    //   232: aload 5
    //   234: iconst_0
    //   235: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   238: astore 6
    //   240: aload 6
    //   242: ifnull +18 -> 260
    //   245: aload_0
    //   246: aload 6
    //   248: invokestatic 802	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   251: invokevirtual 806	java/lang/String:toUpperCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   254: invokestatic 809	com/comscore/utils/m:valueOf	(Ljava/lang/String;)Lcom/comscore/utils/m;
    //   257: putfield 251	com/comscore/a/b:aj	Lcom/comscore/utils/m;
    //   260: aload_0
    //   261: aload_0
    //   262: ldc_w 813
    //   265: aload 5
    //   267: iconst_0
    //   268: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   271: iconst_1
    //   272: invokestatic 816	com/comscore/utils/n:a	(Ljava/lang/String;Z)Z
    //   275: putfield 147	com/comscore/a/b:ad	Z
    //   278: aload_0
    //   279: ldc_w 818
    //   282: aload 5
    //   284: iconst_0
    //   285: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   288: iconst_m1
    //   289: invokestatic 674	com/comscore/utils/n:a	(Ljava/lang/String;I)I
    //   292: istore_1
    //   293: iload_1
    //   294: iflt +11 -> 305
    //   297: aload_0
    //   298: getfield 656	com/comscore/a/b:a	Lcom/comscore/utils/i;
    //   301: iload_1
    //   302: invokevirtual 819	com/comscore/utils/i:a	(I)V
    //   305: aload_0
    //   306: ldc_w 821
    //   309: aload 5
    //   311: iconst_0
    //   312: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   315: iconst_m1
    //   316: invokestatic 674	com/comscore/utils/n:a	(Ljava/lang/String;I)I
    //   319: istore_1
    //   320: iload_1
    //   321: iflt +11 -> 332
    //   324: aload_0
    //   325: getfield 656	com/comscore/a/b:a	Lcom/comscore/utils/i;
    //   328: iload_1
    //   329: invokevirtual 823	com/comscore/utils/i:b	(I)V
    //   332: aload_0
    //   333: ldc_w 825
    //   336: aload 5
    //   338: iconst_0
    //   339: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   342: iconst_m1
    //   343: invokestatic 674	com/comscore/utils/n:a	(Ljava/lang/String;I)I
    //   346: istore_1
    //   347: iload_1
    //   348: iflt +11 -> 359
    //   351: aload_0
    //   352: getfield 656	com/comscore/a/b:a	Lcom/comscore/utils/i;
    //   355: iload_1
    //   356: invokevirtual 827	com/comscore/utils/i:c	(I)V
    //   359: aload_0
    //   360: ldc_w 829
    //   363: aload 5
    //   365: iconst_0
    //   366: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   369: iconst_m1
    //   370: invokestatic 674	com/comscore/utils/n:a	(Ljava/lang/String;I)I
    //   373: istore_1
    //   374: iload_1
    //   375: iflt +11 -> 386
    //   378: aload_0
    //   379: getfield 656	com/comscore/a/b:a	Lcom/comscore/utils/i;
    //   382: iload_1
    //   383: invokevirtual 831	com/comscore/utils/i:d	(I)V
    //   386: aload_0
    //   387: ldc_w 833
    //   390: aload 5
    //   392: iconst_0
    //   393: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   396: iconst_m1
    //   397: invokestatic 674	com/comscore/utils/n:a	(Ljava/lang/String;I)I
    //   400: istore_1
    //   401: iload_1
    //   402: iflt +11 -> 413
    //   405: aload_0
    //   406: getfield 656	com/comscore/a/b:a	Lcom/comscore/utils/i;
    //   409: iload_1
    //   410: invokevirtual 835	com/comscore/utils/i:e	(I)V
    //   413: aload_0
    //   414: ldc_w 837
    //   417: aload 5
    //   419: iconst_0
    //   420: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   423: ldc2_w 530
    //   426: invokestatic 665	com/comscore/utils/n:a	(Ljava/lang/String;J)J
    //   429: lstore_2
    //   430: lload_2
    //   431: lconst_0
    //   432: lcmp
    //   433: iflt +22 -> 455
    //   436: aload_0
    //   437: lload_2
    //   438: putfield 117	com/comscore/a/b:ae	J
    //   441: aload_0
    //   442: getfield 553	com/comscore/a/b:d	Lcom/comscore/utils/c;
    //   445: ifnull +10 -> 455
    //   448: aload_0
    //   449: getfield 553	com/comscore/a/b:d	Lcom/comscore/utils/c;
    //   452: invokevirtual 838	com/comscore/utils/c:b	()V
    //   455: aload_0
    //   456: aload_0
    //   457: ldc_w 840
    //   460: aload 5
    //   462: iconst_0
    //   463: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   466: invokestatic 778	com/comscore/utils/n:e	(Ljava/lang/String;)Z
    //   469: invokevirtual 842	com/comscore/a/b:o	(Z)V
    //   472: aload_0
    //   473: aload_0
    //   474: ldc_w 844
    //   477: aload 5
    //   479: iconst_0
    //   480: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   483: iconst_1
    //   484: invokestatic 816	com/comscore/utils/n:a	(Ljava/lang/String;Z)Z
    //   487: putfield 103	com/comscore/a/b:v	Z
    //   490: aload_0
    //   491: ldc_w 846
    //   494: aload 5
    //   496: iconst_0
    //   497: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   500: iconst_1
    //   501: invokestatic 816	com/comscore/utils/n:a	(Ljava/lang/String;Z)Z
    //   504: istore 4
    //   506: aload_0
    //   507: ldc_w 848
    //   510: aload 5
    //   512: iconst_0
    //   513: invokespecial 776	com/comscore/a/b:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   516: iconst_m1
    //   517: invokestatic 674	com/comscore/utils/n:a	(Ljava/lang/String;I)I
    //   520: istore_1
    //   521: iload_1
    //   522: bipush 60
    //   524: if_icmplt +49 -> 573
    //   527: aload_0
    //   528: iload_1
    //   529: iload 4
    //   531: invokevirtual 850	com/comscore/a/b:b	(IZ)V
    //   534: return
    //   535: astore 6
    //   537: aload_0
    //   538: getstatic 525	com/comscore/utils/m:a	Lcom/comscore/utils/m;
    //   541: putfield 502	com/comscore/a/b:ai	Lcom/comscore/utils/m;
    //   544: goto -316 -> 228
    //   547: astore 5
    //   549: getstatic 780	com/comscore/utils/e:a	Z
    //   552: ifeq +21 -> 573
    //   555: aload 5
    //   557: invokestatic 853	com/comscore/utils/b:a	(Ljava/lang/Exception;)V
    //   560: return
    //   561: astore 6
    //   563: aload_0
    //   564: getstatic 525	com/comscore/utils/m:a	Lcom/comscore/utils/m;
    //   567: putfield 251	com/comscore/a/b:aj	Lcom/comscore/utils/m;
    //   570: goto -310 -> 260
    //   573: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	574	0	this	b
    //   292	237	1	i1	int
    //   429	9	2	l1	long
    //   504	26	4	bool	boolean
    //   17	494	5	localObject1	Object
    //   547	9	5	localIOException	java.io.IOException
    //   27	220	6	localObject2	Object
    //   535	1	6	localIllegalArgumentException1	IllegalArgumentException
    //   561	1	6	localIllegalArgumentException2	IllegalArgumentException
    // Exception table:
    //   from	to	target	type
    //   213	228	535	java/lang/IllegalArgumentException
    //   19	90	547	java/io/IOException
    //   95	101	547	java/io/IOException
    //   101	113	547	java/io/IOException
    //   118	124	547	java/io/IOException
    //   124	136	547	java/io/IOException
    //   141	147	547	java/io/IOException
    //   147	159	547	java/io/IOException
    //   164	170	547	java/io/IOException
    //   170	182	547	java/io/IOException
    //   187	196	547	java/io/IOException
    //   196	208	547	java/io/IOException
    //   213	228	547	java/io/IOException
    //   228	240	547	java/io/IOException
    //   245	260	547	java/io/IOException
    //   260	293	547	java/io/IOException
    //   297	305	547	java/io/IOException
    //   305	320	547	java/io/IOException
    //   324	332	547	java/io/IOException
    //   332	347	547	java/io/IOException
    //   351	359	547	java/io/IOException
    //   359	374	547	java/io/IOException
    //   378	386	547	java/io/IOException
    //   386	401	547	java/io/IOException
    //   405	413	547	java/io/IOException
    //   413	430	547	java/io/IOException
    //   436	455	547	java/io/IOException
    //   455	521	547	java/io/IOException
    //   527	534	547	java/io/IOException
    //   537	544	547	java/io/IOException
    //   563	570	547	java/io/IOException
    //   245	260	561	java/lang/IllegalArgumentException
  }
  
  public final long f(boolean paramBoolean)
  {
    long l1 = D;
    if ((paramBoolean) && (am))
    {
      D = 0L;
      b.a("totalInactiveTime", Long.toString(D));
    }
    return l1;
  }
  
  public final com.comscore.utils.i f()
  {
    return a;
  }
  
  public final long g(boolean paramBoolean)
  {
    long l1 = G;
    if ((paramBoolean) && (am))
    {
      G = 0L;
      b.a("accumulatedInactiveTime", Long.toString(G));
    }
    return l1;
  }
  
  public final com.comscore.utils.l g()
  {
    return b;
  }
  
  public final long h(boolean paramBoolean)
  {
    long l1 = L;
    if ((paramBoolean) && (am))
    {
      L = 0L;
      b.a("accumulatedApplicationSessionTime", Long.toString(L));
    }
    return l1;
  }
  
  public final com.comscore.utils.b.a h()
  {
    return f;
  }
  
  public final long i(boolean paramBoolean)
  {
    long l1 = N;
    if ((paramBoolean) && (am))
    {
      N = 0L;
      b.a("accumulatedActiveUserSessionTime", Long.toString(N));
    }
    return l1;
  }
  
  public final com.comscore.c.c i()
  {
    return g;
  }
  
  public final long j(boolean paramBoolean)
  {
    long l1 = M;
    if ((paramBoolean) && (am))
    {
      M = 0L;
      b.a("accumulatedUserSessionTime", Long.toString(M));
    }
    return l1;
  }
  
  public final com.comscore.b.e j()
  {
    return c;
  }
  
  public final int k(boolean paramBoolean)
  {
    int i1 = O;
    if ((paramBoolean) && (am))
    {
      O = 0;
      b.a("applicationSessionCountKey", Integer.toString(O));
    }
    return i1;
  }
  
  public final void k()
  {
    if (!am) {}
    while (f == null) {
      return;
    }
    f.a(new p(this), true);
  }
  
  public final int l(boolean paramBoolean)
  {
    int i1 = -1;
    if (Q >= 0)
    {
      int i2 = Q;
      i1 = i2;
      if (paramBoolean)
      {
        i1 = i2;
        if (am)
        {
          Q = 0;
          b.a("activeUserSessionCount", Integer.toString(Q));
          i1 = i2;
        }
      }
    }
    return i1;
  }
  
  public final void l()
  {
    if (!am) {}
    while (f == null) {
      return;
    }
    f.a(new r(this), true);
  }
  
  public final int m(boolean paramBoolean)
  {
    int i1 = -1;
    if (P >= 0)
    {
      int i2 = P;
      i1 = i2;
      if (paramBoolean)
      {
        i1 = i2;
        if (am)
        {
          P = 0;
          b.a("userSessionCount", Integer.toString(P));
          i1 = i2;
        }
      }
    }
    return i1;
  }
  
  public final void m()
  {
    if (!am) {}
    while (f == null) {
      return;
    }
    f.a(new g(this), true);
  }
  
  public final int n(boolean paramBoolean)
  {
    int i1 = U;
    if ((paramBoolean) && (am))
    {
      U = 0;
      b.a("userInteractionCount", Integer.toString(U));
    }
    return i1;
  }
  
  public final void n()
  {
    if (!am) {}
    while (f == null) {
      return;
    }
    f.a(new h(this), true);
  }
  
  protected final void o()
  {
    if (!am) {
      return;
    }
    if (f.a(j))
    {
      f.b(j);
      j = null;
    }
    long l1 = System.currentTimeMillis();
    a locala1;
    label57:
    d locald1;
    if (y.get() > 0)
    {
      locala1 = a.c;
      if (l1 - V >= 300000L) {
        break label175;
      }
      locald1 = d.d;
    }
    for (;;)
    {
      a locala2 = x;
      d locald2 = K;
      if ((locala1 == locala2) && (locald1 == locald2)) {
        break;
      }
      j = new i(this, locala2, locala1, locald2, locald1);
      if ((!m) || (locala1 == a.c)) {
        break label216;
      }
      f.a(j, 300L);
      return;
      if (z.get() > 0)
      {
        locala1 = a.b;
        break label57;
      }
      locala1 = a.a;
      break label57;
      label175:
      if (z.get() > 0) {
        locald1 = d.c;
      } else if (y.get() > 0) {
        locald1 = d.b;
      } else {
        locald1 = d.a;
      }
    }
    label216:
    j.run();
    j = null;
  }
  
  public final void o(boolean paramBoolean)
  {
    if (!am) {}
    do
    {
      return;
      af = paramBoolean;
      if (paramBoolean)
      {
        Thread.setDefaultUncaughtExceptionHandler(new f(this));
        return;
      }
    } while (Thread.getDefaultUncaughtExceptionHandler() == ag);
    Thread.setDefaultUncaughtExceptionHandler(ag);
  }
  
  protected final void p()
  {
    r(true);
  }
  
  public final void p(boolean paramBoolean)
  {
    if (!am) {}
    while (f == null) {
      return;
    }
    f.a(new q(this), false);
  }
  
  protected final void q()
  {
    s(true);
  }
  
  public final void q(boolean paramBoolean)
  {
    if (!am) {
      return;
    }
    if (f.a(j))
    {
      f.b(j);
      j.run();
      j = null;
    }
    r(paramBoolean);
    s(paramBoolean);
  }
  
  public final a r()
  {
    return x;
  }
  
  public final int s()
  {
    return o.get();
  }
  
  public final long t()
  {
    return r;
  }
  
  public final long u()
  {
    return s;
  }
  
  public final long v()
  {
    return p;
  }
  
  public final int w()
  {
    return q.get();
  }
  
  public final String x()
  {
    return t;
  }
  
  public final String y()
  {
    String str = u;
    if ((u != null) && (u.length() > 0))
    {
      b.d("previousVersion");
      u = null;
    }
    return str;
  }
  
  public final long z()
  {
    return k;
  }
}

/* Location:
 * Qualified Name:     com.comscore.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */