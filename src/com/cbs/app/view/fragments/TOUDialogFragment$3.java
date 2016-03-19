package com.cbs.app.view.fragments;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.style.ClickableSpan;
import android.view.View;

final class TOUDialogFragment$3
  extends ClickableSpan
{
  TOUDialogFragment$3(TOUDialogFragment paramTOUDialogFragment, String paramString) {}
  
  public final void onClick(View paramView)
  {
    TOUDialogFragment.a();
    paramView = new Intent("android.intent.action.VIEW");
    paramView.setData(Uri.parse(a));
    b.getActivity().startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.TOUDialogFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */