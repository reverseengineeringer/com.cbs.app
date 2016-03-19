package com.cbs.app.view.fragments.show.videos;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class ShowDetailsFragment$12
  implements View.OnClickListener
{
  ShowDetailsFragment$12(ShowDetailsFragment paramShowDetailsFragment, String paramString) {}
  
  public final void onClick(View paramView)
  {
    paramView = new Intent(b.getActivity(), CustomWebviewActivity.class);
    paramView.putExtra("launchUrl", a);
    b.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.ShowDetailsFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */