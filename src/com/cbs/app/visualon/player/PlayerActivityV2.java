package com.cbs.app.visualon.player;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.view.KeyEvent;
import com.cbs.app.GlobalConstants;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.utils.Util;
import com.google.android.libraries.cast.companionlibrary.cast.c;
import com.visualon.OSMPUtils.voLog;

public class PlayerActivityV2
  extends AppCompatActivity
{
  private static final String b = PlayerActivityV2.class.getSimpleName();
  boolean a;
  
  private void a()
  {
    if (!a)
    {
      a = true;
      MainApplication.c();
      AnalyticsManager.b(this);
      if (Util.H(this)) {
        MainApplication.getVideoCastManager().h();
      }
    }
  }
  
  protected final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((GlobalConstants.b) && (!isFinishing())) {
      Util.O(this);
    }
    finish();
    if ((paramInt1 == 1) && (CBSPlayer.a())) {
      CBSPlayer.C();
    }
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903070);
    a = false;
    paramBundle = getIntent().getExtras();
    FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
    PlayerFragment localPlayerFragment = new PlayerFragment();
    localPlayerFragment.setArguments(paramBundle);
    localFragmentTransaction.replace(2131689637, localPlayerFragment, "videoplayer_fragment");
    localFragmentTransaction.commit();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    voLog.v(b, "Key click is " + paramInt, new Object[0]);
    if ((paramInt == 4) || (paramInt == 3))
    {
      voLog.v(b, "Key click is Back key", new Object[0]);
      if ((GlobalConstants.b) && (!isFinishing())) {
        Util.O(this);
      }
      finish();
      return false;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    super.onPause();
    a();
  }
  
  protected void onResume()
  {
    super.onResume();
    a = false;
    if (CBSPlayer.b()) {
      CBSPlayer.v();
    }
    MainApplication.b();
    if (Util.H(this)) {
      MainApplication.getVideoCastManager().g();
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    a = false;
  }
  
  protected void onStop()
  {
    super.onStop();
    a();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.PlayerActivityV2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */