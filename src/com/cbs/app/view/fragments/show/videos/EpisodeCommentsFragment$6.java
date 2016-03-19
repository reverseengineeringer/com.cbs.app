package com.cbs.app.view.fragments.show.videos;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import com.cbs.app.service.LiveFyreService;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import org.json.JSONException;
import org.json.JSONObject;

final class EpisodeCommentsFragment$6
  implements EpisodeCommentsAdapter2.CommentListener2
{
  EpisodeCommentsFragment$6(EpisodeCommentsFragment paramEpisodeCommentsFragment) {}
  
  public final void a(JSONObject paramJSONObject)
  {
    Object localObject = null;
    EpisodeCommentsFragment.e();
    a.j = null;
    a.g = false;
    a.e = null;
    try
    {
      paramJSONObject = paramJSONObject.getJSONObject("content");
      if (paramJSONObject == null) {}
    }
    catch (JSONException paramJSONObject)
    {
      try
      {
        paramJSONObject = paramJSONObject.getString("id");
        a.j = paramJSONObject;
        paramJSONObject = a.getActivity();
        a.a(paramJSONObject, a.j);
        return;
        paramJSONObject = paramJSONObject;
        paramJSONObject.printStackTrace();
        paramJSONObject = null;
      }
      catch (JSONException paramJSONObject)
      {
        for (;;)
        {
          paramJSONObject.printStackTrace();
          paramJSONObject = (JSONObject)localObject;
        }
      }
    }
  }
  
  public final void b(JSONObject paramJSONObject)
  {
    EpisodeCommentsFragment.e();
    a.j = null;
    FragmentActivity localFragmentActivity = a.getActivity();
    for (;;)
    {
      try
      {
        paramJSONObject = paramJSONObject.getJSONObject("content");
        if (paramJSONObject == null) {}
      }
      catch (JSONException paramJSONObject)
      {
        try
        {
          paramJSONObject = paramJSONObject.getString("id");
          a.j = paramJSONObject;
          if (a.b != null)
          {
            if (a.b.getLiveFyreToken() != null) {
              continue;
            }
            EpisodeCommentsFragment.e();
            a.g = true;
            AccountUIHelper.setFrom("Comments Page");
            if (a.getActivity().isFinishing()) {
              break label161;
            }
            i = 1;
            if (i != 0)
            {
              SVODPopupHelper.setWeWantToSeeVideo(null);
              SVODPopupHelper.setWeWantToSeeShow(null);
              SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
              AccountUIHelper.b(localFragmentActivity);
            }
          }
          return;
          paramJSONObject = paramJSONObject;
          paramJSONObject.printStackTrace();
          paramJSONObject = null;
        }
        catch (JSONException paramJSONObject)
        {
          paramJSONObject.printStackTrace();
          paramJSONObject = null;
          continue;
          EpisodeCommentsFragment.e();
          a.b(a.j);
          return;
        }
      }
      label161:
      int i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.EpisodeCommentsFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */