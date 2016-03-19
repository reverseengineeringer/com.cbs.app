package com.cbs.app.view.fragments.show.cast;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.cbs.app.adapter.CastTweetAdapter;
import com.cbs.app.analytics.Action;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.service.CastTweetService;
import com.cbs.app.service.CastTweetServiceImpl;
import com.cbs.app.service.social.Twitter;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.model.DeviceCast;
import com.cbs.app.view.model.RecentTweet;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.rest.RecentTweetEndpointResponse;
import com.cbs.app.view.utils.Util;
import java.util.List;

public class CastMemberTweetFragment
  extends AbstractAsyncFragment
{
  private static final String j = CastMemberTweetFragment.class.getSimpleName();
  public boolean h = false;
  ResponseModelListener i = new ResponseModelListener()
  {
    public final void a()
    {
      Log.e(CastMemberTweetFragment.g(), "fail");
      CastMemberTweetFragment.f();
      h = true;
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      Log.e(CastMemberTweetFragment.g(), "success");
      if ((paramAnonymousResponseModel instanceof RecentTweetEndpointResponse))
      {
        paramAnonymousResponseModel = (RecentTweetEndpointResponse)paramAnonymousResponseModel;
        if (paramAnonymousResponseModel.getRecentTweetList() == null) {
          break label76;
        }
        CastMemberTweetFragment.a(CastMemberTweetFragment.this, (RecentTweet[])paramAnonymousResponseModel.getRecentTweetList().toArray(new RecentTweet[paramAnonymousResponseModel.getRecentTweetList().size()]));
      }
      for (;;)
      {
        h = true;
        e();
        return;
        label76:
        CastMemberTweetFragment.a(CastMemberTweetFragment.this, new RecentTweet[0]);
      }
    }
  };
  private View k = null;
  private DeviceCast l;
  private RecentTweet[] m = null;
  private Show n;
  
  public static void f() {}
  
  public final void a()
  {
    new Twitter(g).b(l.getTwitterScreenName());
  }
  
  public final void e()
  {
    String str;
    if ((k != null) && (g != null))
    {
      str = l.getTwitterScreenName();
      if (str.contains("@")) {
        break label270;
      }
      str = "@" + str;
    }
    label270:
    for (;;)
    {
      Object localObject;
      if ((m != null) && (m.length > 0))
      {
        localObject = new CastTweetAdapter(g, m, l.getTitle(), str);
        ((CastTweetAdapter)localObject).setDeviceCast(l);
        ListView localListView = (ListView)k.findViewById(2131689716);
        View localView = g.getLayoutInflater().inflate(2130903140, null, false);
        new StringBuilder("list view footer count:").append(localListView.getFooterViewsCount());
        if (localListView.getFooterViewsCount() == 0)
        {
          localListView.addFooterView(localView);
          localListView.setFooterDividersEnabled(false);
        }
        localListView.setAdapter((ListAdapter)localObject);
        localListView.setVisibility(0);
        localListView.invalidate();
      }
      for (;;)
      {
        localObject = (TextView)k.findViewById(2131689692);
        if (localObject != null) {
          ((TextView)localObject).setText(l.getTitle());
        }
        localObject = (TextView)k.findViewById(2131689713);
        if (localObject != null) {
          ((TextView)localObject).setText(str);
        }
        ((Button)k.findViewById(2131689714)).setVisibility(0);
        return;
        k.findViewById(2131689716).setVisibility(8);
        k.findViewById(2131689717).setVisibility(0);
      }
    }
  }
  
  public void getData()
  {
    if (l != null) {
      new CastTweetServiceImpl().a(g, l.getTwitterScreenName(), i);
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    k = paramLayoutInflater.inflate(2130903087, paramViewGroup, false);
    if (k != null)
    {
      ((Button)k.findViewById(2131689714)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          a();
        }
      });
      paramLayoutInflater = getArguments();
      paramViewGroup = paramLayoutInflater.getParcelable("deviceCast");
      if (paramViewGroup != null)
      {
        l = ((DeviceCast)paramViewGroup);
        getData();
      }
      n = ((Show)paramLayoutInflater.getParcelable("show"));
    }
    return k;
  }
  
  public void onDetach()
  {
    super.onDetach();
    k = null;
  }
  
  public void onResume()
  {
    if ((Util.g(g)) || (Util.f(g)))
    {
      d = Action.l;
      if (n != null)
      {
        e = n.getTitle();
        f = Long.valueOf(n.getId()).toString();
      }
    }
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.cast.CastMemberTweetFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */