package com.cbs.app.cast;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.MediaRouteChooserDialogFragment;
import android.support.v7.media.MediaRouteSelector;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.cbs.app.pid.CBSAd;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.google.android.gms.cast.e;
import com.google.android.gms.cast.h;
import com.google.android.gms.cast.i;
import com.google.android.libraries.cast.companionlibrary.cast.dialog.video.VideoMediaRouteControllerDialogFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CBSVideoCastControllerActivity
  extends FragmentActivity
  implements com.google.android.libraries.cast.companionlibrary.cast.player.d
{
  private static final String d = CBSVideoCastControllerActivity.class.getSimpleName();
  private com.google.android.libraries.cast.companionlibrary.cast.a.c A = new com.google.android.libraries.cast.companionlibrary.cast.a.d()
  {
    public final void a(double paramAnonymousDouble, boolean paramAnonymousBoolean)
    {
      super.a(paramAnonymousDouble, paramAnonymousBoolean);
      CBSVideoCastControllerActivity.c();
      new StringBuilder("onVolumeChanged: ").append(paramAnonymousDouble).append(" isMute: ").append(paramAnonymousBoolean);
      CBSVideoCastControllerActivity.a(CBSVideoCastControllerActivity.this, paramAnonymousDouble);
      CBSVideoCastControllerActivity.a(CBSVideoCastControllerActivity.this, paramAnonymousBoolean);
      if (CBSVideoCastControllerActivity.a(CBSVideoCastControllerActivity.this) == 0.0D) {
        CBSVideoCastControllerActivity.a(CBSVideoCastControllerActivity.this, true);
      }
      if (CBSVideoCastControllerActivity.b(CBSVideoCastControllerActivity.this) != null)
      {
        if (CBSVideoCastControllerActivity.c(CBSVideoCastControllerActivity.this)) {
          CBSVideoCastControllerActivity.b(CBSVideoCastControllerActivity.this).setSelected(false);
        }
      }
      else {
        return;
      }
      CBSVideoCastControllerActivity.b(CBSVideoCastControllerActivity.this).setSelected(true);
    }
    
    public final void b()
    {
      super.b();
      CBSVideoCastControllerActivity.c();
      CBSVideoCastControllerActivity.d(CBSVideoCastControllerActivity.this);
    }
    
    public final void b(int paramAnonymousInt)
    {
      super.b(paramAnonymousInt);
      CBSVideoCastControllerActivity.c();
      if (paramAnonymousInt == 2100)
      {
        CBSVideoCastControllerActivity.c();
        a("Failed to launch video. Please try again later.");
      }
    }
    
    public final void c()
    {
      super.c();
      CBSVideoCastControllerActivity.c();
      CBSVideoCastControllerActivity.e(CBSVideoCastControllerActivity.this);
    }
  };
  com.google.android.libraries.cast.companionlibrary.cast.tracks.a a = new com.google.android.libraries.cast.companionlibrary.cast.tracks.a()
  {
    public final void a(List<h> paramAnonymousList)
    {
      CBSVideoCastControllerActivity.c();
    }
  };
  boolean b = false;
  int c = 0;
  private com.google.android.libraries.cast.companionlibrary.cast.c e;
  private ImageView f;
  private TextView g;
  private TextView h;
  private ChromecastSeekBar i;
  private TextView j;
  private TextView k;
  private TextView l;
  private ProgressBar m;
  private ImageView n;
  private ImageView o;
  private double p;
  private View q;
  private Drawable r;
  private Drawable s;
  private Drawable t;
  private com.google.android.libraries.cast.companionlibrary.cast.player.c u;
  private int v;
  private ImageView w;
  private double x = 1.0D;
  private boolean y = false;
  private boolean z = false;
  
  public static long[] a(boolean paramBoolean)
  {
    Object localObject1 = new ArrayList();
    Object localObject2 = MainApplication.getVideoCastManager().F();
    if (localObject2 != null)
    {
      localObject2 = ((i)localObject2).d();
      if (localObject2 != null)
      {
        localObject2 = ((com.google.android.gms.cast.d)localObject2).f();
        if ((localObject2 != null) && (((List)localObject2).size() > 0))
        {
          new StringBuilder("tracks.size(): ").append(((List)localObject2).size());
          localObject2 = ((List)localObject2).iterator();
          long l1 = -1L;
          long l3 = -1L;
          if (((Iterator)localObject2).hasNext())
          {
            h localh = (h)((Iterator)localObject2).next();
            long l2 = l1;
            switch (localh.b())
            {
            default: 
              l2 = l1;
            }
            for (;;)
            {
              l1 = l2;
              break;
              l2 = l1;
              if (paramBoolean)
              {
                l2 = l1;
                if (l3 == -1L)
                {
                  l3 = localh.a();
                  ((ArrayList)localObject1).add(Long.valueOf(l3));
                  break;
                  l2 = l1;
                  if (l1 == -1L)
                  {
                    l2 = localh.a();
                    ((ArrayList)localObject1).add(Long.valueOf(l2));
                  }
                }
              }
            }
          }
        }
      }
    }
    localObject2 = new long[((ArrayList)localObject1).size()];
    localObject1 = ((ArrayList)localObject1).iterator();
    int i1 = 0;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2[i1] = ((Long)((Iterator)localObject1).next()).longValue();
      i1 += 1;
    }
    return (long[])localObject2;
  }
  
  private void d()
  {
    Object localObject = MainApplication.getVideoCastManager().F();
    if (localObject != null)
    {
      localObject = ((i)localObject).d();
      if (localObject != null)
      {
        localObject = ((com.google.android.gms.cast.d)localObject).g();
        if (localObject != null) {
          new StringBuilder("customData2: ").append(((JSONObject)localObject).toString());
        }
      }
    }
    try
    {
      localObject = ((JSONObject)localObject).getJSONArray("adBreaks");
      if ((localObject != null) && (((JSONArray)localObject).length() > 0))
      {
        ArrayList localArrayList = new ArrayList();
        int i1 = 0;
        while (i1 < ((JSONArray)localObject).length())
        {
          JSONObject localJSONObject = ((JSONArray)localObject).getJSONObject(i1);
          String str = localJSONObject.getString("position");
          int i2 = localJSONObject.getInt("startTime");
          int i3 = localJSONObject.getInt("startMediaTime");
          int i4 = localJSONObject.getInt("durationMediaTime");
          boolean bool = localJSONObject.getBoolean("isUnwatched");
          localArrayList.add(new CBSAd(str, i2, i4, bool));
          new StringBuilder("position: ").append(str).append(" startTime: ").append(i2).append(" duration: ").append(i4).append(" endTime: ").append(i3).append(" isUnwatched: ").append(bool);
          i1 += 1;
        }
        i.setAds(localArrayList);
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        Log.e(d, "json error: " + localJSONException.getLocalizedMessage());
      }
    }
    e();
  }
  
  private void e()
  {
    Object localObject = MainApplication.getVideoCastManager().F();
    h localh;
    if (localObject != null)
    {
      localObject = ((i)localObject).d();
      if (localObject != null)
      {
        localObject = ((com.google.android.gms.cast.d)localObject).f();
        if ((localObject != null) && (((List)localObject).size() > 0))
        {
          new StringBuilder("tracks.size(): ").append(((List)localObject).size());
          localObject = ((List)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            localh = (h)((Iterator)localObject).next();
            if (localh.b() == 1) {
              new StringBuilder("trackId: ").append(localh.a());
            }
          }
        }
      }
    }
    for (long l1 = localh.a();; l1 = -1L)
    {
      if (l1 != -1L)
      {
        localObject = e.Z();
        if ((localObject != null) && (localObject.length > 0))
        {
          new StringBuilder("activeTrackIds.length: ").append(localObject.length);
          int i2 = localObject.length;
          i1 = 0;
          if (i1 >= i2) {
            break label276;
          }
          long l2 = localObject[i1];
          new StringBuilder("comparing ").append(l2).append(" to ").append(l1);
          if (l2 != l1) {}
        }
      }
      label276:
      for (int i1 = 1;; i1 = 0)
      {
        if (i1 != 0)
        {
          n.setSelected(true);
          return;
          i1 += 1;
          break;
        }
        n.setSelected(false);
        return;
        n.setSelected(false);
        return;
        n.setSelected(false);
        return;
      }
    }
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    i.setProgress(paramInt1);
    i.setMax(paramInt2);
    g.setText(com.google.android.libraries.cast.companionlibrary.a.d.a(paramInt1));
    h.setText(com.google.android.libraries.cast.companionlibrary.a.d.a(paramInt2));
  }
  
  public final void a(final String paramString)
  {
    if ((b) && (!isFinishing()))
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(new ContextThemeWrapper(this, 2131427561));
      localBuilder.setMessage(paramString).setTitle("CBS").setNegativeButton("Ok", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if ((paramString == null) || (!paramString.contains("captions"))) {
            finish();
          }
        }
      });
      paramString = localBuilder.create();
      paramString.setCancelable(false);
      paramString.show();
    }
  }
  
  public final boolean a()
  {
    FragmentManager localFragmentManager;
    if (!isFinishing())
    {
      localFragmentManager = getSupportFragmentManager();
      if (!e.j()) {
        break label38;
      }
      new VideoMediaRouteControllerDialogFragment().show(localFragmentManager, "com.google.android.libraries.cast.companionlibrary.cast.dialog.video.VideoMediaRouteControllerDialogFragment");
    }
    for (;;)
    {
      return false;
      label38:
      MediaRouteSelector localMediaRouteSelector = e.n();
      MediaRouteChooserDialogFragment localMediaRouteChooserDialogFragment = new MediaRouteChooserDialogFragment();
      localMediaRouteChooserDialogFragment.setRouteSelector(localMediaRouteSelector);
      localMediaRouteChooserDialogFragment.show(localFragmentManager, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment");
    }
  }
  
  public final void b()
  {
    finish();
  }
  
  public final void b(boolean paramBoolean)
  {
    ProgressBar localProgressBar = m;
    if (paramBoolean) {}
    for (int i1 = 0;; i1 = 4)
    {
      localProgressBar.setVisibility(i1);
      i.setEnabled(false);
      return;
    }
  }
  
  public final void c(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i1 = 4;; i1 = 0)
    {
      g.setVisibility(i1);
      h.setVisibility(i1);
      i.setVisibility(i1);
      if (paramBoolean)
      {
        CharSequence localCharSequence = j.getText();
        if ((localCharSequence != null) && (!localCharSequence.toString().contains("LIVE | "))) {
          j.setText("LIVE | " + localCharSequence);
        }
      }
      return;
    }
  }
  
  public final void d(boolean paramBoolean)
  {
    boolean bool = false;
    View localView = q;
    if (paramBoolean) {}
    for (int i1 = 0;; i1 = 4)
    {
      localView.setVisibility(i1);
      if (paramBoolean)
      {
        paramBoolean = bool;
        if (v == 2) {
          paramBoolean = true;
        }
        c(paramBoolean);
      }
      return;
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (e.a(paramKeyEvent, p)) || (super.dispatchKeyEvent(paramKeyEvent));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getExtras();
    if (paramBundle == null)
    {
      finish();
      return;
    }
    setContentView(2130903079);
    if (Util.e(this)) {
      setRequestedOrientation(1);
    }
    e = com.google.android.libraries.cast.companionlibrary.cast.c.B();
    b = true;
    w = ((ImageView)findViewById(2131689669));
    r = getResources().getDrawable(2130837982);
    s = getResources().getDrawable(2130837991);
    t = getResources().getDrawable(2130838038);
    f = ((ImageView)findViewById(2131689673));
    g = ((TextView)findViewById(2131689676));
    h = ((TextView)findViewById(2131689677));
    i = ((ChromecastSeekBar)findViewById(2131689678));
    j = ((TextView)findViewById(2131689666));
    k = ((TextView)findViewById(2131689680));
    l = ((TextView)findViewById(2131689667));
    m = ((ProgressBar)findViewById(2131689670));
    q = findViewById(2131689653);
    n = ((ImageView)findViewById(2131689674));
    setClosedCaptionState(2);
    o = ((ImageView)findViewById(2131689672));
    ((ImageView)findViewById(2131689665)).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSVideoCastControllerActivity.c();
        finish();
      }
    });
    f.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (!CBSVideoCastControllerActivity.f(CBSVideoCastControllerActivity.this)) {
          CBSVideoCastControllerActivity.g(CBSVideoCastControllerActivity.this).setEnabled(true);
        }
        try
        {
          CBSVideoCastControllerActivity.h(CBSVideoCastControllerActivity.this).b();
          return;
        }
        catch (com.google.android.libraries.cast.companionlibrary.cast.b.d paramAnonymousView)
        {
          Log.e(CBSVideoCastControllerActivity.c(), "Failed to toggle playback due to temporary network issue", paramAnonymousView);
          a(getResources().getString(2131230898));
          return;
        }
        catch (com.google.android.libraries.cast.companionlibrary.cast.b.b paramAnonymousView)
        {
          Log.e(CBSVideoCastControllerActivity.c(), "Failed to toggle playback due to network issues", paramAnonymousView);
          a(getResources().getString(2131230898));
          return;
        }
        catch (Exception paramAnonymousView)
        {
          Log.e(CBSVideoCastControllerActivity.c(), "Failed to toggle playback due to other issues", paramAnonymousView);
          a(getResources().getString(2131230901));
        }
      }
    });
    i.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener()
    {
      public final void onProgressChanged(SeekBar paramAnonymousSeekBar, int paramAnonymousInt, boolean paramAnonymousBoolean)
      {
        CBSVideoCastControllerActivity.i(CBSVideoCastControllerActivity.this).setText(com.google.android.libraries.cast.companionlibrary.a.d.a(paramAnonymousInt));
        try
        {
          if (CBSVideoCastControllerActivity.h(CBSVideoCastControllerActivity.this) != null) {
            CBSVideoCastControllerActivity.h(CBSVideoCastControllerActivity.this);
          }
          return;
        }
        catch (Exception paramAnonymousSeekBar)
        {
          Log.e(CBSVideoCastControllerActivity.c(), "Failed to set the progress result", paramAnonymousSeekBar);
        }
      }
      
      public final void onStartTrackingTouch(SeekBar paramAnonymousSeekBar)
      {
        try
        {
          if (CBSVideoCastControllerActivity.h(CBSVideoCastControllerActivity.this) != null) {
            CBSVideoCastControllerActivity.h(CBSVideoCastControllerActivity.this).a();
          }
          return;
        }
        catch (Exception paramAnonymousSeekBar)
        {
          Log.e(CBSVideoCastControllerActivity.c(), "Failed to start seek", paramAnonymousSeekBar);
          finish();
        }
      }
      
      public final void onStopTrackingTouch(SeekBar paramAnonymousSeekBar)
      {
        try
        {
          if (CBSVideoCastControllerActivity.h(CBSVideoCastControllerActivity.this) != null) {
            CBSVideoCastControllerActivity.h(CBSVideoCastControllerActivity.this).a(paramAnonymousSeekBar);
          }
          return;
        }
        catch (Exception paramAnonymousSeekBar)
        {
          Log.e(CBSVideoCastControllerActivity.c(), "Failed to complete seek", paramAnonymousSeekBar);
          finish();
        }
      }
    });
    n.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CBSVideoCastControllerActivity.c();
        if (CBSVideoCastControllerActivity.j(CBSVideoCastControllerActivity.this).Y().b()) {
          if (paramAnonymousView.isSelected())
          {
            paramAnonymousView = CBSVideoCastControllerActivity.a(false);
            CBSVideoCastControllerActivity.k(CBSVideoCastControllerActivity.this).setSelected(false);
            if (paramAnonymousView.length > 0) {
              CBSVideoCastControllerActivity.j(CBSVideoCastControllerActivity.this).a(paramAnonymousView);
            }
          }
        }
        for (;;)
        {
          return;
          try
          {
            if (CBSVideoCastControllerActivity.j(CBSVideoCastControllerActivity.this).J() == null) {
              continue;
            }
            paramAnonymousView = CBSVideoCastControllerActivity.a(true);
            CBSVideoCastControllerActivity.k(CBSVideoCastControllerActivity.this).setSelected(true);
            CBSVideoCastControllerActivity.j(CBSVideoCastControllerActivity.this).a(VideoUtil.b(CBSVideoCastControllerActivity.this));
            if (paramAnonymousView.length <= 0) {
              continue;
            }
            CBSVideoCastControllerActivity.j(CBSVideoCastControllerActivity.this).a(paramAnonymousView);
            return;
          }
          catch (com.google.android.libraries.cast.companionlibrary.cast.b.d paramAnonymousView)
          {
            Log.e(CBSVideoCastControllerActivity.c(), "CC enable failed due to connection issues or no Media");
            return;
            VideoUtil.a(CBSVideoCastControllerActivity.this);
            return;
          }
          catch (com.google.android.libraries.cast.companionlibrary.cast.b.b paramAnonymousView)
          {
            for (;;) {}
          }
        }
      }
    });
    e();
    try
    {
      y = e.L();
      x = e.K();
      if (x == 0.0D) {
        y = true;
      }
      if (y)
      {
        o.setSelected(false);
        o.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            CBSVideoCastControllerActivity.c();
            paramAnonymousView = getSupportFragmentManager();
            new VolumeDialogFragment().show(paramAnonymousView, "fragment_volume");
          }
        });
        p = e.X();
        if (p == 1.401298464324817E-45D) {
          p = 0.05D;
        }
        e.a(A);
        e.a(a);
        findViewById(2131689668).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            CBSVideoCastControllerActivity.c();
            a();
          }
        });
        FragmentManager localFragmentManager = getSupportFragmentManager();
        localCBSVideoCastControllerFragment = (CBSVideoCastControllerFragment)localFragmentManager.findFragmentByTag("task");
        if (localCBSVideoCastControllerFragment != null) {
          break label559;
        }
        paramBundle = CBSVideoCastControllerFragment.a(paramBundle);
        localFragmentManager.beginTransaction().add(paramBundle, "task").commit();
        u = paramBundle;
        setOnVideoCastControllerChangedListener(u);
      }
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.d locald)
    {
      for (;;)
      {
        locald.printStackTrace();
      }
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.b localb)
    {
      for (;;)
      {
        localb.printStackTrace();
      }
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.a locala)
    {
      CBSVideoCastControllerFragment localCBSVideoCastControllerFragment;
      for (;;)
      {
        locala.printStackTrace();
        continue;
        o.setSelected(true);
      }
      label559:
      u = localCBSVideoCastControllerFragment;
      u.c();
    }
  }
  
  protected void onPause()
  {
    e.b(A);
    super.onPause();
    b = false;
    VideoUtil.a(this);
  }
  
  protected void onResume()
  {
    e = com.google.android.libraries.cast.companionlibrary.cast.c.B();
    e.a(A);
    d();
    b = true;
    super.onResume();
  }
  
  public void setClosedCaptionState(int paramInt)
  {
    if (c == 2) {}
    switch (paramInt)
    {
    default: 
      Log.e(d, "setClosedCaptionState(): Invalid state requested: " + paramInt);
      return;
    case 1: 
      n.setVisibility(0);
      n.setEnabled(true);
      return;
    case 2: 
      n.setVisibility(0);
      n.setEnabled(true);
      return;
    }
    n.setVisibility(0);
    n.setEnabled(true);
  }
  
  public void setImage(Bitmap paramBitmap)
  {
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    float f1 = paramBitmap.getWidth() / (paramBitmap.getHeight() * 1.0F);
    if (Util.k(this)) {}
    for (int i1 = (int)(Math.min(widthPixels, heightPixels) * 0.3F);; i1 = (int)(Math.min(widthPixels, heightPixels) * 0.5F))
    {
      int i2 = (int)(f1 * i1);
      w.getLayoutParams().width = i2;
      w.getLayoutParams().height = i1;
      w.setImageBitmap(paramBitmap);
      return;
    }
  }
  
  public void setOnVideoCastControllerChangedListener(com.google.android.libraries.cast.companionlibrary.cast.player.c paramc)
  {
    if (paramc != null) {
      u = paramc;
    }
  }
  
  public void setPlaybackStatus(int paramInt)
  {
    c = paramInt;
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      m.setVisibility(4);
      n.setVisibility(0);
      o.setVisibility(0);
      f.setVisibility(0);
      i.setPaused(false);
      i.setProgress(i.getProgress());
      if (v == 2) {
        f.setImageDrawable(t);
      }
      for (;;)
      {
        k.setText(getString(2131230894, new Object[] { e.m() }));
        q.setVisibility(0);
        return;
        f.setImageDrawable(r);
      }
    case 3: 
      q.setVisibility(0);
      i.setPaused(true);
      if (!z) {
        i.setEnabled(true);
      }
      i.setProgress(i.getProgress());
      m.setVisibility(4);
      f.setVisibility(0);
      f.setImageDrawable(s);
      k.setText(getString(2131230894, new Object[] { e.m() }));
      return;
    case 1: 
      m.setVisibility(4);
      i.setPaused(true);
      f.setImageDrawable(s);
      k.setText(getString(2131230894, new Object[] { e.m() }));
      return;
    }
    f.setVisibility(4);
    m.setVisibility(0);
    k.setText(getString(2131230920));
    i.setPaused(true);
  }
  
  public void setStreamType(int paramInt)
  {
    v = paramInt;
  }
  
  public void setSubTitle(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    k.setText(str);
  }
  
  public void setTitle(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    j.setText(str);
    try
    {
      paramString = e.J();
      if (paramString != null)
      {
        paramString = paramString.d();
        if (paramString != null)
        {
          paramString = paramString.a("com.google.android.gms.cast.metadata.SUBTITLE");
          if (paramString != null)
          {
            l.setText(paramString);
            return;
          }
        }
      }
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.d paramString)
    {
      for (;;)
      {
        Log.e(d, "error: " + paramString.getLocalizedMessage());
        paramString = null;
      }
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.b paramString)
    {
      for (;;)
      {
        Log.e(d, "error: " + paramString.getLocalizedMessage());
        paramString = null;
        continue;
        paramString = "";
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSVideoCastControllerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */