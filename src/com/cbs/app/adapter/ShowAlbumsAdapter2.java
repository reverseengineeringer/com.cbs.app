package com.cbs.app.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.cbs.app.view.model.ShowAlbum;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import com.cbs.app.widget.GridViewWithHeaderBaseAdapter;

public class ShowAlbumsAdapter2
  extends GridViewWithHeaderBaseAdapter
{
  private Context a;
  private ShowAlbum[] e;
  
  public ShowAlbumsAdapter2(Context paramContext, ShowAlbum[] paramArrayOfShowAlbum)
  {
    super(paramContext);
    a = paramContext;
    e = ((ShowAlbum[])paramArrayOfShowAlbum.clone());
  }
  
  protected final View a(int paramInt, View paramView)
  {
    int i;
    a locala;
    if (paramView == null)
    {
      paramView = (LayoutInflater)a.getSystemService("layout_inflater");
      i = 2130903075;
      if ((Util.i(a)) || (Util.j(a))) {
        i = 2130903076;
      }
      paramView = paramView.inflate(i, null);
      locala = new a();
      b = ((ImageView)paramView.findViewById(2131689646));
      a = ((TextView)paramView.findViewById(2131689589));
      c = ((TextView)paramView.findViewById(2131689647));
      d = ((TextView)paramView.findViewById(2131689648));
      paramView.setTag(locala);
    }
    for (;;)
    {
      Object localObject1 = e[paramInt];
      if ((locala != null) && (localObject1 != null))
      {
        b.setImageBitmap(null);
        Object localObject2 = ((ShowAlbum)localObject1).getTitle().replace("Season ", "S").replace("Episode ", "Ep");
        a.setText((CharSequence)localObject2);
        c.setText(((ShowAlbum)localObject1).getTotal_photos() + " photos");
        long l = ((ShowAlbum)localObject1).getLive_date_sec();
        d.setText(Util.a(Long.valueOf(l)));
        localObject1 = ((ShowAlbum)localObject1).getFilepath();
        if (localObject1 == null) {
          break;
        }
        i = Util.a(a);
        paramInt = 240;
        if ((Util.i(a)) || (Util.j(a)))
        {
          int j = Util.b(a);
          paramInt = 3;
          if (Util.k(a)) {
            paramInt = 4;
          }
          j = (int)Math.round(j / paramInt);
          int k = (int)Math.round(j * 0.5625D);
          paramInt = Util.a(a, j);
          localObject2 = new RelativeLayout.LayoutParams(j, k);
          b.setLayoutParams((ViewGroup.LayoutParams)localObject2);
        }
        ImageHelper.a(ImageHelper.a((String)localObject1, paramInt, i), b);
      }
      return paramView;
      locala = (a)paramView.getTag();
    }
    b.setImageResource(2130837990);
    return paramView;
  }
  
  public int getItemCount()
  {
    if (e == null) {
      return 0;
    }
    return e.length;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public int getItemViewType(int paramInt)
  {
    return paramInt;
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
    protected TextView d;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.ShowAlbumsAdapter2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */