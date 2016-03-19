package com.cbs.app.livetv.fragment;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.cbs.app.adobepass.MvpdLogoutActivity;
import com.cbs.app.livetv.callbacks.MVPDCallbacks;
import com.cbs.app.livetv.controllers.MVPDController;
import com.cbs.app.view.model.MVPDConfig;
import java.util.ArrayList;

public class MVPDSettingsLogOutFragment
  extends Fragment
{
  private static final String a = MVPDSettingsLogOutFragment.class.getSimpleName();
  private OnLogOutSelectedListener b;
  private MVPDCallbacks c = new MVPDCallbacks()
  {
    public final boolean a()
    {
      return true;
    }
    
    public final boolean a(String paramAnonymousString)
    {
      return true;
    }
    
    public final boolean a(ArrayList<MVPDConfig> paramAnonymousArrayList, boolean paramAnonymousBoolean)
    {
      return true;
    }
    
    public final boolean a(boolean paramAnonymousBoolean)
    {
      MVPDSettingsLogOutFragment.a();
      return true;
    }
    
    public final boolean b(String paramAnonymousString)
    {
      Intent localIntent = new Intent(getActivity(), MvpdLogoutActivity.class);
      localIntent.setFlags(1073741824);
      localIntent.putExtra("url", paramAnonymousString);
      getParentFragment().startActivityForResult(localIntent, 8002);
      return true;
    }
    
    public final boolean b(boolean paramAnonymousBoolean)
    {
      return true;
    }
  };
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    new StringBuilder("onActivityResult: requestCode = ").append(paramInt1).append(", resultCode = ").append(paramInt2);
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    switch (paramInt2)
    {
    default: 
      return;
    case -1: 
      MVPDController.getInstance().f();
      b.a();
      return;
    }
    MVPDController.getInstance().f();
    b.a();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    MVPDController.getInstance().setMVPDCallbacks(c);
    MVPDController.getInstance().h();
    try
    {
      b = ((OnLogOutSelectedListener)getParentFragment());
      return;
    }
    catch (Exception paramBundle)
    {
      throw new ClassCastException("must implement OnLogOutSelectedListener");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903229, paramViewGroup, false);
    paramViewGroup = (Button)paramLayoutInflater.findViewById(2131690168);
    paramBundle = (TextView)paramLayoutInflater.findViewById(2131690167);
    final String str = MVPDController.getInstance().getSelectedMvpdConfig().getMvpd();
    paramBundle.setText(getString(2131231142, new Object[] { str }));
    paramViewGroup.setText(getString(2131231140));
    paramViewGroup.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        MVPDSettingsLogOutFragment.a(MVPDSettingsLogOutFragment.this, getActivity(), str);
      }
    });
    return paramLayoutInflater;
  }
  
  public static abstract interface OnLogOutSelectedListener
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.MVPDSettingsLogOutFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */