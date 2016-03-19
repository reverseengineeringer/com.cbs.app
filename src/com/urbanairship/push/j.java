package com.urbanairship.push;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.provider.Settings.Secure;
import com.urbanairship.R.drawable;
import com.urbanairship.R.string;
import com.urbanairship.d.h;
import com.urbanairship.l;
import com.urbanairship.p;
import com.urbanairship.push.a.c.a;
import com.urbanairship.push.a.d.a;
import com.urbanairship.richpush.RichPushManager;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public final class j
  extends com.urbanairship.d
{
  private final String a = "ua_";
  private final String b = "device";
  private com.urbanairship.push.a.e c;
  private final Map<String, com.urbanairship.push.a.d> d = new HashMap();
  private boolean e = true;
  private final g f;
  private final k g;
  private final com.urbanairship.a h;
  private boolean i;
  
  public j(Context paramContext, l paraml, com.urbanairship.a parama)
  {
    this(paramContext, new k(paraml), new g(paraml), parama);
  }
  
  private j(Context paramContext, k paramk, g paramg, com.urbanairship.a parama)
  {
    g = paramk;
    c = new com.urbanairship.push.a.a(paramContext);
    f = paramg;
    h = parama;
    if ((com.urbanairship.j.a < 7) && (!h.a(g.o())))
    {
      new StringBuilder().append(p.g()).append(" Channel ID");
      g.o();
    }
    paramContext = d;
    paramk = new HashMap();
    paramk.put("ua_yes_no_foreground", new d.a().a(new c.a("yes").a(R.string.ua_notification_button_yes).b(R.drawable.ic_notification_button_accept).a(true).a()).a(new c.a("no").a(R.string.ua_notification_button_no).b(R.drawable.ic_notification_button_decline).a(false).a()).a());
    paramk.put("ua_yes_no_background", new d.a().a(new c.a("yes").a(R.string.ua_notification_button_yes).b(R.drawable.ic_notification_button_accept).a(false).a()).a(new c.a("no").a(R.string.ua_notification_button_no).b(R.drawable.ic_notification_button_decline).a(false).a()).a());
    paramk.put("ua_accept_decline_foreground", new d.a().a(new c.a("accept").a(R.string.ua_notification_button_accept).b(R.drawable.ic_notification_button_accept).a(true).a()).a(new c.a("decline").a(R.string.ua_notification_button_decline).b(R.drawable.ic_notification_button_decline).a(false).a()).a());
    paramk.put("ua_accept_decline_background", new d.a().a(new c.a("accept").a(R.string.ua_notification_button_accept).b(R.drawable.ic_notification_button_accept).a(false).a()).a(new c.a("decline").a(R.string.ua_notification_button_decline).b(R.drawable.ic_notification_button_decline).a(false).a()).a());
    paramk.put("ua_download_share", new d.a().a(new c.a("download").a(R.string.ua_notification_button_download).b(R.drawable.ic_notification_button_download).a(true).a()).a(new c.a("share").a(R.string.ua_notification_button_share).b(R.drawable.ic_notification_button_share).a(true).a()).a());
    paramk.put("ua_remind_share", new d.a().a(new c.a("remind").a(R.string.ua_notification_button_remind).b(R.drawable.ic_notification_button_remind).a(false).a()).a(new c.a("share").a(R.string.ua_notification_button_share).b(R.drawable.ic_notification_button_share).a(true).a()).a());
    paramk.put("ua_opt_in_share", new d.a().a(new c.a("opt_in").a(R.string.ua_notification_button_opt_in).b(R.drawable.ic_notification_button_follow).a(false).a()).a(new c.a("share").a(R.string.ua_notification_button_share).b(R.drawable.ic_notification_button_share).a(true).a()).a());
    paramk.put("ua_opt_out_share", new d.a().a(new c.a("opt_out").a(R.string.ua_notification_button_opt_out).b(R.drawable.ic_notification_button_unfollow).a(false).a()).a(new c.a("share").a(R.string.ua_notification_button_share).b(R.drawable.ic_notification_button_share).a(true).a()).a());
    paramk.put("ua_follow_share", new d.a().a(new c.a("follow").a(R.string.ua_notification_button_follow).b(R.drawable.ic_notification_button_follow).a(false).a()).a(new c.a("share").a(R.string.ua_notification_button_share).b(R.drawable.ic_notification_button_share).a(true).a()).a());
    paramk.put("ua_unfollow_share", new d.a().a(new c.a("unfollow").a(R.string.ua_notification_button_unfollow).a(false).b(R.drawable.ic_notification_button_unfollow).a()).a(new c.a("share").a(R.string.ua_notification_button_share).b(R.drawable.ic_notification_button_share).a(true).a()).a());
    paramk.put("ua_shop_now_share", new d.a().a(new c.a("shop_now").a(R.string.ua_notification_button_shop_now).a(true).b(R.drawable.ic_notification_button_cart).a()).a(new c.a("share").a(R.string.ua_notification_button_share).b(R.drawable.ic_notification_button_share).a(true).a()).a());
    paramk.put("ua_buy_now_share", new d.a().a(new c.a("buy_now").a(R.string.ua_notification_button_buy_now).a(true).b(R.drawable.ic_notification_button_cart).a()).a(new c.a("share").a(R.string.ua_notification_button_share).b(R.drawable.ic_notification_button_share).a(true).a()).a());
    paramk.put("ua_more_like_less_like", new d.a().a(new c.a("more_like").a(R.string.ua_notification_button_more_like).b(R.drawable.ic_notification_button_thumbs_up).a(false).a()).a(new c.a("less_like").a(R.string.ua_notification_button_less_like).b(R.drawable.ic_notification_button_thumbs_down).a(false).a()).a());
    paramk.put("ua_like_dislike", new d.a().a(new c.a("like").a(R.string.ua_notification_button_like).b(R.drawable.ic_notification_button_thumbs_up).a(false).a()).a(new c.a("dislike").a(R.string.ua_notification_button_dislike).b(R.drawable.ic_notification_button_thumbs_down).a(false).a()).a());
    paramk.put("ua_like_share", new d.a().a(new c.a("like").a(R.string.ua_notification_button_like).b(R.drawable.ic_notification_button_thumbs_up).a(false).a()).a(new c.a("share").a(R.string.ua_notification_button_share).b(R.drawable.ic_notification_button_share).a(true).a()).a());
    paramk.put("ua_shop_now", new d.a().a(new c.a("shop_now").a(R.string.ua_notification_button_shop_now).b(R.drawable.ic_notification_button_cart).a(true).a()).a());
    paramk.put("ua_buy_now", new d.a().a(new c.a("buy_now").a(R.string.ua_notification_button_buy_now).b(R.drawable.ic_notification_button_cart).a(true).a()).a());
    paramk.put("ua_follow", new d.a().a(new c.a("follow").a(R.string.ua_notification_button_follow).b(R.drawable.ic_notification_button_follow).a(false).a()).a());
    paramk.put("ua_unfollow", new d.a().a(new c.a("unfollow").a(R.string.ua_notification_button_unfollow).b(R.drawable.ic_notification_button_unfollow).a(false).a()).a());
    paramk.put("ua_opt_in", new d.a().a(new c.a("opt_in").a(R.string.ua_notification_button_opt_in).b(R.drawable.ic_notification_button_follow).a(false).a()).a());
    paramk.put("ua_opt_out", new d.a().a(new c.a("opt_out").a(R.string.ua_notification_button_opt_out).b(R.drawable.ic_notification_button_unfollow).a(false).a()).a());
    paramk.put("ua_remind_me_later", new d.a().a(new c.a("remind").a(R.string.ua_notification_button_remind).b(R.drawable.ic_notification_button_remind).a(false).a()).a());
    paramk.put("ua_share", new d.a().a(new c.a("share").a(R.string.ua_notification_button_share).b(R.drawable.ic_notification_button_share).a(true).a()).a());
    paramk.put("ua_download", new d.a().a(new c.a("download").a(R.string.ua_notification_button_download).b(R.drawable.ic_notification_button_download).a(true).a()).a());
    paramk.put("ua_like", new d.a().a(new c.a("like").a(R.string.ua_notification_button_like).b(R.drawable.ic_notification_button_thumbs_up).a(false).a()).a());
    paramk.put("ua_icons_up_down", new d.a().a(new c.a("up").b(R.drawable.ic_notification_button_thumbs_up).a("thumbs up icon").a(false).a()).a(new c.a("down").b(R.drawable.ic_notification_button_thumbs_down).a("thumbs down icon").a(false).a()).a());
    paramk.put("ua_icons_happy_sad", new d.a().a(new c.a("happy").b(R.drawable.ic_notification_button_happy).a("happy icon").a(false).a()).a(new c.a("sad").b(R.drawable.ic_notification_button_sad).a("sad icon").a(false).a()).a());
    paramContext.putAll(paramk);
  }
  
  static String a(Context paramContext)
  {
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }
  
  public static void j()
  {
    Context localContext = p.h();
    Intent localIntent = new Intent(localContext, PushService.class);
    localIntent.setAction("com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION");
    localContext.startService(localIntent);
  }
  
  static void v()
  {
    Intent localIntent = new Intent(p.h(), PushService.class).setAction("com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS");
    p.h().startService(localIntent);
  }
  
  protected final void a()
  {
    g.a();
    if ((g.o() == null) && (h.t)) {}
    for (i = true;; i = false)
    {
      Intent localIntent = new Intent(p.h(), PushService.class).setAction("com.urbanairship.push.ACTION_START_REGISTRATION");
      p.h().startService(localIntent);
      if (g.o() != null) {
        v();
      }
      g.d();
      if (f.a() != null) {
        g.e();
      }
      return;
    }
  }
  
  final void a(String paramString)
  {
    g.g(paramString);
  }
  
  final void a(String paramString1, String paramString2)
  {
    g.f(paramString1);
    g.e(paramString2);
  }
  
  public final void a(Set<String> paramSet)
  {
    if (paramSet == null) {
      throw new IllegalArgumentException("Tags must be non-null.");
    }
    paramSet = n.a(paramSet);
    if (!paramSet.equals(g.h()))
    {
      g.a(paramSet);
      j();
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    g.b(paramBoolean);
    j();
  }
  
  public final com.urbanairship.push.a.d b(String paramString)
  {
    return (com.urbanairship.push.a.d)d.get(paramString);
  }
  
  public final void b()
  {
    g.a(true);
    j();
  }
  
  final void c(String paramString)
  {
    g.b(paramString);
  }
  
  public final boolean c()
  {
    return g.b();
  }
  
  final void d(String paramString)
  {
    g.a(eversionCode);
    g.c(paramString);
    g.d(a(p.h()));
  }
  
  public final boolean d()
  {
    return g.c();
  }
  
  public final com.urbanairship.push.a.e e()
  {
    return c;
  }
  
  final void e(String paramString)
  {
    g.a(paramString);
    g.a(eversionCode);
    g.d(a(p.h()));
  }
  
  final k f()
  {
    return g;
  }
  
  public final boolean g()
  {
    boolean bool = true;
    switch (p.a().u())
    {
    default: 
      bool = false;
    }
    do
    {
      do
      {
        return bool;
      } while (!h.a(g.k()));
      return false;
    } while (!h.a(g.j()));
    return false;
  }
  
  public final boolean h()
  {
    return (g.b()) && (g()) && (g.c());
  }
  
  final b i()
  {
    b.a locala = new b.a().a(g.g()).a(e, l()).a(h());
    boolean bool;
    if ((g.b()) && (g()))
    {
      bool = true;
      locala = locala.b(bool).d(p.a().n().b().b()).e(g.p());
      switch (p.a().u())
      {
      }
    }
    for (;;)
    {
      return locala.a();
      bool = false;
      break;
      locala.b("android").c(g.j());
      continue;
      locala.b("amazon").c(g.k());
    }
  }
  
  public final g k()
  {
    return f;
  }
  
  public final Set<String> l()
  {
    Set localSet1 = g.h();
    Set localSet2 = n.a(localSet1);
    if (localSet1.size() != localSet2.size()) {
      a(localSet2);
    }
    return localSet2;
  }
  
  @Deprecated
  public final String m()
  {
    return g.i();
  }
  
  public final String n()
  {
    return g.k();
  }
  
  public final boolean o()
  {
    return g.d();
  }
  
  public final boolean p()
  {
    return g.e();
  }
  
  public final boolean q()
  {
    return g.f();
  }
  
  final boolean r()
  {
    return i;
  }
  
  public final String s()
  {
    return g.q();
  }
  
  public final String t()
  {
    return g.o();
  }
  
  final String u()
  {
    return g.n();
  }
  
  public final String w()
  {
    return g.j();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */