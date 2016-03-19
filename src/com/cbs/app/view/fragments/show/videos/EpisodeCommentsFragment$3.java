package com.cbs.app.view.fragments.show.videos;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.cbs.app.service.LiveFyreService;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;

final class EpisodeCommentsFragment$3
  implements DialogInterface.OnShowListener
{
  EpisodeCommentsFragment$3(EpisodeCommentsFragment paramEpisodeCommentsFragment, String paramString, Context paramContext) {}
  
  public final void onShow(DialogInterface paramDialogInterface)
  {
    paramDialogInterface = c.i.getButton(-1);
    if (paramDialogInterface != null)
    {
      paramDialogInterface.setTag(a);
      paramDialogInterface.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          c.j = null;
          if (paramAnonymousView.getTag() != null) {
            c.j = paramAnonymousView.getTag().toString();
          }
          c.e = null;
          paramAnonymousView = (EditText)c.i.findViewById(2131690147);
          InputMethodManager localInputMethodManager;
          View localView;
          if ((paramAnonymousView != null) && (paramAnonymousView.getText() != null))
          {
            c.e = paramAnonymousView.getText().toString();
            localInputMethodManager = (InputMethodManager)b.getSystemService("input_method");
            if (localInputMethodManager != null)
            {
              localView = ((Activity)b).getCurrentFocus();
              if ((localView != null) && (localView.getWindowToken() != null)) {
                localInputMethodManager.hideSoftInputFromWindow(paramAnonymousView.getWindowToken(), 0);
              }
            }
          }
          c.e = c.e.trim();
          if ((paramAnonymousView != null) && (c.e != null) && (!c.e.equals("")) && (c.e.length() != 0))
          {
            localInputMethodManager = (InputMethodManager)b.getSystemService("input_method");
            if (localInputMethodManager != null)
            {
              localView = ((Activity)b).getCurrentFocus();
              if ((localView != null) && (localView.getWindowToken() != null)) {
                localInputMethodManager.hideSoftInputFromWindow(paramAnonymousView.getWindowToken(), 0);
              }
            }
            c.i.dismiss();
            c.h = false;
            if (c.b.getLiveFyreToken() == null)
            {
              AccountUIHelper.setFrom("Comments Page");
              paramAnonymousView = c.getActivity();
              if ((paramAnonymousView == null) || (paramAnonymousView.isFinishing())) {
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
              AccountUIHelper.b(b);
            }
            return;
            c.d(c.j);
            return;
            Toast.makeText(b, "You must enter text to submit a comment.", 1).show();
            return;
          }
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.EpisodeCommentsFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */