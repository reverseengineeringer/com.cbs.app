package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModelListener;

public abstract interface AuthService
  extends Service
{
  public abstract void a(Context paramContext);
  
  public abstract void a(Context paramContext, ResponseModelListener paramResponseModelListener);
  
  public abstract void a(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener);
  
  public abstract void a(Context paramContext, String paramString1, String paramString2, ResponseModelListener paramResponseModelListener);
  
  public abstract void a(Context paramContext, String paramString1, String paramString2, String paramString3, ResponseModelListener paramResponseModelListener);
  
  public abstract void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, String paramString5, String paramString6, String paramString7, ResponseModelListener paramResponseModelListener);
  
  public abstract void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, String paramString7, String paramString8, String paramString9, ResponseModelListener paramResponseModelListener);
  
  public abstract void b(Context paramContext);
  
  public abstract void b(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener);
  
  public abstract void b(Context paramContext, String paramString1, String paramString2, ResponseModelListener paramResponseModelListener);
}

/* Location:
 * Qualified Name:     com.cbs.app.service.AuthService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */