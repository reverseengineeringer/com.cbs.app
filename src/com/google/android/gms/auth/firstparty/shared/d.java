package com.google.android.gms.auth.firstparty.shared;

public enum d
{
  private final String X;
  
  private d(String paramString)
  {
    X = paramString;
  }
  
  public static final d a(String paramString)
  {
    Object localObject = null;
    d[] arrayOfd = values();
    int i2 = arrayOfd.length;
    int i1 = 0;
    if (i1 < i2)
    {
      d locald = arrayOfd[i1];
      if (!X.equals(paramString)) {
        break label48;
      }
      localObject = locald;
    }
    label48:
    for (;;)
    {
      i1 += 1;
      break;
      return (d)localObject;
    }
  }
  
  public static boolean a(d paramd)
  {
    boolean bool = false;
    if ((!i.equals(paramd)) && (!r.equals(paramd)) && (!u.equals(paramd)) && (!m.equals(paramd)) && (!w.equals(paramd)) && (!y.equals(paramd))) {
      if ((!b.equals(paramd)) && (!z.equals(paramd)) && (!A.equals(paramd)) && (!B.equals(paramd)) && (!C.equals(paramd)) && (!D.equals(paramd)) && (!E.equals(paramd)) && (!F.equals(paramd))) {
        break label152;
      }
    }
    label152:
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 != 0) {
        bool = true;
      }
      return bool;
    }
  }
  
  public static boolean b(d paramd)
  {
    return (f.equals(paramd)) || (g.equals(paramd));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.firstparty.shared.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */