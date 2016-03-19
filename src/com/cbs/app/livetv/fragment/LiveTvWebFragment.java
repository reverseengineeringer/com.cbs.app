package com.cbs.app.livetv.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import java.util.HashMap;

public class LiveTvWebFragment
  extends Fragment
{
  public static String a = "ARG_URL";
  private String b;
  private String c;
  private String d;
  private int e;
  private Action f;
  private View g;
  private WebView h;
  private boolean i;
  
  public static Fragment a(String paramString)
  {
    return a(paramString, -1);
  }
  
  public static LiveTvWebFragment a(String paramString, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString(a, paramString);
    localBundle.putInt("ARG_TRACKING_TYPE", paramInt);
    paramString = new LiveTvWebFragment();
    paramString.setArguments(localBundle);
    return paramString;
  }
  
  public WebView getWebView()
  {
    if (i) {
      return h;
    }
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getArguments() != null) {
      e = getArguments().getInt("ARG_TRACKING_TYPE");
    }
    switch (e)
    {
    default: 
      b = null;
      c = null;
      d = null;
      f = null;
      if ((f == null) || (b == null) || (c == null) || (d == null)) {
        break;
      }
    }
    for (int j = 1;; j = 0)
    {
      if (j != 0)
      {
        paramBundle = new HashMap();
        paramBundle.put("pageTitle", b);
        paramBundle.put("evar_6", c);
        paramBundle.put("evar_10", d);
        paramBundle.put("pageView", Boolean.TRUE.toString());
        AnalyticsManager.a(getActivity(), f, paramBundle);
      }
      return;
      b = "live-tv|faq modal";
      c = "liveTV|faq";
      d = "livetv_faq";
      f = Action.cz;
      break;
      b = "live-tv|howto modal";
      c = "liveTV|howtowatch";
      d = "livetv_howtowatch";
      f = Action.cA;
      break;
      b = "live-tv|options modal";
      c = "liveTV|options";
      d = "livetv_options";
      f = Action.cB;
      break;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903172, paramViewGroup, false);
    h = ((WebView)paramLayoutInflater.findViewById(2131690023));
    g = paramLayoutInflater.findViewById(2131690024);
    i = true;
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    if (h != null)
    {
      h.destroy();
      h = null;
    }
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    i = false;
    super.onDestroyView();
  }
  
  public void onPause()
  {
    super.onPause();
    h.onPause();
  }
  
  public void onResume()
  {
    h.onResume();
    super.onResume();
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    paramView = getWebView();
    paramView.setWebChromeClient(new a((byte)0));
    paramView.setWebViewClient(new WebViewClient());
    paramView.getSettings().setJavaScriptEnabled(true);
    paramView.loadUrl(getArguments().getString(a));
  }
  
  private final class a
    extends WebChromeClient
  {
    private a() {}
    
    public final void onProgressChanged(WebView paramWebView, int paramInt)
    {
      super.onProgressChanged(paramWebView, paramInt);
      paramWebView = LiveTvWebFragment.a(LiveTvWebFragment.this);
      if ((paramInt > 0) && (paramInt < 100)) {}
      for (paramInt = 0;; paramInt = 8)
      {
        paramWebView.setVisibility(paramInt);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvWebFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */