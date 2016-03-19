package com.cbs.app.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.service.social.Twitter;
import com.cbs.app.service.social.model.TweetOperation;
import com.cbs.app.view.model.DeviceCast;
import com.cbs.app.view.model.RecentTweet;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;

public class CastTweetAdapter
  extends BaseAdapter
{
  private Context a;
  private DeviceCast b;
  private String c = null;
  private String d = null;
  private RecentTweet[] e;
  private Twitter f;
  
  public CastTweetAdapter(Context paramContext, RecentTweet[] paramArrayOfRecentTweet, String paramString1, String paramString2)
  {
    a = paramContext;
    e = paramArrayOfRecentTweet;
    c = paramString2;
    d = paramString1;
    f = new Twitter(a);
  }
  
  public int getCount()
  {
    return e.length;
  }
  
  public Object getItem(int paramInt)
  {
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = ((LayoutInflater)a.getSystemService("layout_inflater")).inflate(2130903082, paramViewGroup, false);
      paramViewGroup = new a();
      a = ((ImageView)paramView.findViewById(2131689585));
      g = ((TextView)paramView.findViewById(2131689695));
      h = ((TextView)paramView.findViewById(2131689696));
      c = ((TextView)paramView.findViewById(2131689698));
      b = ((TextView)paramView.findViewById(2131689697));
      d = ((Button)paramView.findViewById(2131689702));
      e = ((Button)paramView.findViewById(2131689701));
      f = ((Button)paramView.findViewById(2131689700));
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      Object localObject1 = e[paramInt].getProfileImageUrl();
      if ((localObject1 != null) && (!((String)localObject1).equals(""))) {
        ImageHelper.a((String)localObject1, a, 0, 0);
      }
      g.setText(d);
      h.setText(c);
      localObject1 = e[paramInt].getCreatedAt();
      Object localObject2 = c;
      if (localObject2 != null) {
        ((TextView)localObject2).setText(Util.a("EEE MMM dd HH:mm:ss zzz yyyy", (String)localObject1));
      }
      localObject1 = b;
      localObject2 = e[paramInt].getText();
      if (localObject1 != null) {
        ((TextView)localObject1).setText((CharSequence)localObject2);
      }
      final long l = e[paramInt].getId();
      e.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CastTweetAdapter.a(CastTweetAdapter.this).b(l);
        }
      });
      f.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CastTweetAdapter.a(CastTweetAdapter.this).a(l);
        }
      });
      d.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CastTweetAdapter.a(CastTweetAdapter.this).a(new TweetOperation(l, CastTweetAdapter.b(CastTweetAdapter.this).getTwitterScreenName(), ""));
        }
      });
      return paramView;
      paramViewGroup = (a)paramView.getTag();
    }
  }
  
  public void setDeviceCast(DeviceCast paramDeviceCast)
  {
    b = paramDeviceCast;
  }
  
  static final class a
  {
    public ImageView a;
    public TextView b;
    public TextView c;
    public Button d;
    public Button e;
    public Button f;
    public TextView g;
    public TextView h;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.CastTweetAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */