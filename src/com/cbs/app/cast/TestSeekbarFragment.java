package com.cbs.app.cast;

import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.cbs.app.pid.CBSAd;
import com.cbs.app.view.MainApplication;
import com.google.android.libraries.cast.companionlibrary.cast.a.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;

public class TestSeekbarFragment
  extends DialogFragment
{
  Handler a = new Handler()
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      super.handleMessage(paramAnonymousMessage);
      new StringBuilder("handleMessage: ").append(what);
      if (TestSeekbarFragment.a(TestSeekbarFragment.this) != null) {}
      switch (what)
      {
      default: 
        return;
      case 1: 
        int i = (int)Math.round(TestSeekbarFragment.a(TestSeekbarFragment.this).getProgress() + TestSeekbarFragment.a(TestSeekbarFragment.this).getMax() * 0.1D);
        if (i < TestSeekbarFragment.a(TestSeekbarFragment.this).getMax())
        {
          TestSeekbarFragment.a(TestSeekbarFragment.this).setProgress(i);
          return;
        }
        TestSeekbarFragment.a(TestSeekbarFragment.this).setProgress(0);
        return;
      case 2: 
        TestSeekbarFragment.a(TestSeekbarFragment.this).setEnabled(false);
        return;
      }
      TestSeekbarFragment.a(TestSeekbarFragment.this).setEnabled(true);
    }
  };
  int b = 0;
  private ChromecastSeekBar c;
  private com.google.android.libraries.cast.companionlibrary.cast.a.c d = new d()
  {
    public final void c(int paramAnonymousInt)
    {
      super.c(paramAnonymousInt);
      dismiss();
    }
  };
  private Timer e = new Timer();
  private TimerTask f = new TimerTask()
  {
    public final void run()
    {
      if (b % 6 == 0) {
        a.sendEmptyMessage(2);
      }
      for (;;)
      {
        TestSeekbarFragment localTestSeekbarFragment = TestSeekbarFragment.this;
        b += 1;
        return;
        a.sendEmptyMessage(3);
        a.sendEmptyMessage(1);
      }
    }
  };
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setStyle(1, 2131427748);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    return super.onCreateDialog(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903118, paramViewGroup);
    paramViewGroup = getArguments();
    paramBundle = new ArrayList();
    if (paramViewGroup != null)
    {
      Object localObject1 = paramViewGroup.getParcelableArrayList("ads");
      if ((localObject1 != null) && (((ArrayList)localObject1).size() != 0))
      {
        localObject1 = ((ArrayList)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          Object localObject2 = (Parcelable)((Iterator)localObject1).next();
          if ((localObject2 instanceof CBSAd))
          {
            localObject2 = (CBSAd)localObject2;
            new StringBuilder("ad: ").append(((CBSAd)localObject2).getId()).append(" st: ").append(((CBSAd)localObject2).getStartTime()).append(" dur: ").append(((CBSAd)localObject2).getDuration());
            paramBundle.add(localObject2);
          }
        }
      }
    }
    for (long l = paramViewGroup.getLong("duration");; l = 0L)
    {
      c = ((ChromecastSeekBar)paramLayoutInflater.findViewById(2131689828));
      c.setMax((int)l * 1000);
      c.setAds(paramBundle);
      return paramLayoutInflater;
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    MainApplication.getVideoCastManager().b(d);
    e.cancel();
    e.purge();
    e = null;
    f = null;
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    if (c != null) {
      e.schedule(f, 1000L, 1000L);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.TestSeekbarFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */