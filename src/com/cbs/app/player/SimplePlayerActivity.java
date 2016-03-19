package com.cbs.app.player;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.MediaController;
import android.widget.Toast;
import android.widget.VideoView;

public class SimplePlayerActivity
  extends Activity
{
  View.OnTouchListener a = new View.OnTouchListener()
  {
    public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
    {
      if (!isFinishing()) {
        SimplePlayerActivity.a(SimplePlayerActivity.this);
      }
      return false;
    }
  };
  Handler b = new Handler();
  Runnable c = new Runnable()
  {
    public final void run()
    {
      if (!isFinishing()) {
        SimplePlayerActivity.b(SimplePlayerActivity.this).b();
      }
    }
  };
  private SystemUiHider d;
  
  private void a(int paramInt)
  {
    b.removeCallbacks(c);
    b.postDelayed(c, paramInt);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903069);
    Object localObject1 = null;
    Object localObject2 = getIntent().getExtras();
    paramBundle = (Bundle)localObject1;
    if (localObject2 != null)
    {
      localObject2 = ((Bundle)localObject2).getString("videoUrl");
      paramBundle = (Bundle)localObject1;
      if (localObject2 != null) {
        paramBundle = (Bundle)localObject2;
      }
    }
    if (paramBundle != null)
    {
      localObject1 = findViewById(2131689636);
      d = SystemUiHider.a(this, (View)localObject1);
      d.a();
      d.setOnVisibilityChangeListener(new SystemUiHider.OnVisibilityChangeListener()
      {
        @TargetApi(13)
        public final void a(boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean) {
            SimplePlayerActivity.a(SimplePlayerActivity.this);
          }
        }
      });
      ((View)localObject1).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SimplePlayerActivity.b(SimplePlayerActivity.this).c();
        }
      });
      findViewById(2131689636).setOnTouchListener(a);
      try
      {
        localObject1 = (VideoView)findViewById(2131689636);
        localObject2 = new MediaController(this);
        ((MediaController)localObject2).setAnchorView((View)localObject1);
        paramBundle = Uri.parse(paramBundle);
        ((VideoView)localObject1).setMediaController((MediaController)localObject2);
        ((VideoView)localObject1).setVideoURI(paramBundle);
        ((VideoView)localObject1).start();
        return;
      }
      catch (Exception paramBundle)
      {
        Toast.makeText(this, "Error with URL or with connecting.", 0).show();
        return;
      }
    }
    Toast.makeText(this, "You must provide a url.", 1).show();
    finish();
  }
  
  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    a(100);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.player.SimplePlayerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */