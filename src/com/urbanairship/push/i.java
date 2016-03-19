package com.urbanairship.push;

import android.content.Context;
import android.content.Intent;
import com.urbanairship.BaseIntentService.a;
import com.urbanairship.b.c;
import com.urbanairship.d.f;
import com.urbanairship.l;
import com.urbanairship.p;

final class i
  extends BaseIntentService.a
{
  private final h a;
  private final g b;
  private final j c;
  
  public i(Context paramContext, l paraml)
  {
    this(paramContext, paraml, new h(), p.a().m(), p.a().m().k());
  }
  
  private i(Context paramContext, l paraml, h paramh, j paramj, g paramg)
  {
    super(paramContext, paraml);
    a = paramh;
    b = paramg;
    c = paramj;
  }
  
  protected final void a(Intent paramIntent)
  {
    if (!paramIntent.getAction().equals("com.urbanairship.push.ACTION_UPDATE_NAMED_USER")) {}
    String str1;
    String str2;
    String str3;
    do
    {
      return;
      localObject = b.a();
      str1 = b.b();
      str2 = b().a("com.urbanairship.nameduser.LAST_UPDATED_TOKEN_KEY");
      str3 = c.t();
    } while (((str1 == null) && (str2 == null)) || ((str1 != null) && (str1.equals(str2))) || (com.urbanairship.d.h.a(str3)));
    if (localObject == null) {}
    for (Object localObject = a.a(str3); (localObject == null) || (f.b(((c)localObject).a())); localObject = a.a((String)localObject, str3))
    {
      b(paramIntent);
      return;
    }
    if (f.a(((c)localObject).a()))
    {
      new StringBuilder("Update named user succeeded with status: ").append(((c)localObject).a());
      b().a("com.urbanairship.nameduser.LAST_UPDATED_TOKEN_KEY", str1);
      g.e();
      return;
    }
    if (((c)localObject).a() == 403)
    {
      new StringBuilder("Update named user failed with status: ").append(((c)localObject).a()).append(" This action is not allowed when the app is in server-only mode.");
      return;
    }
    new StringBuilder("Update named user failed with status: ").append(((c)localObject).a());
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */