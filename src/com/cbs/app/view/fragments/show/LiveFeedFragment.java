package com.cbs.app.view.fragments.show;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.UpsellService;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.registration.UserDescription;
import com.cbs.app.view.model.registration.UserStatus;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

public class LiveFeedFragment
  extends AbstractAsyncFragment
{
  private static final String l = LiveFeedFragment.class.getSimpleName();
  boolean h = false;
  UpsellInfo i;
  String j = UserDescription.ANONYMOUS.name();
  ResponseModelListener k = new ResponseModelListener()
  {
    public final void a()
    {
      LiveFeedFragment.e();
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      LiveFeedFragment.e();
      if ((paramAnonymousResponseModel instanceof UpsellEndpointResponse))
      {
        paramAnonymousResponseModel = ((UpsellEndpointResponse)paramAnonymousResponseModel).getUpsellInfo();
        if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
        {
          paramAnonymousResponseModel = paramAnonymousResponseModel.iterator();
          while (paramAnonymousResponseModel.hasNext())
          {
            UpsellInfo localUpsellInfo = (UpsellInfo)paramAnonymousResponseModel.next();
            if (localUpsellInfo.getActionTarget().equals("android_content_1"))
            {
              LiveFeedFragment.e();
              i = localUpsellInfo;
              LiveFeedFragment.a(LiveFeedFragment.this, i.getTitle());
              LiveFeedFragment.e();
              new StringBuilder("upsell title : ").append(LiveFeedFragment.a(LiveFeedFragment.this));
              LiveFeedFragment.b(LiveFeedFragment.this, i.getUpsellMessage());
              LiveFeedFragment.e();
              new StringBuilder("upsell message : ").append(LiveFeedFragment.b(LiveFeedFragment.this));
              LiveFeedFragment.c(LiveFeedFragment.this, i.getUpsellMessage2());
              LiveFeedFragment.d(LiveFeedFragment.this, i.getUpsellImagePath());
              LiveFeedFragment.e();
              new StringBuilder("upsell image1 url1 : ").append(LiveFeedFragment.c(LiveFeedFragment.this));
              i.getUpsellImagePath1();
              LiveFeedFragment.e();
              LiveFeedFragment.e(LiveFeedFragment.this, i.getCallToAction());
              LiveFeedFragment.e();
              new StringBuilder("callToActionText : ").append(LiveFeedFragment.d(LiveFeedFragment.this));
              String str = i.getCallToAction();
              LiveFeedFragment.f(LiveFeedFragment.this, Util.k(LiveFeedFragment.e(LiveFeedFragment.this), localUpsellInfo.getCallToActionURL()));
              if ((str != null) && (LiveFeedFragment.f(LiveFeedFragment.this) != null))
              {
                LiveFeedFragment.e();
                new StringBuilder(" callToAction: ").append(str).append(" callToActionUrl: ").append(LiveFeedFragment.f(LiveFeedFragment.this));
              }
            }
          }
          if (LiveFeedFragment.g(LiveFeedFragment.this) != null) {
            LiveFeedFragment.this.a();
          }
        }
      }
    }
  };
  private long m = 0L;
  private String n = null;
  private String o = null;
  private String p = null;
  private String q = null;
  private String r = null;
  private String s = null;
  private String t;
  
  public LiveFeedFragment()
  {
    setRetainInstance(true);
  }
  
  private void a(View paramView)
  {
    int i1 = 900;
    Object localObject1;
    DisplayMetrics localDisplayMetrics;
    Object localObject2;
    int i2;
    if (paramView != null)
    {
      localObject1 = (ImageView)paramView.findViewById(2131689960);
      localDisplayMetrics = g.getResources().getDisplayMetrics();
      localObject2 = ((ImageView)localObject1).getDrawable();
      if (localObject2 != null) {
        break label243;
      }
      if (q != null)
      {
        localObject2 = "http://www.cbs.com/base/" + q;
        i2 = Math.max(widthPixels, heightPixels);
        if (i2 <= 900) {
          break label237;
        }
        ImageHelper.a(ImageHelper.b((String)localObject2, i1), (ImageView)localObject1, widthPixels);
      }
    }
    for (;;)
    {
      localObject1 = (FrameLayout.LayoutParams)((LinearLayout)paramView.findViewById(2131689961)).getLayoutParams();
      if (!Util.h(g)) {
        break label293;
      }
      i1 = (int)(widthPixels * 0.6F);
      localObject2 = (TextView)paramView.findViewById(2131689962);
      TextView localTextView = (TextView)paramView.findViewById(2131689963);
      paramView = (TextView)paramView.findViewById(2131689965);
      float f = widthPixels * 0.029F / density;
      ((TextView)localObject2).setTextSize(f);
      localTextView.setTextSize(0.68F * f);
      paramView.setTextSize(f * 0.6F);
      ((FrameLayout.LayoutParams)localObject1).setMargins(i1, 0, (int)(14.0F * density), 0);
      return;
      label237:
      i1 = i2;
      break;
      label243:
      f = ((Drawable)localObject2).getIntrinsicHeight() * 1.0F / ((Drawable)localObject2).getIntrinsicWidth();
      localObject1 = ((ImageView)localObject1).getLayoutParams();
      width = widthPixels;
      height = ((int)(f * widthPixels));
    }
    label293:
    ((FrameLayout.LayoutParams)localObject1).setMargins(0, (int)(heightPixels * 0.33F), 0, 0);
  }
  
  public final void a()
  {
    Object localObject = getView();
    if (localObject != null)
    {
      a((View)localObject);
      new StringBuilder("Title: ").append(n);
      ((TextView)((View)localObject).findViewById(2131689962)).setText(n);
      ((TextView)((View)localObject).findViewById(2131689965)).setText(p);
      new StringBuilder("meg: ").append(o);
      ((TextView)((View)localObject).findViewById(2131689963)).setText(o);
      if ((r != null) && (s != null))
      {
        localObject = (Button)((View)localObject).findViewById(2131689964);
        if (localObject != null)
        {
          ((Button)localObject).setText(r);
          ((Button)localObject).setVisibility(0);
          ((Button)localObject).setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              paramAnonymousView = new Intent("android.intent.action.VIEW");
              paramAnonymousView.setData(Uri.parse(LiveFeedFragment.f(LiveFeedFragment.this)));
              startActivity(paramAnonymousView);
            }
          });
        }
      }
    }
  }
  
  public void getUpsellInfo()
  {
    Object localObject3 = null;
    UpsellService localUpsellService;
    if (g != null) {
      localUpsellService = new UpsellService();
    }
    try
    {
      Object localObject1 = new URL(t);
      if (localObject1 != null) {
        if (Util.e(g))
        {
          localObject1 = "android-phone" + ((URL)localObject1).getPath();
          localUpsellService.a(g, (String)localObject1, k);
          return;
        }
      }
    }
    catch (MalformedURLException localMalformedURLException)
    {
      for (;;)
      {
        localMalformedURLException.printStackTrace();
        Object localObject2 = null;
        continue;
        localObject2 = "android-tablet" + ((URL)localObject2).getPath();
        continue;
        if (Util.e(g))
        {
          localObject2 = "android-phone/shows/big_brother/live_feed";
        }
        else
        {
          localObject2 = localObject3;
          if (Util.h(g)) {
            localObject2 = "android-tablet/shows/big_brother/live_feed";
          }
        }
      }
    }
  }
  
  public void getuserStatus()
  {
    Object localObject = AuthStatusManager.getUserAuthStatus();
    if (localObject != null)
    {
      localObject = ((AuthStatusEndpointResponse)localObject).getUserStatus();
      if (localObject != null) {
        j = ((UserStatus)localObject).getDescription();
      }
    }
    if (j.equals(UserDescription.SUBSCRIBER.name()))
    {
      h = true;
      return;
    }
    h = false;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    getUpsellInfo();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    a(getView());
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if ((Util.g(g)) || (Util.f(g))) {}
    for (paramLayoutInflater = paramLayoutInflater.inflate(2130903159, paramViewGroup, false);; paramLayoutInflater = paramLayoutInflater.inflate(2130903158, paramViewGroup, false))
    {
      paramViewGroup = getArguments();
      m = paramViewGroup.getLong("showId");
      t = paramViewGroup.getString("pageUrl");
      getuserStatus();
      return paramLayoutInflater;
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public void onDetach()
  {
    super.onDetach();
  }
  
  public void onPause()
  {
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    a();
  }
  
  public void onStart()
  {
    super.onStart();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.LiveFeedFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */