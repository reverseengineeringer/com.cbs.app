package com.cbs.app.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import java.util.ArrayList;

final class LiveTVScheduleAdapter$a
  implements View.OnClickListener
{
  String a;
  int b;
  ArrayList<String> c = new ArrayList();
  LiveTVScheduleAdapter.b d = new LiveTVScheduleAdapter.b((byte)0);
  
  public LiveTVScheduleAdapter$a(String paramString, int paramInt, ArrayList<String> paramArrayList, LiveTVScheduleAdapter.b paramb)
  {
    a = paramString;
    b = paramInt;
    c = paramArrayList;
    d = paramb;
  }
  
  public final void onClick(View paramView)
  {
    if (d.g.getText().length() >= 564)
    {
      d.g.setText(a.substring(0, 559) + "...");
      LiveTVScheduleAdapter.a();
      new StringBuilder("description inside onClick at ").append(b).append(d.g.getText());
      d.i.setText("More");
      d.j = "more";
      c.set(b, d.j);
      return;
    }
    d.g.setText(a);
    d.i.setText("Less");
    d.j = "less";
    c.set(b, d.j);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.LiveTVScheduleAdapter.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */