package com.cbs.app.view.fragments.show.videos;

import android.app.Activity;
import android.widget.EditText;
import android.widget.Toast;
import com.cbs.app.service.LiveFyreService;

final class EpisodeCommentsFragment$8$1
  implements Runnable
{
  EpisodeCommentsFragment$8$1(EpisodeCommentsFragment.8 param8, Activity paramActivity) {}
  
  public final void run()
  {
    Activity localActivity = a;
    StringBuilder localStringBuilder = new StringBuilder("You have ");
    if (b.a) {}
    for (Object localObject = "liked";; localObject = "unliked")
    {
      Toast.makeText(localActivity, (String)localObject + " this comment.", 1).show();
      localObject = (EditText)b.b.getActivity().findViewById(2131689490);
      if (localObject != null) {
        ((EditText)localObject).setText("");
      }
      b.b.b.a(b.b.d);
      b.b.b();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.EpisodeCommentsFragment.8.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */