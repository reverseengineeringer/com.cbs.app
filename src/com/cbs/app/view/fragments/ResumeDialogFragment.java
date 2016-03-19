package com.cbs.app.view.fragments;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import java.util.HashMap;

public class ResumeDialogFragment
  extends DialogFragment
{
  VideoData a;
  ResumeDialogListener b;
  
  public Dialog onCreateDialog(final Bundle paramBundle)
  {
    paramBundle = getActivity();
    final Dialog localDialog = new Dialog(paramBundle);
    localDialog.requestWindowFeature(1);
    localDialog.setContentView(2130903122);
    Object localObject = (TextView)localDialog.findViewById(2131689589);
    TextView localTextView1 = (TextView)localDialog.findViewById(2131690393);
    TextView localTextView2 = (TextView)localDialog.findViewById(2131690396);
    TextView localTextView3 = (TextView)localDialog.findViewById(2131690394);
    ImageView localImageView = (ImageView)localDialog.findViewById(2131690390);
    Button localButton1 = (Button)localDialog.findViewById(2131689842);
    Button localButton2 = (Button)localDialog.findViewById(2131689843);
    Button localButton3 = (Button)localDialog.findViewById(2131689841);
    final HashMap localHashMap = new HashMap();
    if (a != null)
    {
      localHashMap.put("Show Title", a.getSeriesTitle());
      localHashMap.put("Episode Title", a.getTitle());
      localHashMap.put("Video Id", String.valueOf(a.getCid()));
      localHashMap.put("Time", String.valueOf(a.getDuration()));
      AnalyticsManager.c(paramBundle, Action.bR, localHashMap);
      ((TextView)localObject).setText(a.getSeriesTitle());
      localObject = VideoUtil.d(a);
      if (localObject != null) {
        ImageHelper.a(ImageHelper.b((String)localObject, 144.0D, Util.a(paramBundle)), localImageView);
      }
      localTextView1.setText(VideoUtil.b(a));
      localTextView3.setText(Util.b(a));
      localTextView2.setText(Util.c(a));
      localButton1.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          b.a();
          localDialog.dismiss();
          localHashMap.put("Action", "continue");
          AnalyticsManager.c(paramBundle, Action.bS, localHashMap);
        }
      });
      localButton2.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          b.b();
          localDialog.dismiss();
          localHashMap.put("Action", "restart");
          AnalyticsManager.c(paramBundle, Action.bS, localHashMap);
        }
      });
    }
    localButton3.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        localDialog.dismiss();
        localHashMap.put("Action", "close button");
        AnalyticsManager.c(paramBundle, Action.bS, localHashMap);
      }
    });
    return localDialog;
  }
  
  public void setListener(ResumeDialogListener paramResumeDialogListener)
  {
    b = paramResumeDialogListener;
  }
  
  public void setVideoData(VideoData paramVideoData)
  {
    a = paramVideoData;
  }
  
  public void show(FragmentManager paramFragmentManager, String paramString)
  {
    paramFragmentManager = paramFragmentManager.beginTransaction();
    paramFragmentManager.add(this, paramString);
    paramFragmentManager.commitAllowingStateLoss();
  }
  
  public static abstract interface ResumeDialogListener
  {
    public abstract void a();
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ResumeDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */