package com.cbs.app.view.fragments.show;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.TextView;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.fragments.show.model.ShowsGroups;
import java.util.ArrayList;
import java.util.Iterator;

public class ShowSearchFragment
  extends ShowBrowseFragment
  implements TextWatcher
{
  private static final String l = ShowSearchFragment.class.getSimpleName();
  String j;
  String k = "xyzt1872361470@#$*$#)!@#&";
  private TextView m;
  private ArrayList<ShowItem> n;
  
  public final void a()
  {
    d();
  }
  
  public final void a(String paramString)
  {
    Object localObject = getView();
    j = paramString.trim();
    if ((j.equals(k)) || (localObject == null) || (bshowItems == null)) {
      return;
    }
    if (b.getVisibility() != 0)
    {
      ((View)localObject).setBackgroundColor(-1);
      b.setVisibility(0);
    }
    if (j.length() > 0)
    {
      k = j;
      if (n == null) {
        n = new ArrayList();
      }
      for (;;)
      {
        paramString = bshowItems.iterator();
        while (paramString.hasNext())
        {
          localObject = (ShowItem)paramString.next();
          if ((localObject != null) && (title.toLowerCase().contains(j.toLowerCase()))) {
            n.add(localObject);
          }
        }
        n.clear();
      }
      if (n.isEmpty()) {
        m.setText("No shows found containing:\n\"" + j + "\"");
      }
      for (;;)
      {
        c.a(n);
        b.scrollToPosition(0);
        return;
        m.setText("");
      }
    }
    if (paramString.length() > 0)
    {
      m.setText("no shows contain only spaces");
      b.setVisibility(8);
      return;
    }
    c.a(bshowItems);
    b.scrollToPosition(0);
    m.setText("");
    k = "xyzt1872361470@#$*$#)!@#&";
  }
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  protected final boolean c()
  {
    return true;
  }
  
  public final void e() {}
  
  public final boolean g()
  {
    return (b != null) && (b.getVisibility() == 0);
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (d.b())
    {
      a(paramCharSequence.toString());
      return;
    }
    d.getAllShows();
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    setUpForSearch(paramView);
  }
  
  public void setUpForSearch(View paramView)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = getView();
    }
    if (localView != null)
    {
      localView.findViewById(2131690054).setVisibility(8);
      m = ((TextView)localView.findViewById(2131690058));
      m.setText("");
      m.setVisibility(0);
      b.setVisibility(4);
      localView.setBackgroundColor(-1224736768);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.ShowSearchFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */