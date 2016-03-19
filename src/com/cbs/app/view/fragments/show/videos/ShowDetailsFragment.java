package com.cbs.app.view.fragments.show.videos;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.Html;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.ButtonServiceHelper;
import com.cbs.app.service.UpsellService;
import com.cbs.app.service.social.EmailService;
import com.cbs.app.service.social.EmailServiceImpl;
import com.cbs.app.service.social.FacebookService;
import com.cbs.app.service.social.FacebookServiceImplV2;
import com.cbs.app.service.social.Twitter;
import com.cbs.app.service.social.model.TweetOperation;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.ShowSocialDialog;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper.RefreshAccountListener;
import com.cbs.app.view.model.Asset;
import com.cbs.app.view.model.AssetCarouselItem;
import com.cbs.app.view.model.Episode;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.ShowConfig;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.registration.UserDescription;
import com.cbs.app.view.model.registration.UserStatus;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.ViewUtil;
import com.google.android.libraries.cast.companionlibrary.cast.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ShowDetailsFragment
  extends Fragment
{
  private static final String j = ShowDetailsFragment.class.getSimpleName();
  AccountUIHelper.RefreshAccountListener a = new AccountUIHelper.RefreshAccountListener()
  {
    public final void a()
    {
      ShowDetailsFragment.b();
      AccountUIHelper.setReconcileDialogShowing(false);
    }
  };
  String b = UserDescription.ANONYMOUS.name();
  Bundle c;
  int d = 0;
  int e = 0;
  int f = 0;
  String g;
  public ResponseModelListener h = new ResponseModelListener()
  {
    public final void a()
    {
      ShowDetailsFragment.b();
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      ShowDetailsFragment.b();
      if ((paramAnonymousResponseModel instanceof UpsellEndpointResponse))
      {
        paramAnonymousResponseModel = ((UpsellEndpointResponse)paramAnonymousResponseModel).getUpsellInfo();
        if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
        {
          paramAnonymousResponseModel = (UpsellInfo)paramAnonymousResponseModel.get(0);
          a(paramAnonymousResponseModel);
        }
      }
    }
  };
  public ResponseModelListener i = new ResponseModelListener()
  {
    public final void a()
    {
      ShowDetailsFragment.b();
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      ShowDetailsFragment.b();
      if ((paramAnonymousResponseModel instanceof UpsellEndpointResponse))
      {
        paramAnonymousResponseModel = ((UpsellEndpointResponse)paramAnonymousResponseModel).getUpsellInfo();
        if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
        {
          paramAnonymousResponseModel = (UpsellInfo)paramAnonymousResponseModel.get(0);
          g = paramAnonymousResponseModel.getCallToAction();
          ShowDetailsFragment.a(ShowDetailsFragment.this, paramAnonymousResponseModel);
        }
      }
    }
  };
  private View k;
  private Show l = null;
  private ShowConfig m = null;
  private Asset[] n = null;
  private AssetCarouselItem[] o = null;
  private Activity p;
  
  private void b(int paramInt)
  {
    Object localObject1 = "Landscape";
    if (paramInt == 1) {
      localObject1 = "Portrait";
    }
    Object localObject3;
    int i1;
    Object localObject2;
    if (n != null)
    {
      new StringBuilder("assets length: ").append(n.length);
      localObject3 = n;
      i1 = localObject3.length;
      paramInt = 0;
      if (paramInt < i1)
      {
        localObject2 = localObject3[paramInt];
        String str = ((Asset)localObject2).getFilepath();
        if ((str == null) || (!Pattern.compile(Pattern.quote((String)localObject1), 2).matcher(((Asset)localObject2).getFeature()).find()) || (str.equals("null")) || (str.equals(""))) {}
      }
    }
    for (localObject1 = localObject2;; localObject1 = null)
    {
      if (localObject1 != null)
      {
        localObject2 = k.findViewById(2131689867);
        if ((localObject2 != null) && ((localObject2 instanceof ImageView)))
        {
          localObject2 = (ImageView)localObject2;
          ((ImageView)localObject2).setVisibility(8);
          localObject1 = ((Asset)localObject1).getFilepath();
          if (localObject1 != null)
          {
            ((ImageView)localObject2).setVisibility(0);
            i1 = Util.b(p);
            paramInt = i1;
            if (Util.k(p))
            {
              localObject3 = new TypedValue();
              getResources().getValue(2131361831, (TypedValue)localObject3, true);
              paramInt = i1 - ((int)Math.round(((TypedValue)localObject3).getFloat() * i1) + Math.round(getResources().getDimension(2131361986)) * 2);
            }
            paramInt = Util.a(p, paramInt);
            i1 = Util.a(p);
            ImageHelper.c(ImageHelper.a((String)localObject1, paramInt, i1), (ImageView)localObject2);
          }
        }
      }
      return;
      paramInt += 1;
      break;
    }
  }
  
  private void c()
  {
    View localView;
    if (p != null)
    {
      if (((!Util.i(p)) || (!Util.k(p))) && ((!Util.H(p)) || (!MainApplication.getVideoCastManager().j()))) {
        break label67;
      }
      localView = k.findViewById(2131689706);
      if (localView != null) {
        localView.setVisibility(0);
      }
    }
    label67:
    do
    {
      return;
      localView = k.findViewById(2131689706);
    } while (localView == null);
    localView.setVisibility(8);
  }
  
  private void d()
  {
    k.findViewById(2131690306).setVisibility(8);
    ((LinearLayout)k.findViewById(2131690307)).setVisibility(8);
    Object localObject = AuthStatusManager.getUserAuthStatus();
    if (localObject != null)
    {
      localObject = ((AuthStatusEndpointResponse)localObject).getUserStatus();
      if (localObject != null) {
        b = ((UserStatus)localObject).getDescription();
      }
    }
    int i2 = 0;
    int i1 = i2;
    if (l != null)
    {
      i1 = i2;
      if (l.getCategory() != null)
      {
        i1 = i2;
        if (l.getCategory().equalsIgnoreCase("Classics")) {
          i1 = 1;
        }
      }
    }
    if ((i1 != 0) && (!b.equals(UserDescription.SUBSCRIBER.name())) && (!b.equals(UserDescription.SUSPENDED.name()))) {
      getClassicsOverlayData();
    }
    if ((!b.equals(UserDescription.SUBSCRIBER.name())) && (!b.equals(UserDescription.SUSPENDED.name()))) {
      getAllAccessSeasonData();
    }
  }
  
  private void e()
  {
    int i1 = Math.round(getResources().getDimension(2131361986));
    View localView = k.findViewById(2131689598);
    if (localView != null)
    {
      if (Util.k(p))
      {
        localLayoutParams = new FrameLayout.LayoutParams(-1, -1, 53);
        gravity = 53;
        localLayoutParams.setMargins(i1 * 2, i1, i1, 0);
        localView.setLayoutParams(localLayoutParams);
      }
    }
    else {
      return;
    }
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1, 53);
    gravity = 53;
    localLayoutParams.setMargins(i1, i1, i1, 0);
    localView.setLayoutParams(localLayoutParams);
  }
  
  private void f()
  {
    ImageView localImageView;
    Object localObject1;
    int i2;
    ArrayList localArrayList;
    int i1;
    Object localObject2;
    int i3;
    if ((o != null) && (o.length > 0))
    {
      localImageView = (ImageView)k.findViewById(2131690305);
      if (localImageView != null)
      {
        localObject1 = o;
        i2 = localObject1.length;
        localArrayList = null;
        i1 = 0;
        while (i1 < i2)
        {
          localArrayList = localObject1[i1];
          i1 += 1;
        }
        if (localArrayList != null)
        {
          localObject1 = localArrayList.getFilepath();
          if (localObject1 != null)
          {
            i1 = Util.b(p);
            localObject2 = new TypedValue();
            getResources().getValue(2131361831, (TypedValue)localObject2, true);
            i2 = (int)Math.round(((TypedValue)localObject2).getFloat() * i1);
            i3 = Math.round(getResources().getDimension(2131361986));
            if (!Util.k(p)) {
              break label286;
            }
            i1 -= i2 + i3 * 2;
          }
        }
      }
    }
    for (;;)
    {
      i2 = Util.a(p, i1);
      i3 = Util.a(p);
      localObject1 = ImageHelper.a((String)localObject1, i2, i3);
      localObject2 = new RelativeLayout.LayoutParams(i1, (int)Math.round(i1 * 0.5625D));
      ((RelativeLayout.LayoutParams)localObject2).addRule(10, -1);
      ((RelativeLayout.LayoutParams)localObject2).addRule(11, -1);
      localImageView.setLayoutParams((ViewGroup.LayoutParams)localObject2);
      ImageHelper.c((String)localObject1, localImageView);
      localObject1 = localArrayList.getActionUrl();
      localArrayList = localArrayList.getTarget();
      if ((localObject1 != null) && (localArrayList != null)) {
        localImageView.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent(getActivity(), CustomWebviewActivity.class);
            paramAnonymousView.putExtra("launchUrl", a);
            startActivity(paramAnonymousView);
          }
        });
      }
      return;
      label286:
      i1 -= i3 * 2;
    }
  }
  
  private void g()
  {
    e();
    f();
    b(p.getResources().getConfiguration().orientation);
    Object localObject1 = k.findViewById(2131690314);
    if ((localObject1 != null) && ((localObject1 instanceof Button)))
    {
      localObject1 = (Button)localObject1;
      ((Button)localObject1).setTag(l);
      ((Button)localObject1).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          ShowDetailsFragment.b();
          Object localObject = (Show)paramAnonymousView.getTag();
          if (localObject != null)
          {
            ShowDetailsFragment.b();
            new StringBuilder("show id:").append(((Show)localObject).getShowId());
            a();
            paramAnonymousView = Action.az;
            ShowDetailsFragment.b();
            HashMap localHashMap = new HashMap();
            localHashMap.put("events", "event19");
            localHashMap.put("ShowTitle", ((Show)localObject).getTitle());
            localHashMap.put("showId", Long.valueOf(((Show)localObject).getId()));
            localObject = "cbscom:" + ((Show)localObject).getId() + "|" + ((Show)localObject).getTitle();
            localHashMap.put("evar_63", localObject);
            localHashMap.put("prop_63", localObject);
            AnalyticsManager.a(ShowDetailsFragment.a(ShowDetailsFragment.this), paramAnonymousView, localHashMap);
          }
        }
      });
    }
    localObject1 = k.findViewById(2131690315);
    if ((localObject1 != null) && ((localObject1 instanceof Button))) {
      ButtonServiceHelper.b((Button)localObject1, getActivity(), l, "Show Page");
    }
    Button localButton = (Button)k.findViewById(2131690316);
    if (localButton != null)
    {
      Object localObject2 = null;
      localObject1 = localObject2;
      if (p != null)
      {
        localObject1 = localObject2;
        if ((p instanceof NavigationActivity)) {
          localObject1 = ((NavigationActivity)p).a(l.getId());
        }
      }
      if ((localObject1 == null) || (((List)localObject1).size() <= 0)) {
        break label337;
      }
      localButton.setTag(l);
      localButton.setVisibility(0);
      localObject1 = (Episode)((List)localObject1).get(0);
      ButtonServiceHelper.a(localButton, p, (Episode)localObject1, "Show Home");
    }
    for (;;)
    {
      localObject1 = (ImageButton)k.findViewById(2131690281);
      if (localObject1 != null)
      {
        ((ImageButton)localObject1).setTag(l);
        ((ImageButton)localObject1).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            ShowDetailsFragment.b();
            paramAnonymousView = (Show)paramAnonymousView.getTag();
            if (paramAnonymousView != null)
            {
              ShowDetailsFragment.b();
              new StringBuilder("show id:").append(paramAnonymousView.getShowId());
              Object localObject = ShowDetailsFragment.b(ShowDetailsFragment.this).getFacebookLink();
              if (localObject == null)
              {
                Util.a(paramAnonymousView, ShowDetailsFragment.b(ShowDetailsFragment.this));
                new FacebookServiceImplV2(ShowDetailsFragment.a(ShowDetailsFragment.this)).a(paramAnonymousView);
              }
              if (localObject != null)
              {
                localObject = new Intent("android.intent.action.VIEW", Uri.parse((String)localObject));
                if (Util.a(getActivity(), (Intent)localObject)) {
                  ShowDetailsFragment.a(ShowDetailsFragment.this).startActivity((Intent)localObject);
                }
              }
              localObject = Action.aD;
              ShowDetailsFragment.b();
              HashMap localHashMap = new HashMap();
              localHashMap.put("ShowTitle", paramAnonymousView.getTitle());
              localHashMap.put("showId", Long.valueOf(paramAnonymousView.getId()));
              paramAnonymousView = "cbscom:" + paramAnonymousView.getId() + "|" + paramAnonymousView.getTitle();
              localHashMap.put("evar_63", paramAnonymousView);
              localHashMap.put("prop_63", paramAnonymousView);
              localHashMap.put("events", "event19, event10");
              AnalyticsManager.a(ShowDetailsFragment.a(ShowDetailsFragment.this), (Action)localObject, localHashMap);
            }
          }
        });
      }
      localObject1 = (ImageButton)k.findViewById(2131689704);
      if (localObject1 != null)
      {
        ((ImageButton)localObject1).setTag(l);
        ((ImageButton)localObject1).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            ShowDetailsFragment.b();
            paramAnonymousView = (Show)paramAnonymousView.getTag();
            Object localObject;
            if (paramAnonymousView != null)
            {
              ShowDetailsFragment.b();
              new StringBuilder("show id:").append(paramAnonymousView.getShowId());
              localObject = ShowDetailsFragment.b(ShowDetailsFragment.this).getTwitterLink();
              if (localObject != null) {
                break label213;
              }
              localObject = Util.a(paramAnonymousView, ShowDetailsFragment.b(ShowDetailsFragment.this));
              ShowDetailsFragment.b();
              new Twitter(ShowDetailsFragment.a(ShowDetailsFragment.this)).a(new TweetOperation((String)localObject));
            }
            for (;;)
            {
              localObject = Action.aC;
              ShowDetailsFragment.b();
              HashMap localHashMap = new HashMap();
              localHashMap.put("ShowTitle", paramAnonymousView.getTitle());
              localHashMap.put("showId", Long.valueOf(paramAnonymousView.getId()));
              paramAnonymousView = "cbscom:" + paramAnonymousView.getId() + "|" + paramAnonymousView.getTitle();
              localHashMap.put("evar_63", paramAnonymousView);
              localHashMap.put("prop_63", paramAnonymousView);
              localHashMap.put("sendEvent10", "anything");
              localHashMap.put("events", "event19, event10");
              AnalyticsManager.a(ShowDetailsFragment.a(ShowDetailsFragment.this), (Action)localObject, localHashMap);
              return;
              label213:
              localObject = ShowSocialDialog.a((String)localObject);
              new Twitter(ShowDetailsFragment.a(ShowDetailsFragment.this)).b((String)localObject);
            }
          }
        });
      }
      localObject1 = (ImageButton)k.findViewById(2131690317);
      if (localObject1 != null)
      {
        ((ImageButton)localObject1).setTag(l);
        ((ImageButton)localObject1).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            ShowDetailsFragment.b();
            paramAnonymousView = (Show)paramAnonymousView.getTag();
            if (paramAnonymousView != null)
            {
              ShowDetailsFragment.b();
              new StringBuilder("show id:").append(paramAnonymousView.getShowId());
              Object localObject1 = Util.a(paramAnonymousView, ShowDetailsFragment.b(ShowDetailsFragment.this));
              Object localObject2 = new EmailServiceImpl();
              ((EmailService)localObject2).setContext(getActivity());
              ((EmailService)localObject2).a(paramAnonymousView.getTitle(), (String)localObject1);
              localObject1 = Action.aE;
              ShowDetailsFragment.b();
              localObject2 = new HashMap();
              ((HashMap)localObject2).put("ShowTitle", paramAnonymousView.getTitle());
              ((HashMap)localObject2).put("showId", Long.valueOf(paramAnonymousView.getId()));
              paramAnonymousView = "cbscom:" + paramAnonymousView.getId() + "|" + paramAnonymousView.getTitle();
              ((HashMap)localObject2).put("evar_63", paramAnonymousView);
              ((HashMap)localObject2).put("prop_63", paramAnonymousView);
              ((HashMap)localObject2).put("sendEvent10", "anything");
              ((HashMap)localObject2).put("events", "event19, event10");
              AnalyticsManager.a(ShowDetailsFragment.a(ShowDetailsFragment.this), (Action)localObject1, (HashMap)localObject2);
            }
          }
        });
      }
      return;
      label337:
      localButton.setVisibility(8);
    }
  }
  
  public final void a()
  {
    final Dialog localDialog = new Dialog(p);
    localDialog.requestWindowFeature(1);
    localDialog.setContentView(2130903279);
    View localView = localDialog.findViewById(2131689841);
    if ((localView != null) && ((localView instanceof Button))) {
      ((Button)localView).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          localDialog.dismiss();
        }
      });
    }
    if (l != null)
    {
      localView = localDialog.findViewById(2131689840);
      if ((localView != null) && ((localView instanceof TextView))) {
        ((TextView)localView).setText(l.getTitle());
      }
      localView = localDialog.findViewById(2131689859);
      if ((localView != null) && ((localView instanceof TextView))) {
        ((TextView)localView).setText(l.getAbout());
      }
    }
    localDialog.show();
  }
  
  public final void a(int paramInt)
  {
    if (k != null)
    {
      e();
      f();
      b(paramInt);
      c();
    }
  }
  
  public final void a(UpsellInfo paramUpsellInfo)
  {
    Object localObject1 = paramUpsellInfo.getUpsellMessage();
    paramUpsellInfo = paramUpsellInfo.getCallToAction();
    float f1;
    int i1;
    if ((k != null) && (localObject1 != null) && (paramUpsellInfo != null))
    {
      new StringBuilder(" Overlay view : ").append(k);
      Object localObject2 = k.findViewById(2131690306);
      ((View)localObject2).setVisibility(0);
      if (localObject2 != null)
      {
        new StringBuilder(" Overlay include : ").append(localObject2);
        f1 = p.getResources().getDisplayMetrics().density;
        if (!Util.i(getActivity())) {
          break label270;
        }
        i1 = (int)(f1 * 90.0F + 0.5F);
        RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
        localLayoutParams.setMargins(0, i1, 0, 0);
        localLayoutParams.addRule(14);
        ((View)localObject2).setLayoutParams(localLayoutParams);
      }
      localObject2 = ViewUtil.a(k, 2131690196);
      if (localObject2 != null) {
        ((TextView)localObject2).setText(Html.fromHtml((String)localObject1));
      }
      localObject1 = (Button)k.findViewById(2131690197);
      if (localObject1 != null)
      {
        if (!Util.G(getActivity())) {
          break label284;
        }
        ((Button)localObject1).setVisibility(8);
      }
    }
    for (;;)
    {
      if ((!b.equalsIgnoreCase(UserDescription.REGISTERED.name())) && (!b.equalsIgnoreCase(UserDescription.EX_SUBSCRIBER.name()))) {
        break label306;
      }
      ((LinearLayout)k.findViewById(2131689793)).setVisibility(8);
      return;
      label270:
      i1 = (int)(f1 * 120.0F + 0.5F);
      break;
      label284:
      ((Button)localObject1).setText(paramUpsellInfo);
      ((Button)localObject1).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          ShowDetailsFragment.b();
          SVODPopupHelper.setWeWantToSeeVideo(null);
          SVODPopupHelper.setWeWantToSeeShow(null);
          SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(true);
          SVODPopupHelper.c(ShowDetailsFragment.a(ShowDetailsFragment.this));
          paramAnonymousView = new HashMap();
          String str = "Classics;" + ShowDetailsFragment.c(ShowDetailsFragment.this).getTitle() + ";;;show button";
          paramAnonymousView.put("evar_18", str);
          paramAnonymousView.put("prop_18", str);
          paramAnonymousView.put("events", "event19");
          AnalyticsManager.a(getActivity(), Action.bO, paramAnonymousView);
        }
      });
    }
    label306:
    ((TextView)k.findViewById(2131689795)).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ShowDetailsFragment.b();
        SVODPopupHelper.setWeWantToSeeVideo(null);
        SVODPopupHelper.setWeWantToSeeShow(null);
        SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(true);
        AccountUIHelper.setFrom("");
        AccountUIHelper.b(ShowDetailsFragment.a(ShowDetailsFragment.this), "CBS ALL ACCESS Sign In");
      }
    });
  }
  
  public final void a(AssetCarouselItem[] paramArrayOfAssetCarouselItem, int paramInt1, int paramInt2, int paramInt3)
  {
    o = paramArrayOfAssetCarouselItem;
    d = paramInt1;
    e = paramInt2;
    f = paramInt3;
    d();
    g();
  }
  
  public void getAllAccessSeasonData()
  {
    new UpsellService().a(getActivity(), "ALL_ACCESS_SEASON_DATA", i);
  }
  
  public void getClassicsOverlayData()
  {
    new UpsellService().a(getActivity(), "CLASSICS_OVERLAY", h);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    p = paramActivity;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    AccountUIHelper.a(a);
    k = paramLayoutInflater.inflate(2130903274, paramViewGroup, false);
    c = getArguments();
    if (c != null)
    {
      l = ((Show)c.getParcelable("show"));
      m = ((ShowConfig)c.getParcelable("configuration"));
      paramLayoutInflater = c.getParcelableArray("assets");
      if ((paramLayoutInflater != null) && ((paramLayoutInflater instanceof Asset[]))) {
        n = ((Asset[])paramLayoutInflater);
      }
      paramLayoutInflater = c.getParcelableArray("assetCarousel");
      if ((paramLayoutInflater != null) && ((paramLayoutInflater instanceof AssetCarouselItem[]))) {
        o = ((AssetCarouselItem[])paramLayoutInflater);
      }
      if ((n != null) && (p != null) && (k != null) && (l != null) && (Util.h(p))) {
        g();
      }
    }
    c();
    return k;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    AccountUIHelper.b(a);
  }
  
  public void onResume()
  {
    super.onResume();
    AccountUIHelper.i(getActivity());
    d();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.ShowDetailsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */