package com.cbs.app.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.view.model.DeviceCast;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import java.util.List;

public class DeviceCastAdapter
  extends ArrayAdapter<DeviceCast>
{
  private Context a;
  private int b;
  private int c = 0;
  
  public DeviceCastAdapter(Context paramContext)
  {
    super(paramContext, 2130903081);
    a = paramContext;
    b = 2130903081;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    String str;
    TextView localTextView;
    if (paramView == null)
    {
      localView = ((LayoutInflater)a.getSystemService("layout_inflater")).inflate(b, paramViewGroup, false);
      paramViewGroup = new a();
      a = ((ImageView)localView.findViewById(2131689585));
      b = ((TextView)localView.findViewById(2131689692));
      c = ((TextView)localView.findViewById(2131689693));
      localView.setTag(paramViewGroup);
      paramView = (DeviceCast)getItem(paramInt);
      if ((paramView != null) && (paramViewGroup != null))
      {
        a.setImageBitmap(null);
        b.setText(paramView.getTitle());
        str = paramView.getCharacterName();
        localTextView = c;
        if ((localTextView != null) && (str != null) && (!str.equals("")) && (!str.equals("null")))
        {
          if (str.contains("As")) {
            break label346;
          }
          localTextView.setText("As " + str);
          label193:
          if ((Util.i(a)) || (Util.j(a)))
          {
            if (paramInt != c) {
              break label356;
            }
            localTextView.setTextColor(a.getResources().getColor(17170443));
          }
        }
        label238:
        if ((!Util.g(a)) && (!Util.f(a))) {
          break label376;
        }
        if (paramView.getFilepathIPhoneThumb() == null) {
          break label425;
        }
        paramView = (String)paramView.getFilepathIPhoneThumb().get(0);
      }
    }
    for (;;)
    {
      label279:
      if (paramView != null)
      {
        paramInt = Util.a(a);
        if ((Util.g(a)) || (Util.f(a))) {}
        for (paramView = ImageHelper.a(paramView, 144.0D, paramInt);; paramView = ImageHelper.a(paramView, 200.0D, paramInt))
        {
          ImageHelper.a(paramView, a);
          return localView;
          paramViewGroup = (a)paramView.getTag();
          localView = paramView;
          break;
          label346:
          localTextView.setText(str);
          break label193;
          label356:
          localTextView.setTextColor(a.getResources().getColor(2131558584));
          break label238;
          label376:
          if (paramView.getFilepathIPadThumb() == null) {
            break label425;
          }
          paramView = (String)paramView.getFilepathIPadThumb().get(0);
          break label279;
        }
      }
      a.setImageResource(2130837990);
      return localView;
      label425:
      paramView = null;
    }
  }
  
  public void setSelected(int paramInt)
  {
    c = paramInt;
  }
  
  static final class a
  {
    public ImageView a;
    public TextView b;
    public TextView c;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.DeviceCastAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */