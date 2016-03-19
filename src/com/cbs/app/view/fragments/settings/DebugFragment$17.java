package com.cbs.app.view.fragments.settings;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.visualon.player.PlayerActivityV2;

final class DebugFragment$17
  implements View.OnClickListener
{
  DebugFragment$17(DebugFragment paramDebugFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new Intent(a.a, PlayerActivityV2.class);
    paramView.putExtra("pid", "paRqwt8NVE0y");
    a.a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */