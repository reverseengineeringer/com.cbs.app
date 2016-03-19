package com.cbs.app.view.fragments.settings;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.utils.Util;

final class DebugFragment$2
  implements View.OnClickListener
{
  DebugFragment$2(DebugFragment paramDebugFragment, MainApplication paramMainApplication, EditText paramEditText) {}
  
  public final void onClick(View paramView)
  {
    DebugFragment.b();
    Util.e(c.getActivity(), "com.android.vending");
    a.e();
    b.setText("b700a363a73b9ada");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */