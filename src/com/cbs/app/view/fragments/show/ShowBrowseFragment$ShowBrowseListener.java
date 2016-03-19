package com.cbs.app.view.fragments.show;

import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.IwantToSeeDialogFrag.IwantToSeeResponse;
import com.cbs.app.view.fragments.show.model.ShowItem;

public abstract interface ShowBrowseFragment$ShowBrowseListener
{
  public abstract void a(int paramInt);
  
  public abstract void a(int paramInt, String[] paramArrayOfString, IwantToSeeDialogFrag.IwantToSeeResponse paramIwantToSeeResponse);
  
  public abstract void a(ShowItem paramShowItem);
  
  public abstract void c(BackButtonListener paramBackButtonListener);
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.ShowBrowseFragment.ShowBrowseListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */