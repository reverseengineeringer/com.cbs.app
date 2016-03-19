package com.google.android.libraries.cast.companionlibrary.cast.player;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import com.google.android.libraries.cast.companionlibrary.R.drawable;
import com.google.android.libraries.cast.companionlibrary.R.id;
import com.google.android.libraries.cast.companionlibrary.R.layout;
import com.google.android.libraries.cast.companionlibrary.R.menu;
import com.google.android.libraries.cast.companionlibrary.R.string;
import com.google.android.libraries.cast.companionlibrary.a.b;

public class VideoCastControllerActivity
  extends AppCompatActivity
  implements d
{
  private static final String a = b.a(VideoCastControllerActivity.class);
  private com.google.android.libraries.cast.companionlibrary.cast.c b;
  private View c;
  private ImageView d;
  private TextView e;
  private TextView f;
  private TextView g;
  private SeekBar h;
  private TextView i;
  private TextView j;
  private ProgressBar k;
  private double l;
  private View m;
  private Drawable n;
  private Drawable o;
  private Drawable p;
  private c q;
  private int r;
  private ImageView s;
  
  public final void a(int paramInt1, int paramInt2)
  {
    h.setProgress(paramInt1);
    h.setMax(paramInt2);
    f.setText(com.google.android.libraries.cast.companionlibrary.a.d.a(paramInt1));
    g.setText(com.google.android.libraries.cast.companionlibrary.a.d.a(paramInt2));
  }
  
  public final void b()
  {
    finish();
  }
  
  public final void b(boolean paramBoolean)
  {
    ProgressBar localProgressBar = k;
    if (paramBoolean) {}
    for (int i1 = 0;; i1 = 4)
    {
      localProgressBar.setVisibility(i1);
      return;
    }
  }
  
  public final void c(boolean paramBoolean)
  {
    int i2 = 0;
    int i1;
    TextView localTextView;
    if (paramBoolean)
    {
      i1 = 4;
      localTextView = e;
      if (!paramBoolean) {
        break label54;
      }
    }
    for (;;)
    {
      localTextView.setVisibility(i2);
      f.setVisibility(i1);
      g.setVisibility(i1);
      h.setVisibility(i1);
      return;
      i1 = 0;
      break;
      label54:
      i2 = 4;
    }
  }
  
  public final void d(boolean paramBoolean)
  {
    boolean bool = false;
    View localView = m;
    if (paramBoolean) {}
    for (int i1 = 0;; i1 = 4)
    {
      localView.setVisibility(i1);
      if (paramBoolean)
      {
        paramBoolean = bool;
        if (r == 2) {
          paramBoolean = true;
        }
        c(paramBoolean);
      }
      return;
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (b.a(paramKeyEvent, l)) {
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.cast_activity);
    n = getResources().getDrawable(R.drawable.ic_av_pause_dark);
    o = getResources().getDrawable(R.drawable.ic_av_play_dark);
    p = getResources().getDrawable(R.drawable.ic_av_stop_dark);
    c = findViewById(R.id.pageview);
    d = ((ImageView)findViewById(R.id.imageview));
    e = ((TextView)findViewById(R.id.live_text));
    f = ((TextView)findViewById(R.id.start_text));
    g = ((TextView)findViewById(R.id.end_text));
    h = ((SeekBar)findViewById(R.id.seekbar));
    i = ((TextView)findViewById(R.id.textview1));
    j = ((TextView)findViewById(R.id.textview2));
    k = ((ProgressBar)findViewById(R.id.progressbar1));
    m = findViewById(R.id.controllers);
    s = ((ImageView)findViewById(R.id.cc));
    setClosedCaptionState(2);
    d.setOnClickListener(new VideoCastControllerActivity.1(this));
    h.setOnSeekBarChangeListener(new VideoCastControllerActivity.2(this));
    s.setOnClickListener(new VideoCastControllerActivity.3(this));
    b = com.google.android.libraries.cast.companionlibrary.cast.c.B();
    l = b.X();
    paramBundle = (Toolbar)findViewById(R.id.toolbar);
    paramBundle.setTitle("");
    setSupportActionBar(paramBundle);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    Object localObject = getIntent().getExtras();
    if (localObject == null) {
      finish();
    }
    VideoCastControllerFragment localVideoCastControllerFragment;
    do
    {
      return;
      paramBundle = getSupportFragmentManager();
      localVideoCastControllerFragment = (VideoCastControllerFragment)paramBundle.findFragmentByTag("task");
      if (localVideoCastControllerFragment != null) {
        break;
      }
      localObject = VideoCastControllerFragment.a((Bundle)localObject);
      paramBundle.beginTransaction().add((Fragment)localObject, "task").commit();
      q = ((c)localObject);
      paramBundle = q;
    } while (paramBundle == null);
    q = paramBundle;
    return;
    q = localVideoCastControllerFragment;
    q.c();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(R.menu.cast_player_menu, paramMenu);
    b.a(paramMenu, R.id.media_route_menu_item);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332) {
      finish();
    }
    return true;
  }
  
  public void setClosedCaptionState(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      b.a(a, "setClosedCaptionState(): Invalid state requested: " + paramInt);
      return;
    case 1: 
      s.setVisibility(0);
      s.setEnabled(true);
      return;
    case 2: 
      s.setVisibility(0);
      s.setEnabled(false);
      return;
    }
    s.setVisibility(8);
  }
  
  public void setImage(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      if ((c instanceof ImageView)) {
        ((ImageView)c).setImageBitmap(paramBitmap);
      }
    }
    else {
      return;
    }
    c.setBackgroundDrawable(new BitmapDrawable(getResources(), paramBitmap));
  }
  
  public void setPlaybackStatus(int paramInt)
  {
    b.a("setPlaybackStatus(): state = " + paramInt);
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      k.setVisibility(4);
      d.setVisibility(0);
      if (r == 2) {
        d.setImageDrawable(p);
      }
      for (;;)
      {
        j.setText(getString(R.string.ccl_casting_to_device, new Object[] { b.m() }));
        m.setVisibility(0);
        return;
        d.setImageDrawable(n);
      }
    case 3: 
      m.setVisibility(0);
      k.setVisibility(4);
      d.setVisibility(0);
      d.setImageDrawable(o);
      j.setText(getString(R.string.ccl_casting_to_device, new Object[] { b.m() }));
      return;
    case 1: 
      k.setVisibility(4);
      d.setImageDrawable(o);
      d.setVisibility(0);
      j.setText(getString(R.string.ccl_casting_to_device, new Object[] { b.m() }));
      return;
    }
    d.setVisibility(4);
    k.setVisibility(0);
    j.setText(getString(R.string.ccl_loading));
  }
  
  public void setStreamType(int paramInt)
  {
    r = paramInt;
  }
  
  public void setSubTitle(String paramString)
  {
    j.setText(paramString);
  }
  
  public void setTitle(String paramString)
  {
    i.setText(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.cast.companionlibrary.cast.player.VideoCastControllerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */