package com.cbs.app.view;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.service.ButtonServiceHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;

final class VideoSocialDialog$6
  implements View.OnClickListener
{
  public final void onClick(View paramView)
  {
    VideoSocialDialog.b().dismiss();
    AccountUIHelper.b(ButtonServiceHelper.f);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.VideoSocialDialog.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */