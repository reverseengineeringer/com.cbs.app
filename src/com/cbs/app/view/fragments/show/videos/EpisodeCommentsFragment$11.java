package com.cbs.app.view.fragments.show.videos;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import com.cbs.app.service.LiveFyreService;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.utils.Util;

final class EpisodeCommentsFragment$11
  implements View.OnClickListener
{
  EpisodeCommentsFragment$11(EpisodeCommentsFragment paramEpisodeCommentsFragment) {}
  
  public final void onClick(View paramView)
  {
    Object localObject = a.getActivity();
    if ((Util.i((Context)localObject)) || (Util.j((Context)localObject)))
    {
      EpisodeCommentsFragment.e();
      a.e = null;
      paramView = (EditText)((Activity)localObject).findViewById(2131689490);
      if ((paramView != null) && (paramView.getText() != null))
      {
        a.e = paramView.getText().toString();
        ((InputMethodManager)((Activity)localObject).getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
      }
      a.e = a.e.trim();
      if ((a.e != null) && (!a.e.equals("")) && (a.e.length() != 0)) {
        if (a.b.getLiveFyreToken() == null)
        {
          EpisodeCommentsFragment.e();
          InputMethodManager localInputMethodManager = (InputMethodManager)((Activity)localObject).getSystemService("input_method");
          if (paramView.getWindowToken() != null) {
            localInputMethodManager.hideSoftInputFromWindow(paramView.getWindowToken(), 0);
          }
          AccountUIHelper.setFrom("Comments Page");
          if (a.getActivity().isFinishing()) {
            break label286;
          }
        }
      }
    }
    label286:
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        SVODPopupHelper.setWeWantToSeeVideo(null);
        SVODPopupHelper.setWeWantToSeeShow(null);
        AccountUIHelper.b((Context)localObject);
      }
      return;
      localObject = (InputMethodManager)((Activity)localObject).getSystemService("input_method");
      if (paramView.getWindowToken() != null) {
        ((InputMethodManager)localObject).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
      }
      EpisodeCommentsFragment.e();
      a.d(null);
      return;
      Toast.makeText((Context)localObject, "You must enter text to submit a comment.", 1).show();
      return;
      a.a((Context)localObject, null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.EpisodeCommentsFragment.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */