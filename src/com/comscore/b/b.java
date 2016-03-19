package com.comscore.b;

import com.comscore.c.a;
import com.comscore.utils.InstallReferrerReceiver;
import com.comscore.utils.k;
import com.comscore.utils.l;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public final class b
  extends c
{
  protected b(com.comscore.a.b paramb, d paramd, String paramString, boolean paramBoolean)
  {
    super(paramb, paramd, paramString, paramBoolean, true, true);
    a(new a("ns_ap_gs", String.valueOf(paramb.u()), Boolean.valueOf(false)));
    a(new a("ns_ap_install", String.valueOf(paramb.t()), Boolean.valueOf(false)));
    a(new a("ns_ap_runs", String.valueOf(paramb.s()), Boolean.valueOf(false)));
    if (paramBoolean) {
      a(new a("ns_ap_csf", "1", Boolean.valueOf(false)));
    }
    paramd = "0";
    if (k.a()) {
      paramd = "1";
    }
    a(new a("ns_ap_jb", paramd, Boolean.valueOf(false)));
    a(new a("ns_ap_lastrun", String.valueOf(paramb.K()), Boolean.valueOf(false)));
    paramd = paramb.y();
    if ((paramd != null) && (paramd.length() > 0)) {
      a(new a("ns_ap_updated", paramd, Boolean.valueOf(false)));
    }
    paramd = paramb.g().b("exception_ocurrences");
    if ((paramd != null) && (paramd.length() > 0) && (!paramd.equals("0")))
    {
      a(new a("ns_ap_er", paramd, Boolean.valueOf(false)));
      paramb.g().d("exception_ocurrences");
    }
    if (paramBoolean)
    {
      paramb = InstallReferrerReceiver.a(paramb.A());
      if (paramb != null)
      {
        paramd = paramb.keySet().iterator();
        while (paramd.hasNext())
        {
          paramString = (String)paramd.next();
          a(paramString, (String)paramb.get(paramString));
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */