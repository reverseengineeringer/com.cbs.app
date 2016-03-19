package com.cbs.app.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cbs.app.view.model.syncbak.SyncbakSchedule;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.ViewUtil;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

public class LiveTVScheduleAdapter
  extends BaseAdapter
{
  private static final String a = LiveTVScheduleAdapter.class.getSimpleName();
  private final Context b;
  private ArrayList<SyncbakSchedule> c;
  private ArrayList<String> d;
  
  private SyncbakSchedule a(int paramInt)
  {
    if (c != null) {
      return (SyncbakSchedule)c.get(paramInt);
    }
    return null;
  }
  
  private static String a(long paramLong)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("h:mm a");
    Date localDate = new Date(1000L * paramLong);
    Calendar.getInstance().setTime(localDate);
    return localSimpleDateFormat.format(localDate);
  }
  
  public int getCount()
  {
    if (c != null) {
      return c.size();
    }
    return 0;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject3 = null;
    Object localObject2 = paramView;
    SyncbakSchedule localSyncbakSchedule;
    if (c != null)
    {
      localObject2 = paramView;
      if (paramInt < c.size())
      {
        new StringBuilder("schedule item list : ").append(c.size());
        new StringBuilder("morelessstaus list : ").append(d.size());
        localSyncbakSchedule = a(paramInt);
        if (paramView != null) {
          break label372;
        }
        paramViewGroup = LayoutInflater.from(b).inflate(2130903207, paramViewGroup, false);
        if (paramViewGroup == null) {
          break label1151;
        }
        paramView = new b((byte)0);
        b = ViewUtil.b(paramViewGroup, 2131690120);
        a = ViewUtil.b(paramViewGroup, 2131690129);
        d = ViewUtil.a(paramViewGroup, 2131690130);
        h = paramViewGroup.findViewById(2131690131);
        c = ViewUtil.a(paramViewGroup, 2131690132);
        e = ViewUtil.a(paramViewGroup, 2131690133);
        f = ViewUtil.a(paramViewGroup, 2131690134);
        g = ViewUtil.a(paramViewGroup, 2131690136);
        i = ViewUtil.a(paramViewGroup, 2131690137);
        j = null;
        paramViewGroup.setTag(paramView);
      }
    }
    for (;;)
    {
      Object localObject1 = paramView;
      localObject2 = paramViewGroup;
      if (localObject1 != null)
      {
        e.setText(localSyncbakSchedule.getName());
        paramView = localSyncbakSchedule.getEpisodeTitle();
        if ((paramView != null) && (!paramView.equals("null"))) {
          break label415;
        }
        f.setVisibility(8);
        label259:
        paramView = localSyncbakSchedule.getDescription();
        if ((paramView != null) && (!paramView.equals("null")) && (!paramView.equals(" "))) {
          break label436;
        }
        g.setVisibility(8);
        i.setVisibility(8);
      }
      for (;;)
      {
        if (paramInt == 0)
        {
          d.setText(a(localSyncbakSchedule.getStartTime()));
          h.setVisibility(0);
          if (Util.h(b))
          {
            if (Util.k(b))
            {
              c.setText("UP NEXT");
              localObject2 = paramViewGroup;
              return (View)localObject2;
              label372:
              localObject2 = paramView.getTag();
              localObject1 = localObject3;
              paramViewGroup = paramView;
              if (localObject2 == null) {
                break;
              }
              localObject1 = localObject3;
              paramViewGroup = paramView;
              if (!(localObject2 instanceof b)) {
                break;
              }
              localObject1 = (b)localObject2;
              paramViewGroup = paramView;
              break;
              label415:
              f.setVisibility(0);
              f.setText(paramView);
              break label259;
              label436:
              if (paramInt == 0)
              {
                g.setText(paramView);
                i.setOnClickListener(new a(paramView, paramInt, d, (b)localObject1));
                j = "less";
                d.set(paramInt, j);
                continue;
              }
              if ((d != null) && (paramInt < d.size()))
              {
                localObject2 = (String)d.get(paramInt);
                if (!((String)localObject2).equals(" "))
                {
                  if (((String)localObject2).equals("more"))
                  {
                    g.setText(paramView.substring(0, 559));
                    i.setText("More");
                    i.setOnClickListener(new a(paramView, paramInt, d, (b)localObject1));
                    continue;
                  }
                  if (!((String)localObject2).equals("less")) {
                    continue;
                  }
                  g.setText(paramView);
                  i.setText("Less");
                  i.setOnClickListener(new a(paramView, paramInt, d, (b)localObject1));
                  continue;
                }
                if (paramView.length() >= 560)
                {
                  g.setText(paramView.substring(0, 559) + "...");
                  i.setOnClickListener(new a(paramView, paramInt, d, (b)localObject1));
                  i.setText("More");
                  j = "more";
                  d.set(paramInt, j);
                  i.setVisibility(0);
                  continue;
                }
                j = "less";
                d.set(paramInt, j);
                i.setVisibility(8);
                g.setText(paramView);
                continue;
              }
              if (i.getText().equals(" "))
              {
                if (paramView.length() >= 560)
                {
                  g.setText(paramView.substring(0, 559) + "...");
                  i.setOnClickListener(new a(paramView, paramInt, d, (b)localObject1));
                  i.setText("More");
                  j = "more";
                  i.setVisibility(0);
                  continue;
                }
                j = "less";
                i.setVisibility(8);
                g.setText(paramView);
                continue;
              }
              if (i.getText().equals("Less"))
              {
                g.setText(paramView);
                continue;
              }
              if (!i.getText().equals("More")) {
                continue;
              }
              g.setText(paramView.substring(0, 559));
              continue;
            }
            c.setText("LIVE NOW");
            return paramViewGroup;
          }
          c.setText("LIVE NOW");
          return paramViewGroup;
        }
      }
      if (paramInt == 1)
      {
        d.setText(a(localSyncbakSchedule.getStartTime()));
        h.setVisibility(0);
        if (Util.h(b))
        {
          if (Util.k(b))
          {
            h.setVisibility(8);
            c.setVisibility(8);
            return paramViewGroup;
          }
          c.setText("UP NEXT");
          return paramViewGroup;
        }
        c.setText("UP NEXT");
        return paramViewGroup;
      }
      c.setText(a(localSyncbakSchedule.getStartTime()));
      return paramViewGroup;
      label1151:
      paramView = null;
    }
  }
  
  public int getViewTypeCount()
  {
    int i = getCount();
    if (i > 1) {
      return i;
    }
    return 1;
  }
  
  public void setSchedulesItems(ArrayList<SyncbakSchedule> paramArrayList)
  {
    c = paramArrayList;
    if (paramArrayList != null)
    {
      d = new ArrayList(paramArrayList.size());
      int i = 0;
      while (i < paramArrayList.size())
      {
        d.add(i, " ");
        i += 1;
      }
    }
  }
  
  public static abstract interface StreamSelectedListener {}
  
  private static final class a
    implements View.OnClickListener
  {
    String a;
    int b;
    ArrayList<String> c = new ArrayList();
    LiveTVScheduleAdapter.b d = new LiveTVScheduleAdapter.b((byte)0);
    
    public a(String paramString, int paramInt, ArrayList<String> paramArrayList, LiveTVScheduleAdapter.b paramb)
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
  
  private static final class b
  {
    LinearLayout a;
    LinearLayout b;
    TextView c;
    TextView d;
    TextView e;
    TextView f;
    TextView g;
    View h;
    TextView i;
    String j = null;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.LiveTVScheduleAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */