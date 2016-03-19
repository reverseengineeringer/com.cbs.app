package com.mdialog.android.stream;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AnimationSet;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import com.a.a.a.f;
import com.a.a.a.g;
import com.a.a.a.h;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

public class ClickThroughActivity
  extends Activity
{
  static a a;
  private g b;
  private WebView c;
  private Display d;
  private int e;
  private int f;
  private LinearLayout.LayoutParams g;
  private LinearLayout h;
  private LinearLayout i;
  private LinearLayout j;
  private Button k;
  private Button l;
  private Button m;
  private Button n;
  private ProgressBar o;
  private int p;
  private View.OnClickListener q = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ClickThroughActivity.a(ClickThroughActivity.this);
    }
  };
  private View.OnClickListener r = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      finish();
    }
  };
  private View.OnClickListener s = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ClickThroughActivity.b(ClickThroughActivity.this).goBack();
    }
  };
  private View.OnClickListener t = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ClickThroughActivity.b(ClickThroughActivity.this).goForward();
    }
  };
  private View.OnClickListener u = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ClickThroughActivity.b(ClickThroughActivity.this).reload();
    }
  };
  
  private LinearLayout a(Context paramContext)
  {
    p = 0;
    if (Build.MANUFACTURER == "Amazon") {
      p = a(Integer.valueOf(24)).intValue();
    }
    d = getWindowManager().getDefaultDisplay();
    e = d.getHeight();
    f = d.getWidth();
    h = new LinearLayout(paramContext);
    h.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    h.setGravity(48);
    h.setOrientation(1);
    i = new LinearLayout(h.getContext());
    paramContext = new LinearLayout.LayoutParams(-1, e - a(Integer.valueOf(48)).intValue());
    i.setLayoutParams(paramContext);
    i.setGravity(48);
    i.setOrientation(1);
    c = new WebView(i.getContext());
    paramContext = new LinearLayout.LayoutParams(-1, -1);
    c.setLayoutParams(paramContext);
    i.addView(c);
    int i1 = a(Integer.valueOf(8)).intValue();
    j = new LinearLayout(h.getContext());
    paramContext = new LinearLayout.LayoutParams(-1, a(Integer.valueOf(48)).intValue() + p);
    paramContext.setMargins(0, 0 - p, 0, 0);
    j.setLayoutParams(paramContext);
    j.setGravity(48);
    j.setOrientation(0);
    j.setBackgroundColor(-3355444);
    j.setPadding(i1, i1, i1, i1);
    g = new LinearLayout.LayoutParams(a(Integer.valueOf(32)).intValue(), a(Integer.valueOf(32)).intValue());
    g.setMargins(0, 0, (f - a(Integer.valueOf(48)).intValue() * 3) / 3, p);
    k = new Button(j.getContext());
    k.setLayoutParams(g);
    k.setGravity(3);
    k.setBackgroundColor(0);
    k.setBackgroundDrawable(b("md_and_btn_close.png"));
    l = new Button(j.getContext());
    l.setLayoutParams(g);
    l.setGravity(3);
    l.setBackgroundColor(0);
    l.setBackgroundDrawable(b("md_and_btn_back.png"));
    l.setEnabled(false);
    l.getBackground().setAlpha(45);
    m = new Button(j.getContext());
    m.setLayoutParams(g);
    m.setGravity(5);
    m.setBackgroundColor(0);
    m.setBackgroundDrawable(b("md_and_btn_forward.png"));
    m.setEnabled(false);
    m.getBackground().setAlpha(45);
    n = new Button(j.getContext());
    n.setLayoutParams(g);
    n.setGravity(5);
    n.setBackgroundColor(0);
    n.setBackgroundDrawable(b("md_and_btn_refresh.png"));
    c();
    j.addView(k);
    j.addView(l);
    j.addView(m);
    j.addView(n);
    h.addView(i);
    h.addView(j);
    return h;
  }
  
  private Integer a(Integer paramInteger)
  {
    return Integer.valueOf((int)TypedValue.applyDimension(1, paramInteger.intValue(), getResources().getDisplayMetrics()));
  }
  
  private String a(String paramString)
  {
    try
    {
      String str = b.b(Uri.parse(paramString), this).toString();
      return str;
    }
    catch (h localh) {}
    return paramString;
  }
  
  private void a()
  {
    d = getWindowManager().getDefaultDisplay();
    e = d.getHeight();
    f = d.getWidth();
    i.getLayoutParams().height = (e - a(Integer.valueOf(48)).intValue());
    g.setMargins(0, 0, (f - a(Integer.valueOf(48)).intValue() * 3) / 3, p);
  }
  
  private Drawable b(String paramString)
  {
    try
    {
      paramString = (InputStream)getClass().getClassLoader().getResource("res/drawable" + b() + "/" + paramString).getContent();
      return Drawable.createFromStream(paramString, "src");
    }
    catch (IOException paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
        paramString = null;
      }
    }
  }
  
  private String b()
  {
    switch (getResourcesgetDisplayMetricsdensityDpi)
    {
    default: 
      return "";
    case 120: 
      return "-ldpi";
    case 160: 
      return "-mdpi";
    case 240: 
      return "-hdpi";
    }
    return "-xhdpi";
  }
  
  private void c()
  {
    if ((a.a(this)) || (a.c()))
    {
      View.OnFocusChangeListener local6 = new View.OnFocusChangeListener()
      {
        public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean) {
            ClickThroughActivity.e(ClickThroughActivity.this).setBackgroundDrawable(ClickThroughActivity.a(ClickThroughActivity.this, "md_and_btn_close_focus.png"));
          }
          for (;;)
          {
            ClickThroughActivity.a(ClickThroughActivity.this);
            return;
            ClickThroughActivity.e(ClickThroughActivity.this).setBackgroundDrawable(ClickThroughActivity.a(ClickThroughActivity.this, "md_and_btn_close.png"));
          }
        }
      };
      View.OnFocusChangeListener local7 = new View.OnFocusChangeListener()
      {
        public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean) {
            ClickThroughActivity.f(ClickThroughActivity.this).setBackgroundDrawable(ClickThroughActivity.a(ClickThroughActivity.this, "md_and_btn_back_focus.png"));
          }
          for (;;)
          {
            ClickThroughActivity.a(ClickThroughActivity.this);
            return;
            ClickThroughActivity.f(ClickThroughActivity.this).setBackgroundDrawable(ClickThroughActivity.a(ClickThroughActivity.this, "md_and_btn_back.png"));
          }
        }
      };
      View.OnFocusChangeListener local8 = new View.OnFocusChangeListener()
      {
        public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean) {
            ClickThroughActivity.g(ClickThroughActivity.this).setBackgroundDrawable(ClickThroughActivity.a(ClickThroughActivity.this, "md_and_btn_forward_focus.png"));
          }
          for (;;)
          {
            ClickThroughActivity.a(ClickThroughActivity.this);
            return;
            ClickThroughActivity.g(ClickThroughActivity.this).setBackgroundDrawable(ClickThroughActivity.a(ClickThroughActivity.this, "md_and_btn_forward.png"));
          }
        }
      };
      View.OnFocusChangeListener local9 = new View.OnFocusChangeListener()
      {
        public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean) {
            ClickThroughActivity.h(ClickThroughActivity.this).setBackgroundDrawable(ClickThroughActivity.a(ClickThroughActivity.this, "md_and_btn_refresh_focus.png"));
          }
          for (;;)
          {
            ClickThroughActivity.a(ClickThroughActivity.this);
            return;
            ClickThroughActivity.h(ClickThroughActivity.this).setBackgroundDrawable(ClickThroughActivity.a(ClickThroughActivity.this, "md_and_btn_refresh.png"));
          }
        }
      };
      k.setOnFocusChangeListener(local6);
      l.setOnFocusChangeListener(local7);
      m.setOnFocusChangeListener(local8);
      n.setOnFocusChangeListener(local9);
    }
  }
  
  private void d()
  {
    if (c.canGoBack())
    {
      l.setEnabled(true);
      l.getBackground().setAlpha(255);
    }
    while (c.canGoForward())
    {
      m.setEnabled(true);
      m.getBackground().setAlpha(255);
      return;
      l.setEnabled(false);
      l.getBackground().setAlpha(45);
    }
    m.setEnabled(false);
    m.getBackground().setAlpha(45);
  }
  
  private void e()
  {
    if (o == null)
    {
      AnimationSet localAnimationSet = new AnimationSet(true);
      localAnimationSet.setInterpolator(new LinearInterpolator());
      localAnimationSet.setFillAfter(true);
      localAnimationSet.setFillEnabled(true);
      RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, 720.0F, 1, 0.5F, 1, 0.5F);
      localRotateAnimation.setDuration(3000L);
      localRotateAnimation.setFillAfter(true);
      localRotateAnimation.setRepeatCount(100);
      localAnimationSet.addAnimation(localRotateAnimation);
      if (Build.MANUFACTURER == "Amazon")
      {
        n.setWidth(a(Integer.valueOf(32)).intValue());
        n.setHeight(a(Integer.valueOf(32)).intValue());
      }
      n.setBackgroundDrawable(b("md_and_btn_refresh_spinner.png"));
      n.startAnimation(localAnimationSet);
    }
  }
  
  private void f()
  {
    n.setBackgroundDrawable(b("md_and_btn_refresh.png"));
    n.clearAnimation();
    o = null;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    a();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().setFlags(1024, 1024);
    paramBundle = getIntent().getExtras().getString("clickThroughUrl");
    setContentView(a(getApplicationContext()));
    b = new g(f.a("mDialogAndroidSmartStreamSDK-2.0.0", this));
    paramBundle = a(paramBundle);
    c.getSettings().setJavaScriptEnabled(true);
    c.setWebViewClient(new a(null));
    c.setOnClickListener(q);
    c.loadUrl(paramBundle);
  }
  
  protected void onStart()
  {
    super.onStart();
    k.setOnClickListener(r);
    l.setOnClickListener(s);
    m.setOnClickListener(t);
    n.setOnClickListener(u);
  }
  
  protected void onStop()
  {
    a.d();
    super.onStop();
  }
  
  private class a
    extends WebViewClient
  {
    private a() {}
    
    public void onLoadResource(WebView paramWebView, String paramString)
    {
      super.onLoadResource(paramWebView, paramString);
      ClickThroughActivity.a(ClickThroughActivity.this);
    }
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      super.onPageFinished(paramWebView, paramString);
      ClickThroughActivity.a(ClickThroughActivity.this);
      ClickThroughActivity.c(ClickThroughActivity.this);
    }
    
    public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      super.onPageStarted(paramWebView, paramString, paramBitmap);
      ClickThroughActivity.a(ClickThroughActivity.this);
      ClickThroughActivity.d(ClickThroughActivity.this);
    }
  }
}

/* Location:
 * Qualified Name:     com.mdialog.android.stream.ClickThroughActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */