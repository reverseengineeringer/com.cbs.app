package com.cbs.app.cast;

import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.cbs.app.view.MainApplication;
import com.google.android.libraries.cast.companionlibrary.cast.b.a;
import com.google.android.libraries.cast.companionlibrary.cast.b.b;

public class VolumeDialogFragment
  extends DialogFragment
{
  boolean a;
  private com.google.android.libraries.cast.companionlibrary.cast.a.c b = new com.google.android.libraries.cast.companionlibrary.cast.a.d()
  {
    public final void a(double paramAnonymousDouble, boolean paramAnonymousBoolean)
    {
      super.a(paramAnonymousDouble, paramAnonymousBoolean);
      if (!a) {
        VolumeDialogFragment.a(VolumeDialogFragment.this).setProgress((int)Math.round(10.0D * paramAnonymousDouble));
      }
    }
    
    public final void c(int paramAnonymousInt)
    {
      super.c(paramAnonymousInt);
      dismiss();
    }
  };
  private SeekBar c;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setStyle(1, 2131427748);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    return super.onCreateDialog(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, final ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903117, paramViewGroup);
    paramViewGroup = MainApplication.getVideoCastManager();
    paramViewGroup.a(b);
    try
    {
      d = paramViewGroup.K();
      c = ((SeekBar)paramLayoutInflater.findViewById(2131689828));
      c.setMax(10);
      c.setProgress((int)Math.round(d * 10.0D));
      c.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener()
      {
        public final void onProgressChanged(SeekBar paramAnonymousSeekBar, int paramAnonymousInt, boolean paramAnonymousBoolean)
        {
          a = paramAnonymousBoolean;
          float f;
          if (paramAnonymousBoolean) {
            f = paramAnonymousInt * 1.0F / 10.0F;
          }
          try
          {
            paramViewGroup.b(f);
            return;
          }
          catch (Exception paramAnonymousSeekBar) {}
        }
        
        public final void onStartTrackingTouch(SeekBar paramAnonymousSeekBar) {}
        
        public final void onStopTrackingTouch(SeekBar paramAnonymousSeekBar)
        {
          float f = paramAnonymousSeekBar.getProgress() * 1.0F / 10.0F;
          try
          {
            paramViewGroup.b(f);
            a = false;
            return;
          }
          catch (Exception paramAnonymousSeekBar)
          {
            for (;;) {}
          }
        }
      });
      return paramLayoutInflater;
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.d paramBundle)
    {
      for (;;)
      {
        Log.e("VolumeDialogFragment", "transientNetworkDisconnectionException: " + paramBundle.getLocalizedMessage());
        d = 0.0D;
      }
    }
    catch (b paramBundle)
    {
      for (;;)
      {
        Log.e("VolumeDialogFragment", "noConnectionException: " + paramBundle.getLocalizedMessage());
        d = 0.0D;
      }
    }
    catch (a paramBundle)
    {
      for (;;)
      {
        Log.e("VolumeDialogFragment", "CastException: " + paramBundle.getLocalizedMessage());
        double d = 0.0D;
      }
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    MainApplication.getVideoCastManager().b(b);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.VolumeDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */