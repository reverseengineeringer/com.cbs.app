package com.cbs.app.view.fragments.show.videos;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import com.cbs.app.service.LiveFyreService;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;

final class EpisodeCommentsFragment$3$1
  implements View.OnClickListener
{
  EpisodeCommentsFragment$3$1(EpisodeCommentsFragment.3 param3) {}
  
  public final void onClick(View paramView)
  {
    a.c.j = null;
    if (paramView.getTag() != null) {
      a.c.j = paramView.getTag().toString();
    }
    a.c.e = null;
    paramView = (EditText)a.c.i.findViewById(2131690147);
    InputMethodManager localInputMethodManager;
    View localView;
    if ((paramView != null) && (paramView.getText() != null))
    {
      a.c.e = paramView.getText().toString();
      localInputMethodManager = (InputMethodManager)a.b.getSystemService("input_method");
      if (localInputMethodManager != null)
      {
        localView = ((Activity)a.b).getCurrentFocus();
        if ((localView != null) && (localView.getWindowToken() != null)) {
          localInputMethodManager.hideSoftInputFromWindow(paramView.getWindowToken(), 0);
        }
      }
    }
    a.c.e = a.c.e.trim();
    if ((paramView != null) && (a.c.e != null) && (!a.c.e.equals("")) && (a.c.e.length() != 0))
    {
      localInputMethodManager = (InputMethodManager)a.b.getSystemService("input_method");
      if (localInputMethodManager != null)
      {
        localView = ((Activity)a.b).getCurrentFocus();
        if ((localView != null) && (localView.getWindowToken() != null)) {
          localInputMethodManager.hideSoftInputFromWindow(paramView.getWindowToken(), 0);
        }
      }
      a.c.i.dismiss();
      a.c.h = false;
      if (a.c.b.getLiveFyreToken() == null)
      {
        AccountUIHelper.setFrom("Comments Page");
        paramView = a.c.getActivity();
        if ((paramView == null) || (paramView.isFinishing())) {
          break label417;
        }
      }
    }
    label417:
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        SVODPopupHelper.setWeWantToSeeVideo(null);
        SVODPopupHelper.setWeWantToSeeShow(null);
        SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
        AccountUIHelper.b(a.b);
      }
      return;
      a.c.d(a.c.j);
      return;
      Toast.makeText(a.b, "You must enter text to submit a comment.", 1).show();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.EpisodeCommentsFragment.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */