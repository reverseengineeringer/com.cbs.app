package com.cbs.app.view.fragments.show.videos;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.b.a.a.b;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.VideoUtil;
import java.io.UnsupportedEncodingException;

final class VideoDetailsFragment$6
  implements View.OnClickListener
{
  VideoDetailsFragment$6(VideoDetailsFragment paramVideoDetailsFragment) {}
  
  public final void onClick(View paramView)
  {
    VideoDetailsFragment.a();
    Intent localIntent = new Intent(VideoDetailsFragment.e(a), EpisodeCommentsActivity.class);
    String str1 = VideoDetailsFragment.a(a).getCid();
    paramView = str1;
    try
    {
      str1 = b.a(str1);
      paramView = str1;
      str1 = str1.replace("=", "&amp;#61;");
      paramView = str1;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        String str2;
        localUnsupportedEncodingException.printStackTrace();
      }
    }
    localIntent.putExtra("articleId", paramView);
    paramView = "Episode Comments";
    if (VideoDetailsFragment.f(a) != null)
    {
      str1 = VideoDetailsFragment.f(a).getTitle();
      paramView = str1;
      if (VideoDetailsFragment.a(a) != null)
      {
        str2 = VideoUtil.b(VideoDetailsFragment.a(a));
        paramView = str1;
        if (str2 != null)
        {
          paramView = str1;
          if (!str2.equals("")) {
            paramView = str1 + " - " + VideoUtil.b(VideoDetailsFragment.a(a));
          }
        }
      }
      paramView = paramView + " Comments";
    }
    localIntent.putExtra("articleTitle", paramView);
    if (VideoDetailsFragment.f(a).getCategory() != null) {
      localIntent.putExtra("showCategory", VideoDetailsFragment.f(a).getCategory());
    }
    VideoDetailsFragment.g(a).startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideoDetailsFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */