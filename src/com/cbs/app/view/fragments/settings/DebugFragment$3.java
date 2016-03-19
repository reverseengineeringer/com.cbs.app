package com.cbs.app.view.fragments.settings;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.cbs.app.view.utils.Util;

final class DebugFragment$3
  implements View.OnClickListener
{
  DebugFragment$3(DebugFragment paramDebugFragment, EditText paramEditText) {}
  
  public final void onClick(View paramView)
  {
    DebugFragment.b();
    Util.e(b.getActivity(), null);
    if (Util.I(b.getActivity()).equalsIgnoreCase("com.amazon.venezia"))
    {
      a.setText("9a06af4666595a16");
      return;
    }
    a.setText("b700a363a73b9ada");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */