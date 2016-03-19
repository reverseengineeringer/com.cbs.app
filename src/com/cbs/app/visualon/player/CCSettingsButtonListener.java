package com.cbs.app.visualon.player;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class CCSettingsButtonListener
{
  private Button a;
  private Button b;
  private Button c;
  private Button d;
  private Button e;
  private Button f;
  private Button g;
  private Button h;
  private Button i;
  private Button j;
  private Button k;
  private Button l;
  private Button m;
  private Button n;
  private Button o;
  private Button p;
  private Button q;
  private Button r;
  private Button s;
  private Button t;
  private Button u;
  private Button v;
  private Button w;
  
  public void setButtonListeners(View paramView)
  {
    a = ((Button)paramView.findViewById(2131690361));
    b = ((Button)paramView.findViewById(2131690360));
    c = ((Button)paramView.findViewById(2131689738));
    d = ((Button)paramView.findViewById(2131689739));
    e = ((Button)paramView.findViewById(2131689740));
    f = ((Button)paramView.findViewById(2131689743));
    g = ((Button)paramView.findViewById(2131689742));
    h = ((Button)paramView.findViewById(2131689745));
    i = ((Button)paramView.findViewById(2131689741));
    j = ((Button)paramView.findViewById(2131689744));
    Button localButton1 = (Button)paramView.findViewById(2131690364);
    Button localButton2 = (Button)paramView.findViewById(2131690366);
    Button localButton3 = (Button)paramView.findViewById(2131690368);
    Button localButton4 = (Button)paramView.findViewById(2131690367);
    Button localButton5 = (Button)paramView.findViewById(2131690370);
    Button localButton6 = (Button)paramView.findViewById(2131690369);
    s = ((Button)paramView.findViewById(2131690372));
    t = ((Button)paramView.findViewById(2131690374));
    u = ((Button)paramView.findViewById(2131690375));
    v = ((Button)paramView.findViewById(2131690376));
    w = ((Button)paramView.findViewById(2131690373));
    k = ((Button)paramView.findViewById(2131690380));
    l = ((Button)paramView.findViewById(2131690379));
    m = ((Button)paramView.findViewById(2131690378));
    n = ((Button)paramView.findViewById(2131690382));
    o = ((Button)paramView.findViewById(2131690385));
    p = ((Button)paramView.findViewById(2131690383));
    q = ((Button)paramView.findViewById(2131690381));
    r = ((Button)paramView.findViewById(2131690384));
    Button localButton7 = (Button)paramView.findViewById(2131690388);
    paramView = (Button)paramView.findViewById(2131690387);
    a.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.A();
        CBSPlayer.h();
      }
    });
    b.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.B();
        CBSPlayer.A();
      }
    });
    c.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setFontColor("255");
      }
    });
    d.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setFontColor("16711680");
      }
    });
    e.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setFontColor("16777215");
      }
    });
    f.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setFontColor("65280");
      }
    });
    j.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setFontColor("0");
      }
    });
    h.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setFontColor("12277397");
      }
    });
    i.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setFontColor("16776960");
      }
    });
    g.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setFontColor("558497");
      }
    });
    localButton1.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.c(-1);
      }
    });
    localButton2.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.c(1);
      }
    });
    localButton4.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.d(-1);
      }
    });
    localButton3.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.d(1);
      }
    });
    localButton6.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.e(-1);
      }
    });
    localButton5.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.e(1);
      }
    });
    m.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setCCBackgroundColor("255");
      }
    });
    k.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setCCBackgroundColor("16777215");
      }
    });
    r.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setCCBackgroundColor("0");
      }
    });
    l.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setCCBackgroundColor("16711680");
      }
    });
    p.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setCCBackgroundColor("65280");
      }
    });
    q.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setCCBackgroundColor("16776960");
      }
    });
    n.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setCCBackgroundColor("558497");
      }
    });
    o.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setCCBackgroundColor("12277397");
      }
    });
    paramView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.f(-1);
      }
    });
    localButton7.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.f(1);
      }
    });
    s.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setFontEdgeType(0);
      }
    });
    t.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setFontEdgeType(1);
      }
    });
    u.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setFontEdgeType(2);
      }
    });
    v.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setFontEdgeType(3);
      }
    });
    w.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSPlayer.setFontEdgeType(5);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.CCSettingsButtonListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */