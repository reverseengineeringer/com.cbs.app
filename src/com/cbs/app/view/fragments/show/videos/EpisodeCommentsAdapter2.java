package com.cbs.app.view.fragments.show.videos;

import android.content.Context;
import android.graphics.Color;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.cbs.app.service.LiveFyreService;
import com.cbs.app.view.utils.Util;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class EpisodeCommentsAdapter2
  extends BaseAdapter
{
  private static final String a = EpisodeCommentsAdapter2.class.getSimpleName();
  private Context b;
  private LiveFyreService c;
  private JSONArray d = null;
  private CommentListener2 e = null;
  
  public EpisodeCommentsAdapter2(Context paramContext, LiveFyreService paramLiveFyreService)
  {
    c = paramLiveFyreService;
    b = paramContext;
    d = paramLiveFyreService.getComments();
  }
  
  private static a a(View paramView)
  {
    a locala = new a();
    a = ((TextView)paramView.findViewById(2131689692));
    b = ((TextView)paramView.findViewById(2131689697));
    c = ((TextView)paramView.findViewById(2131689698));
    d = ((TextView)paramView.findViewById(2131690143));
    e = ((TextView)paramView.findViewById(2131690144));
    f = ((Button)paramView.findViewById(2131689702));
    g = ((Button)paramView.findViewById(2131690145));
    h = ((LinearLayout)paramView.findViewById(2131690146));
    return locala;
  }
  
  private JSONObject a(int paramInt)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (d != null)
    {
      localObject1 = localObject2;
      if (d.length() <= 0) {}
    }
    try
    {
      localObject1 = d.getJSONObject(paramInt);
      return (JSONObject)localObject1;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  private void a(a parama, JSONObject paramJSONObject, int paramInt, String paramString)
  {
    int i;
    int j;
    if ((paramJSONObject != null) && (parama != null))
    {
      new StringBuilder("populateCell for:\n\n").append(paramJSONObject).append("\n\n");
      i = 1;
      try
      {
        j = paramJSONObject.getInt("vis");
        i = j;
        n = paramJSONObject.getInt("type\n                        e.printStackTrace();");
        i = j;
      }
      catch (JSONException paramString)
      {
        try
        {
          localObject2 = paramJSONObject.getJSONObject("content");
          localObject1 = localObject2;
          localObject4 = ((JSONObject)localObject2).getString("authorId");
          localObject1 = localObject4;
          localObject4 = localObject2;
          if (localObject4 == null) {
            break label877;
          }
          localObject2 = c.a((String)localObject1);
          localObject1 = null;
          i = 0;
          j = 0;
          if (localObject2 == null) {
            break label887;
          }
        }
        catch (JSONException paramString)
        {
          try
          {
            localObject2 = ((JSONObject)localObject2).getString("displayName");
            if (localObject2 == null) {
              break label160;
            }
            i = 1;
            j = 1;
            Object localObject1 = localObject2;
            a.setText((CharSequence)localObject2);
            i = j;
            localObject1 = localObject2;
            localObject5 = ((JSONObject)localObject4).getString("bodyHtml");
            localObject1 = localObject2;
            i = j;
            localObject2 = localObject5;
            if (i != 0) {
              break label203;
            }
            a.setText("Anonymous");
            if (localObject2 == null) {
              break label291;
            }
            localObject5 = Html.fromHtml((String)localObject2).toString();
            localObject2 = localObject5;
            if (paramString == null) {
              break label276;
            }
            localObject2 = ((String)localObject5).replaceAll("@" + Pattern.quote(paramString), "<b>@" + paramString + "</b>");
            b.setText(Html.fromHtml((String)localObject2).toString());
            l1 = 0L;
          }
          catch (JSONException paramString)
          {
            try
            {
              l2 = ((JSONObject)localObject4).getLong("createdAt");
              l1 = l2;
              c.setText(Util.b(l1 * 1000L));
              g.setTag(paramJSONObject);
              g.setOnClickListener(new View.OnClickListener()
              {
                public final void onClick(View paramAnonymousView)
                {
                  paramAnonymousView = (JSONObject)paramAnonymousView.getTag();
                  try
                  {
                    EpisodeCommentsAdapter2.a();
                    new StringBuilder("like: ").append(paramAnonymousView.getString("id"));
                    if (EpisodeCommentsAdapter2.a(EpisodeCommentsAdapter2.this) != null) {
                      EpisodeCommentsAdapter2.a(EpisodeCommentsAdapter2.this).b(paramAnonymousView);
                    }
                    return;
                  }
                  catch (JSONException localJSONException)
                  {
                    for (;;)
                    {
                      localJSONException.printStackTrace();
                    }
                  }
                }
              });
              f.setTag(paramJSONObject);
              f.setOnClickListener(new View.OnClickListener()
              {
                public final void onClick(View paramAnonymousView)
                {
                  paramAnonymousView = (JSONObject)paramAnonymousView.getTag();
                  try
                  {
                    EpisodeCommentsAdapter2.a();
                    new StringBuilder("reply: ").append(paramAnonymousView.getString("id"));
                    if (EpisodeCommentsAdapter2.a(EpisodeCommentsAdapter2.this) != null) {
                      EpisodeCommentsAdapter2.a(EpisodeCommentsAdapter2.this).a(paramAnonymousView);
                    }
                    return;
                  }
                  catch (JSONException localJSONException)
                  {
                    for (;;) {}
                  }
                }
              });
            }
            catch (JSONException paramString)
            {
              try
              {
                for (;;)
                {
                  paramString = paramJSONObject.getJSONArray("childContent");
                  if (paramString == null) {
                    break label770;
                  }
                  new StringBuilder("childComments: ").append(paramString.length());
                  i = 0;
                  k = 0;
                  i1 = 0;
                  for (;;)
                  {
                    m = i;
                    j = k;
                    if (i1 >= paramString.length()) {
                      break label776;
                    }
                    m = i;
                    try
                    {
                      localObject2 = paramString.getJSONObject(i1);
                      m = i;
                      localObject4 = ((JSONObject)localObject2).getJSONObject("content");
                      m = i;
                      j = ((JSONObject)localObject2).getInt("type");
                      m = i;
                      localObject4 = ((JSONObject)localObject4).getString("ancestorId");
                      if (j != 1) {
                        break;
                      }
                      m = k + 1;
                      j = i;
                    }
                    catch (JSONException localJSONException4)
                    {
                      for (;;)
                      {
                        j = m;
                        m = k;
                      }
                    }
                    i1 += 1;
                    i = j;
                    k = m;
                  }
                  localJSONException1 = localJSONException1;
                  n = 0;
                  continue;
                  localJSONException2 = localJSONException2;
                  localObject4 = localJSONException1;
                  str = null;
                  continue;
                  localJSONException3 = localJSONException3;
                  localJSONObject = null;
                }
                paramString = paramString;
                paramString.printStackTrace();
              }
              catch (JSONException paramString)
              {
                for (;;)
                {
                  int n;
                  paramString = null;
                  continue;
                  j = i;
                  m = k;
                  if (n == 0)
                  {
                    j = i;
                    if (localObject4 != null) {
                      j = i + 1;
                    }
                    m = j;
                    localObject5 = LayoutInflater.from(b);
                    m = j;
                    localObject4 = new RelativeLayout.LayoutParams(-1, -2);
                    m = j;
                    ((RelativeLayout.LayoutParams)localObject4).setMargins((paramInt + 1) * Util.a(b, 12.0D), 0, 0, 0);
                    m = j;
                    localObject5 = ((LayoutInflater)localObject5).inflate(2130903212, h, false);
                    m = paramInt * 6 + 232;
                    i = m;
                    if (m > 255) {
                      i = 255;
                    }
                    m = j;
                    ((View)localObject5).setBackgroundColor(Color.argb(255, i, i, i));
                    m = j;
                    locala = a((View)localObject5);
                    m = j;
                    h.addView((View)localObject5, (ViewGroup.LayoutParams)localObject4);
                    m = j;
                    a(locala, localJSONObject, paramInt + 1, str);
                    m = k;
                  }
                }
                m = 0;
                j = 0;
                h.setVisibility(0);
              }
            }
          }
        }
      }
      if ((i == 1) && (n == 0)) {
        localObject1 = null;
      }
    }
    for (;;)
    {
      try
      {
        Object localObject2;
        Object localObject4;
        label160:
        Object localObject5;
        label203:
        label276:
        label291:
        long l1;
        long l2;
        int k;
        int i1;
        int m;
        JSONObject localJSONObject;
        a locala;
        label770:
        label776:
        paramJSONObject.put("likes", j);
        try
        {
          paramJSONObject.put("replies", m);
          if (e != null) {
            e.setText(Integer.toString(m) + " Replies");
          }
          if (d != null) {
            d.setText(j + " Likes");
          }
          label877:
          return;
        }
        catch (JSONException paramJSONObject)
        {
          continue;
        }
      }
      catch (JSONException paramString)
      {
        continue;
      }
      label887:
      String str = null;
      i = 0;
      Object localObject3 = null;
    }
  }
  
  public int getCount()
  {
    if (d == null) {
      return 0;
    }
    return d.length();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = ((LayoutInflater)b.getSystemService("layout_inflater")).inflate(2130903212, paramViewGroup, false);
      paramViewGroup = a(paramView);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      a(paramViewGroup, a(paramInt), 0, null);
      return paramView;
      paramViewGroup = (a)paramView.getTag();
    }
  }
  
  public int getViewTypeCount()
  {
    int i = getCount();
    if (i > 1) {
      return i;
    }
    return 1;
  }
  
  public void setCommentListener(CommentListener2 paramCommentListener2)
  {
    e = paramCommentListener2;
  }
  
  public static abstract interface CommentListener2
  {
    public abstract void a(JSONObject paramJSONObject);
    
    public abstract void b(JSONObject paramJSONObject);
  }
  
  static final class a
  {
    TextView a;
    TextView b;
    TextView c;
    TextView d;
    TextView e;
    Button f;
    Button g;
    LinearLayout h;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.EpisodeCommentsAdapter2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */