package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModelListener;
import java.util.List;

public abstract interface ShowService
  extends Service
{
  public abstract void a(Context paramContext, ResponseModelListener paramResponseModelListener);
  
  public abstract void a(Context paramContext, String paramString, int paramInt1, int paramInt2, ResponseModelListener paramResponseModelListener);
  
  public abstract void a(Context paramContext, String paramString, int paramInt, ResponseModelListener paramResponseModelListener);
  
  public abstract void a(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener);
  
  public abstract void a(Context paramContext, List<String> paramList, ResponseModelListener paramResponseModelListener);
  
  public abstract void a(Context paramContext, List<Integer> paramList, Integer paramInteger, ResponseModelListener paramResponseModelListener);
  
  public abstract void b(Context paramContext, String paramString, int paramInt, ResponseModelListener paramResponseModelListener);
  
  public abstract void b(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener);
  
  public abstract void b(Context paramContext, List<Long> paramList, Integer paramInteger, ResponseModelListener paramResponseModelListener);
  
  public abstract void c(Context paramContext, String paramString, int paramInt, ResponseModelListener paramResponseModelListener);
  
  public abstract void c(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener);
  
  public abstract void d(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener);
  
  public abstract void e(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener);
  
  public abstract void f(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener);
  
  public abstract void g(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener);
  
  public abstract void h(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener);
}

/* Location:
 * Qualified Name:     com.cbs.app.service.ShowService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */