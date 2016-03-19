package com.cbs.app.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.view.model.ShowAlbum;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;

public class ShowAlbumsAdapter
  extends ArrayAdapter<ShowAlbum>
{
  private Context a;
  private int b;
  private int c;
  
  public int getItemViewType(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramView = ((LayoutInflater)a.getSystemService("layout_inflater")).inflate(b, null);
      paramViewGroup = paramView;
      if (paramView != null)
      {
        paramViewGroup = new a();
        Object localObject = paramView.findViewById(2131689646);
        if ((localObject != null) && ((localObject instanceof ImageView))) {
          b = ((ImageView)localObject);
        }
        localObject = paramView.findViewById(2131689589);
        if ((localObject != null) && ((localObject instanceof TextView))) {
          a = ((TextView)localObject);
        }
        localObject = paramView.findViewById(2131689647);
        if ((localObject != null) && ((localObject instanceof TextView))) {
          c = ((TextView)localObject);
        }
        paramView.setTag(paramViewGroup);
        b.setImageBitmap(null);
        localObject = (ShowAlbum)getItem(paramInt);
        String str = ((ShowAlbum)localObject).getTitle().replace("Season ", "S").replace("Episode ", "Ep");
        a.setText(str);
        c.setText(((ShowAlbum)localObject).getTotal_photos() + " photos");
        paramInt = Util.a(a);
        ImageHelper.a(ImageHelper.a(((ShowAlbum)localObject).getFilepath(), c, paramInt), b);
        paramViewGroup = paramView;
      }
    }
    return paramViewGroup;
  }
  
  public int getViewTypeCount()
  {
    int i = getCount();
    if (i > 1) {
      return i;
    }
    return 1;
  }
  
  static final class a
  {
    protected TextView a;
    protected ImageView b;
    protected TextView c;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.ShowAlbumsAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */