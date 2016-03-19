package com.cbs.app.view.fragments.show.videos;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.b.a.a.b;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.service.social.EmailService;
import com.cbs.app.service.social.EmailServiceImpl;
import com.cbs.app.service.social.FacebookService;
import com.cbs.app.service.social.FacebookServiceImplV2;
import com.cbs.app.service.social.Twitter;
import com.cbs.app.service.social.model.TweetOperation;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.ThumbNailView;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper.RefreshAccountListener;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.model.Asset;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.ShowConfig;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.cbs.app.view.utils.ViewUtil;
import com.cbs.app.visualon.player.CBSPlayer;
import com.cbs.app.visualon.player.PlayerFragment;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

public class VideoDetailsFragment
  extends AbstractAsyncFragment
{
  private static final String h = VideoDetailsFragment.class.getSimpleName();
  private View i;
  private Show j;
  private ShowConfig k;
  private VideoData l = null;
  private final AccountUIHelper.RefreshAccountListener m = new AccountUIHelper.RefreshAccountListener()
  {
    public final void a()
    {
      VideoDetailsFragment.a(VideoDetailsFragment.a(VideoDetailsFragment.this));
      AccountUIHelper.setReconcileDialogShowing(false);
    }
  };
  private Asset[] n = null;
  private boolean o = false;
  private boolean p = false;
  private boolean q = false;
  private long r = -1L;
  private int s = 0;
  private ViewTreeObserver.OnGlobalLayoutListener t = new ViewTreeObserver.OnGlobalLayoutListener()
  {
    public final void onGlobalLayout()
    {
      ViewTreeObserver localViewTreeObserver = VideoDetailsFragment.c(VideoDetailsFragment.this).getViewTreeObserver();
      if (Build.VERSION.SDK_INT < 16) {
        localViewTreeObserver.removeGlobalOnLayoutListener(this);
      }
      for (;;)
      {
        CBSPlayer.a(true);
        return;
        localViewTreeObserver.removeOnGlobalLayoutListener(this);
      }
    }
  };
  
  public static void a(VideoData paramVideoData)
  {
    AccountUIHelper.a(paramVideoData);
  }
  
  public final void a(int paramInt)
  {
    if (i == null) {
      return;
    }
    Object localObject3;
    int i2;
    int i1;
    label67:
    Object localObject2;
    if (n != null)
    {
      localObject3 = (ImageView)i.findViewById(2131690413);
      if (localObject3 != null)
      {
        localObject1 = "Landscape Background";
        if (Util.l(g)) {
          localObject1 = "Portrait Background";
        }
        Asset[] arrayOfAsset = n;
        i2 = arrayOfAsset.length;
        i1 = 0;
        if (i1 >= i2) {
          break label607;
        }
        localObject2 = arrayOfAsset[i1];
        if ((((Asset)localObject2).getFilepath() == null) || (!((Asset)localObject2).getTitle().contains((CharSequence)localObject1)) || (((Asset)localObject2).getFilepath().equals("null")) || (((Asset)localObject2).getFilepath().equals(""))) {
          break label351;
        }
      }
    }
    label351:
    label607:
    for (Object localObject1 = localObject2;; localObject1 = null)
    {
      if (localObject1 != null)
      {
        ((ImageView)localObject3).setVisibility(8);
        localObject1 = ((Asset)localObject1).getFilepath();
        if (localObject1 != null)
        {
          ((ImageView)localObject3).setVisibility(0);
          i2 = Util.b(g);
          i1 = i2;
          if (Util.k(g))
          {
            localObject2 = new TypedValue();
            getResources().getValue(2131361831, (TypedValue)localObject2, true);
            i1 = i2 - ((int)Math.round(((TypedValue)localObject2).getFloat() * i2) + Math.round(getResources().getDimension(2131361986)) * 2);
          }
          i1 = Util.a(g, i1);
          i2 = Util.a(g);
          ImageHelper.c(ImageHelper.a((String)localObject1, i1, i2), (ImageView)localObject3);
        }
      }
      localObject2 = ViewUtil.a(i);
      localObject1 = (LinearLayout)i.findViewById(2131690414);
      if (CBSPlayer.y())
      {
        localObject3 = new LinearLayout.LayoutParams(-1, -1);
        ((LinearLayout.LayoutParams)localObject3).setMargins(0, 0, 0, 0);
        ((FrameLayout)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
        localObject2 = new FrameLayout.LayoutParams(-1, -1);
        ((FrameLayout.LayoutParams)localObject2).setMargins(0, 0, 0, 0);
        ((LinearLayout)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
        return;
        i1 += 1;
        break label67;
      }
      i1 = Math.round(getResources().getDimension(2131361986));
      i2 = Util.b(g);
      if (paramInt == 2)
      {
        localObject3 = new TypedValue();
        getResources().getValue(2131361831, (TypedValue)localObject3, true);
        paramInt = i2 - (i1 * 2 + (int)Math.round(((TypedValue)localObject3).getFloat() * i2));
        ((FrameLayout)localObject2).setLayoutParams(new LinearLayout.LayoutParams(paramInt, (int)Math.round(paramInt * 0.5625D)));
        localObject2 = new FrameLayout.LayoutParams(-1, -1);
        ((FrameLayout.LayoutParams)localObject2).setMargins(Util.a(g, 24.0D), Util.a(g, 12.0D), Util.a(g, 12.0D), 0);
        gravity = 0;
        ((LinearLayout)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
        return;
      }
      paramInt = i2 - i1 * 2;
      ((FrameLayout)localObject2).setLayoutParams(new LinearLayout.LayoutParams(paramInt, (int)Math.round(paramInt * 0.5625D)));
      if (localObject1 == null) {
        break;
      }
      localObject2 = new FrameLayout.LayoutParams(-1, -1);
      ((FrameLayout.LayoutParams)localObject2).setMargins(Util.a(g, 12.0D), Util.a(g, 12.0D), Util.a(g, 12.0D), 0);
      gravity = 53;
      ((LinearLayout)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
      return;
    }
  }
  
  public View onCreateView(final LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    AccountUIHelper.a(m);
    q = true;
    i = paramLayoutInflater.inflate(2130903306, paramViewGroup, false);
    paramLayoutInflater = getArguments();
    if (paramLayoutInflater != null)
    {
      l = ((VideoData)paramLayoutInflater.getParcelable("videoData"));
      j = ((Show)paramLayoutInflater.getParcelable("show"));
      paramLayoutInflater.getString("pid");
      k = ((ShowConfig)paramLayoutInflater.getParcelable("configuration"));
      new StringBuilder("video details for: ").append(j.getShowId());
      r = paramLayoutInflater.getLong("resumeTime");
      s = paramLayoutInflater.getInt("resumeMode");
      paramLayoutInflater.remove("resumeTime");
      paramLayoutInflater.remove("resumeMode");
      if ((j != null) && (j.getCategory() != null) && (j.getCategory().equalsIgnoreCase("Classics"))) {
        p = true;
      }
      paramViewGroup = paramLayoutInflater.getParcelableArray("assets");
      if ((paramViewGroup != null) && ((paramViewGroup instanceof Asset[]))) {
        n = ((Asset[])paramViewGroup);
      }
      o = paramLayoutInflater.getBoolean("first");
      if ((q) && (g != null) && (i != null))
      {
        if ((!Util.g(g)) && (!Util.f(g))) {
          break label617;
        }
        paramLayoutInflater = (ThumbNailView)i.findViewById(2131690408);
        int i1 = Util.a(g);
        ImageHelper.a(ImageHelper.b(VideoUtil.d(l), 144.0D, i1), paramLayoutInflater);
        paramViewGroup = (TextView)i.findViewById(2131690133);
        if (paramViewGroup != null) {
          paramViewGroup.setText(l.getSeriesTitle());
        }
        if ((o) && (!p))
        {
          paramViewGroup = (TextView)i.findViewById(2131690409);
          if (paramViewGroup != null)
          {
            paramViewGroup.setText("Latest");
            paramViewGroup.setVisibility(0);
          }
        }
        paramViewGroup = (TextView)i.findViewById(2131690134);
        if (paramViewGroup != null) {
          paramViewGroup.setText(VideoUtil.b(l));
        }
        paramViewGroup = (TextView)i.findViewById(2131690410);
        if (paramViewGroup != null) {
          paramViewGroup.setText(Util.b(l));
        }
        paramViewGroup = (TextView)i.findViewById(2131690411);
        if (paramViewGroup != null) {
          paramViewGroup.setText(Util.c(l));
        }
        paramLayoutInflater.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            VideoDetailsFragment.a();
            paramAnonymousView = ShowServiceManager.a(VideoDetailsFragment.a(VideoDetailsFragment.this).getCbsShowId());
            VideoUtil.a(VideoDetailsFragment.b(VideoDetailsFragment.this), VideoDetailsFragment.a(VideoDetailsFragment.this), paramAnonymousView);
            VideoDetailsFragment.a(VideoDetailsFragment.this, VideoDetailsFragment.a(VideoDetailsFragment.this));
          }
        });
        if (VideoUtil.c(l)) {
          break label601;
        }
        paramLayoutInflater.setFlagVisibility(1);
        paramViewGroup = l.getCid();
        paramLayoutInflater = paramViewGroup;
      }
    }
    try
    {
      paramViewGroup = b.a(paramViewGroup);
      paramLayoutInflater = paramViewGroup;
      paramViewGroup = paramViewGroup.replace("=", "&amp;#61;");
      paramLayoutInflater = paramViewGroup;
    }
    catch (UnsupportedEncodingException paramViewGroup)
    {
      for (;;)
      {
        paramViewGroup.printStackTrace();
      }
    }
    paramViewGroup = getChildFragmentManager().beginTransaction();
    paramBundle = new Bundle();
    paramBundle.putString("articleId", paramLayoutInflater);
    if (j.getCategory() != null) {
      paramBundle.putString("showCategory", j.getCategory());
    }
    paramViewGroup.replace(2131690412, Fragment.instantiate(g, EpisodeCommentsFragment.class.getName(), paramBundle), "fragment_episode_comments");
    paramViewGroup.commit();
    label601:
    label617:
    label1327:
    for (;;)
    {
      return i;
      paramLayoutInflater.setFlagVisibility(0);
      break;
      a(g.getResources().getConfiguration().orientation);
      if (i != null)
      {
        if (l != null)
        {
          if ((i != null) && (q) && (i.findViewById(2131690415) != null))
          {
            paramLayoutInflater = getChildFragmentManager().beginTransaction();
            paramViewGroup = new PlayerFragment();
            paramBundle = new Bundle();
            paramBundle.putLong("resumeTime", r);
            paramBundle.putInt("resumeMode", s);
            new StringBuilder("resumeTime: ").append(r);
            new StringBuilder("resumeMode: ").append(s);
            r = -1L;
            s = 0;
            paramBundle.putParcelable("videoData", l);
            paramViewGroup.setArguments(paramBundle);
            paramLayoutInflater.replace(2131690415, paramViewGroup, "videoplayer_fragment");
            paramLayoutInflater.commit();
            i.getViewTreeObserver().addOnGlobalLayoutListener(t);
          }
          paramBundle = (TextView)i.findViewById(2131690418);
          if (paramBundle != null)
          {
            paramViewGroup = Util.b(l);
            paramLayoutInflater = paramViewGroup;
            if (paramViewGroup != null)
            {
              paramLayoutInflater = paramViewGroup;
              if (!paramViewGroup.equals("")) {
                paramLayoutInflater = " (" + paramViewGroup + ")";
              }
            }
            paramBundle.setText(l.getTitle() + paramLayoutInflater);
          }
          paramLayoutInflater = (TextView)i.findViewById(2131690419);
          if (paramLayoutInflater != null)
          {
            paramViewGroup = Util.c(l);
            paramLayoutInflater.setText(Util.a(l.getDuration()) + " | " + paramViewGroup);
          }
          paramLayoutInflater = Util.a(l);
          paramViewGroup = (Button)i.findViewById(2131690420);
          if (paramViewGroup != null)
          {
            paramViewGroup.setTag(l);
            paramViewGroup.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                VideoDetailsFragment.a();
                VideoDetailsFragment.d(VideoDetailsFragment.this);
              }
            });
          }
          paramViewGroup = (Button)i.findViewById(2131690422);
          if (paramViewGroup != null)
          {
            paramViewGroup.setVisibility(0);
            paramViewGroup.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                VideoDetailsFragment.a();
                Intent localIntent = new Intent(VideoDetailsFragment.e(VideoDetailsFragment.this), EpisodeCommentsActivity.class);
                String str1 = VideoDetailsFragment.a(VideoDetailsFragment.this).getCid();
                paramAnonymousView = str1;
                try
                {
                  str1 = b.a(str1);
                  paramAnonymousView = str1;
                  str1 = str1.replace("=", "&amp;#61;");
                  paramAnonymousView = str1;
                }
                catch (UnsupportedEncodingException localUnsupportedEncodingException)
                {
                  for (;;)
                  {
                    String str2;
                    localUnsupportedEncodingException.printStackTrace();
                  }
                }
                localIntent.putExtra("articleId", paramAnonymousView);
                paramAnonymousView = "Episode Comments";
                if (VideoDetailsFragment.f(VideoDetailsFragment.this) != null)
                {
                  str1 = VideoDetailsFragment.f(VideoDetailsFragment.this).getTitle();
                  paramAnonymousView = str1;
                  if (VideoDetailsFragment.a(VideoDetailsFragment.this) != null)
                  {
                    str2 = VideoUtil.b(VideoDetailsFragment.a(VideoDetailsFragment.this));
                    paramAnonymousView = str1;
                    if (str2 != null)
                    {
                      paramAnonymousView = str1;
                      if (!str2.equals("")) {
                        paramAnonymousView = str1 + " - " + VideoUtil.b(VideoDetailsFragment.a(VideoDetailsFragment.this));
                      }
                    }
                  }
                  paramAnonymousView = paramAnonymousView + " Comments";
                }
                localIntent.putExtra("articleTitle", paramAnonymousView);
                if (VideoDetailsFragment.f(VideoDetailsFragment.this).getCategory() != null) {
                  localIntent.putExtra("showCategory", VideoDetailsFragment.f(VideoDetailsFragment.this).getCategory());
                }
                VideoDetailsFragment.g(VideoDetailsFragment.this).startActivity(localIntent);
              }
            });
          }
          paramViewGroup = (ImageButton)i.findViewById(2131690281);
          if (paramViewGroup != null)
          {
            paramViewGroup.setTag(l);
            paramViewGroup.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                VideoDetailsFragment.a();
                Object localObject = (VideoData)paramAnonymousView.getTag();
                HashMap localHashMap;
                String str;
                if (VideoDetailsFragment.f(VideoDetailsFragment.this) != null)
                {
                  VideoDetailsFragment.a();
                  new StringBuilder("video id:").append(((VideoData)localObject).getPid());
                  new FacebookServiceImplV2(VideoDetailsFragment.h(VideoDetailsFragment.this)).a(VideoDetailsFragment.a(VideoDetailsFragment.this));
                  localHashMap = new HashMap();
                  localHashMap.put("appState", "cbscom:" + Action.j.getAppState());
                  if (!((VideoData)localObject).getFullEpisode()) {
                    break label373;
                  }
                  paramAnonymousView = Action.aQ;
                  localHashMap.put("EpisodeTitle", VideoUtil.b((VideoData)localObject));
                  str = "cbscom:" + ((VideoData)localObject).getCid() + "|" + VideoUtil.b((VideoData)localObject);
                  localHashMap.put("evar_64", str);
                  localHashMap.put("prop_64", str);
                }
                for (;;)
                {
                  localHashMap.put("events", "event19,event10");
                  VideoDetailsFragment.a();
                  localHashMap.put("ShowTitle", VideoDetailsFragment.f(VideoDetailsFragment.this).getTitle());
                  localHashMap.put("showId", Long.valueOf(VideoDetailsFragment.f(VideoDetailsFragment.this).getId()));
                  localHashMap.put("EpisodeTitle", VideoUtil.b((VideoData)localObject));
                  localHashMap.put("VideoID", ((VideoData)localObject).getPid());
                  localHashMap.put("ContentID", ((VideoData)localObject).getCid());
                  str = "cbscom:" + VideoDetailsFragment.f(VideoDetailsFragment.this).getId() + "|" + VideoDetailsFragment.f(VideoDetailsFragment.this).getTitle();
                  localHashMap.put("evar_63", str);
                  localHashMap.put("prop_63", str);
                  localObject = "cbscom:" + ((VideoData)localObject).getPid();
                  localHashMap.put("evar_31", localObject);
                  localHashMap.put("prop_31", localObject);
                  AnalyticsManager.a(VideoDetailsFragment.i(VideoDetailsFragment.this), paramAnonymousView, localHashMap);
                  return;
                  label373:
                  paramAnonymousView = Action.aN;
                  localHashMap.put("ClipTitle", VideoUtil.b((VideoData)localObject));
                  str = "cbscom:" + ((VideoData)localObject).getCid() + "|" + VideoUtil.b((VideoData)localObject);
                  localHashMap.put("evar_62", str);
                  localHashMap.put("prop_62", str);
                }
              }
            });
          }
          paramViewGroup = (ImageButton)i.findViewById(2131689704);
          if (paramViewGroup != null)
          {
            paramViewGroup.setTag(l);
            paramViewGroup.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                VideoDetailsFragment.a();
                Object localObject = (VideoData)paramAnonymousView.getTag();
                HashMap localHashMap;
                String str;
                if (localObject != null)
                {
                  VideoDetailsFragment.a();
                  new StringBuilder("video id:").append(((VideoData)localObject).getPid());
                  new Twitter(VideoDetailsFragment.j(VideoDetailsFragment.this)).a(new TweetOperation(paramLayoutInflater));
                  localHashMap = new HashMap();
                  localHashMap.put("appState", "cbscom:" + Action.j.getAppState());
                  if (!((VideoData)localObject).getFullEpisode()) {
                    break label369;
                  }
                  paramAnonymousView = Action.aP;
                  localHashMap.put("EpisodeTitle", VideoUtil.b((VideoData)localObject));
                  str = "cbscom:" + ((VideoData)localObject).getCid() + "|" + VideoUtil.b((VideoData)localObject);
                  localHashMap.put("evar_64", str);
                  localHashMap.put("prop_64", str);
                }
                for (;;)
                {
                  VideoDetailsFragment.a();
                  localHashMap.put("ShowTitle", VideoDetailsFragment.f(VideoDetailsFragment.this).getTitle());
                  localHashMap.put("showId", Long.valueOf(VideoDetailsFragment.f(VideoDetailsFragment.this).getId()));
                  localHashMap.put("EpisodeTitle", VideoUtil.b((VideoData)localObject));
                  localHashMap.put("VideoID", ((VideoData)localObject).getPid());
                  localHashMap.put("ContentID", ((VideoData)localObject).getCid());
                  str = "cbscom:" + VideoDetailsFragment.f(VideoDetailsFragment.this).getId() + "|" + VideoDetailsFragment.f(VideoDetailsFragment.this).getTitle();
                  localHashMap.put("evar_63", str);
                  localHashMap.put("prop_63", str);
                  localObject = "cbscom:" + ((VideoData)localObject).getPid();
                  localHashMap.put("evar_31", localObject);
                  localHashMap.put("prop_31", localObject);
                  localHashMap.put("events", "event19,event10");
                  AnalyticsManager.a(VideoDetailsFragment.k(VideoDetailsFragment.this), paramAnonymousView, localHashMap);
                  return;
                  label369:
                  paramAnonymousView = Action.aM;
                  localHashMap.put("ClipTitle", VideoUtil.b((VideoData)localObject));
                  str = "cbscom:" + ((VideoData)localObject).getCid() + "|" + VideoUtil.b((VideoData)localObject);
                  localHashMap.put("evar_62", str);
                  localHashMap.put("prop_62", str);
                }
              }
            });
          }
          paramViewGroup = (ImageButton)i.findViewById(2131690317);
          if (paramViewGroup != null)
          {
            paramViewGroup.setTag(l);
            paramViewGroup.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                VideoDetailsFragment.a();
                Object localObject = (VideoData)paramAnonymousView.getTag();
                HashMap localHashMap;
                String str;
                if (VideoDetailsFragment.f(VideoDetailsFragment.this) != null)
                {
                  VideoDetailsFragment.a();
                  new StringBuilder("video id:").append(((VideoData)localObject).getPid());
                  paramAnonymousView = new EmailServiceImpl();
                  paramAnonymousView.setContext(VideoDetailsFragment.l(VideoDetailsFragment.this));
                  paramAnonymousView.a(VideoDetailsFragment.f(VideoDetailsFragment.this).getTitle(), paramLayoutInflater);
                  localHashMap = new HashMap();
                  localHashMap.put("appState", "cbscom:" + Action.j.getAppState());
                  if (!((VideoData)localObject).getFullEpisode()) {
                    break label377;
                  }
                  paramAnonymousView = Action.aR;
                  localHashMap.put("EpisodeTitle", VideoUtil.b((VideoData)localObject));
                  str = "cbscom:" + ((VideoData)localObject).getCid() + "|" + VideoUtil.b((VideoData)localObject);
                  localHashMap.put("evar_64", str);
                  localHashMap.put("prop_64", str);
                }
                for (;;)
                {
                  VideoDetailsFragment.a();
                  localHashMap.put("ShowTitle", VideoDetailsFragment.f(VideoDetailsFragment.this).getTitle());
                  localHashMap.put("showId", Long.valueOf(VideoDetailsFragment.f(VideoDetailsFragment.this).getId()));
                  localHashMap.put("VideoID", ((VideoData)localObject).getPid());
                  localHashMap.put("ContentID", ((VideoData)localObject).getCid());
                  str = "cbscom:" + VideoDetailsFragment.f(VideoDetailsFragment.this).getId() + "|" + VideoDetailsFragment.f(VideoDetailsFragment.this).getTitle();
                  localHashMap.put("evar_63", str);
                  localHashMap.put("prop_63", str);
                  localObject = "cbscom:" + ((VideoData)localObject).getPid();
                  localHashMap.put("evar_31", localObject);
                  localHashMap.put("prop_31", localObject);
                  localHashMap.put("events", "event19");
                  AnalyticsManager.a(VideoDetailsFragment.m(VideoDetailsFragment.this), paramAnonymousView, localHashMap);
                  return;
                  label377:
                  paramAnonymousView = Action.aO;
                  localHashMap.put("ClipTitle", VideoUtil.b((VideoData)localObject));
                  str = "cbscom:" + ((VideoData)localObject).getCid() + "|" + VideoUtil.b((VideoData)localObject);
                  localHashMap.put("evar_62", str);
                  localHashMap.put("prop_62", str);
                }
              }
            });
          }
        }
        if (k != null)
        {
          paramLayoutInflater = k.getAmazonBuyLink();
          paramViewGroup = k.getVuduBuyLink();
          paramBundle = k.getItunesBuyLink();
          if ((paramLayoutInflater != null) && (!paramLayoutInflater.equals("null"))) {}
          for (;;)
          {
            if (paramLayoutInflater == null) {
              break label1327;
            }
            paramViewGroup = (Button)i.findViewById(2131690421);
            if (paramViewGroup == null) {
              break;
            }
            if (paramLayoutInflater.equals(""))
            {
              paramViewGroup.setEnabled(false);
              paramViewGroup.setTextColor(getResources().getColor(2131558569));
            }
            paramViewGroup.setVisibility(0);
            paramViewGroup.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                VideoDetailsFragment.a();
                new StringBuilder("onClick buyEpisodeButton:").append(paramLayoutInflater);
                if (!paramLayoutInflater.equals(""))
                {
                  paramAnonymousView = new Intent("android.intent.action.VIEW", Uri.parse(paramLayoutInflater));
                  if (Util.a(VideoDetailsFragment.n(VideoDetailsFragment.this), paramAnonymousView)) {
                    startActivity(paramAnonymousView);
                  }
                }
                HashMap localHashMap = new HashMap();
                localHashMap.put("appState", "cbscom:" + Action.j.getAppState());
                String str;
                if (VideoDetailsFragment.a(VideoDetailsFragment.this).getFullEpisode())
                {
                  paramAnonymousView = Action.aS;
                  localHashMap.put("EpisodeTitle", VideoUtil.b(VideoDetailsFragment.a(VideoDetailsFragment.this)));
                  str = "cbscom:" + VideoDetailsFragment.a(VideoDetailsFragment.this).getCid() + "|" + VideoUtil.b(VideoDetailsFragment.a(VideoDetailsFragment.this));
                  localHashMap.put("evar_64", str);
                  localHashMap.put("prop_64", str);
                }
                for (;;)
                {
                  VideoDetailsFragment.a();
                  localHashMap.put("ShowTitle", VideoDetailsFragment.f(VideoDetailsFragment.this).getTitle());
                  localHashMap.put("showId", Long.valueOf(VideoDetailsFragment.f(VideoDetailsFragment.this).getId()));
                  localHashMap.put("VideoID", VideoDetailsFragment.a(VideoDetailsFragment.this).getPid());
                  localHashMap.put("ContentID", VideoDetailsFragment.a(VideoDetailsFragment.this).getCid());
                  str = "cbscom:" + VideoDetailsFragment.f(VideoDetailsFragment.this).getId() + "|" + VideoDetailsFragment.f(VideoDetailsFragment.this).getTitle();
                  localHashMap.put("evar_63", str);
                  localHashMap.put("prop_63", str);
                  str = "cbscom:" + VideoDetailsFragment.a(VideoDetailsFragment.this).getPid();
                  localHashMap.put("evar_31", str);
                  localHashMap.put("prop_31", str);
                  localHashMap.put("events", "event19");
                  AnalyticsManager.a(VideoDetailsFragment.o(VideoDetailsFragment.this), paramAnonymousView, localHashMap);
                  return;
                  paramAnonymousView = Action.aS;
                  localHashMap.put("ClipTitle", VideoUtil.b(VideoDetailsFragment.a(VideoDetailsFragment.this)));
                  str = "cbscom:" + VideoDetailsFragment.a(VideoDetailsFragment.this).getCid() + "|" + VideoUtil.b(VideoDetailsFragment.a(VideoDetailsFragment.this));
                  localHashMap.put("evar_62", str);
                  localHashMap.put("prop_62", str);
                }
              }
            });
            break;
            if (paramViewGroup != null)
            {
              paramLayoutInflater = paramViewGroup;
              if (!paramViewGroup.equals("null")) {}
            }
            else if ((paramBundle != null) && (!paramBundle.equals("null")))
            {
              paramLayoutInflater = paramBundle;
            }
            else
            {
              paramLayoutInflater = null;
            }
          }
        }
      }
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    AccountUIHelper.b(m);
    ViewTreeObserver localViewTreeObserver = i.getViewTreeObserver();
    if (Build.VERSION.SDK_INT < 16) {
      localViewTreeObserver.removeGlobalOnLayoutListener(t);
    }
    for (;;)
    {
      i = null;
      j = null;
      k = null;
      return;
      localViewTreeObserver.removeOnGlobalLayoutListener(t);
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
  }
  
  public void onPause()
  {
    super.onPause();
    q = false;
  }
  
  public void onResume()
  {
    super.onResume();
    q = true;
    AccountUIHelper.i(g);
    if ((g != null) && ((g instanceof NavigationActivity))) {
      ((NavigationActivity)g).i();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideoDetailsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */