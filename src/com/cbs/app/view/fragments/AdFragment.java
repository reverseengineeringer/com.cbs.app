package com.cbs.app.view.fragments;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.cbs.app.service.AdServiceImpl;
import com.cbs.app.view.AbstractAsyncFragment;

public class AdFragment
  extends AbstractAsyncFragment
{
  private ViewGroup h;
  private long i = 0L;
  private String j = "";
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramBundle = getArguments();
    if (paramBundle != null)
    {
      i = paramBundle.getLong("showId");
      j = paramBundle.getString("tag");
    }
    paramLayoutInflater = paramLayoutInflater.inflate(2130903074, paramViewGroup, false);
    h = ((ViewGroup)paramLayoutInflater.findViewById(2131689645));
    if (i > 0L)
    {
      long l = i;
      paramViewGroup = j;
      new AdServiceImpl().a(getActivity(), h, l, paramViewGroup);
      return paramLayoutInflater;
    }
    paramViewGroup = j;
    new AdServiceImpl().b(getActivity(), h, paramViewGroup);
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    if (h != null)
    {
      new AdServiceImpl();
      AdServiceImpl.c(h);
      h = null;
    }
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if (h != null)
    {
      new AdServiceImpl();
      AdServiceImpl.c(h);
      h = null;
    }
  }
  
  public void onPause()
  {
    if (h != null)
    {
      new AdServiceImpl();
      AdServiceImpl.b(h);
    }
    super.onPause();
  }
  
  public void onResume()
  {
    if (h != null)
    {
      new AdServiceImpl();
      AdServiceImpl.a(h);
    }
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.AdFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */