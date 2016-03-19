package com.cbs.app.view.fragments.settings;

import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.ShowServiceManager.ShowServiceManagerListener;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.fragments.show.model.ShowsGroups;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class DebugFragment$26
  implements ShowServiceManager.ShowServiceManagerListener
{
  DebugFragment$26(DebugFragment paramDebugFragment, ArrayList paramArrayList, Spinner paramSpinner) {}
  
  public final void a()
  {
    if (ShowServiceManager.b != null)
    {
      Object localObject2 = bshowItems;
      Object localObject1 = new ArrayList();
      if (localObject2 != null)
      {
        localObject2 = ((List)localObject2).iterator();
        int i = 0;
        int j = 0;
        while (((Iterator)localObject2).hasNext())
        {
          ShowItem localShowItem = (ShowItem)((Iterator)localObject2).next();
          if (showId == DebugFragment.g(c)) {
            j = i;
          }
          i += 1;
          ((ArrayList)localObject1).add(title + " - " + showId);
          a.add(Long.valueOf(showId));
        }
        localObject1 = new ArrayAdapter(c.a, 17367048, (List)localObject1);
        ((ArrayAdapter)localObject1).setDropDownViewResource(17367049);
        b.setAdapter((SpinnerAdapter)localObject1);
        b.setSelection(j);
      }
    }
  }
  
  public final void a(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.26
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */