package com.cbs.app.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;

public class UnableToConnectDialogHelper
{
  private static boolean a = false;
  
  /* Error */
  public static void a(final Context paramContext, String paramString1, final DialogInterface.OnClickListener paramOnClickListener1, String paramString2, final DialogInterface.OnClickListener paramOnClickListener2)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 14	com/cbs/app/view/UnableToConnectDialogHelper:a	Z
    //   6: ifne +170 -> 176
    //   9: aload_0
    //   10: instanceof 21
    //   13: ifeq +163 -> 176
    //   16: aload_0
    //   17: checkcast 21	android/app/Activity
    //   20: invokevirtual 25	android/app/Activity:isFinishing	()Z
    //   23: ifne +153 -> 176
    //   26: aload_0
    //   27: invokestatic 31	com/cbs/app/view/utils/Util:L	(Landroid/content/Context;)Z
    //   30: ifeq +150 -> 180
    //   33: aload_0
    //   34: invokevirtual 37	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   37: ldc 38
    //   39: invokevirtual 44	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   42: astore 5
    //   44: new 46	android/app/Dialog
    //   47: dup
    //   48: new 48	android/view/ContextThemeWrapper
    //   51: dup
    //   52: aload_0
    //   53: ldc 49
    //   55: invokespecial 52	android/view/ContextThemeWrapper:<init>	(Landroid/content/Context;I)V
    //   58: invokespecial 55	android/app/Dialog:<init>	(Landroid/content/Context;)V
    //   61: astore 6
    //   63: aload 6
    //   65: ldc 56
    //   67: invokevirtual 60	android/app/Dialog:setContentView	(I)V
    //   70: aload 6
    //   72: ldc 62
    //   74: invokevirtual 66	android/app/Dialog:setTitle	(Ljava/lang/CharSequence;)V
    //   77: aload 6
    //   79: iconst_0
    //   80: invokevirtual 70	android/app/Dialog:setCancelable	(Z)V
    //   83: aload 6
    //   85: ldc 71
    //   87: invokevirtual 75	android/app/Dialog:findViewById	(I)Landroid/view/View;
    //   90: checkcast 77	android/widget/TextView
    //   93: aload 5
    //   95: invokevirtual 80	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   98: aload 6
    //   100: ldc 81
    //   102: invokevirtual 75	android/app/Dialog:findViewById	(I)Landroid/view/View;
    //   105: checkcast 77	android/widget/TextView
    //   108: astore 5
    //   110: aload 6
    //   112: ldc 82
    //   114: invokevirtual 75	android/app/Dialog:findViewById	(I)Landroid/view/View;
    //   117: checkcast 77	android/widget/TextView
    //   120: astore 7
    //   122: aload 5
    //   124: aload_1
    //   125: invokevirtual 80	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   128: aload 7
    //   130: aload_3
    //   131: invokevirtual 80	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   134: aload 5
    //   136: new 6	com/cbs/app/view/UnableToConnectDialogHelper$1
    //   139: dup
    //   140: aload 6
    //   142: aload_0
    //   143: aload_2
    //   144: invokespecial 85	com/cbs/app/view/UnableToConnectDialogHelper$1:<init>	(Landroid/app/Dialog;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    //   147: invokevirtual 89	android/widget/TextView:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   150: aload 7
    //   152: new 8	com/cbs/app/view/UnableToConnectDialogHelper$2
    //   155: dup
    //   156: aload 6
    //   158: aload_0
    //   159: aload 4
    //   161: invokespecial 90	com/cbs/app/view/UnableToConnectDialogHelper$2:<init>	(Landroid/app/Dialog;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    //   164: invokevirtual 89	android/widget/TextView:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   167: iconst_1
    //   168: putstatic 14	com/cbs/app/view/UnableToConnectDialogHelper:a	Z
    //   171: aload 6
    //   173: invokevirtual 93	android/app/Dialog:show	()V
    //   176: ldc 2
    //   178: monitorexit
    //   179: return
    //   180: aload_0
    //   181: invokevirtual 37	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   184: ldc 94
    //   186: invokevirtual 44	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   189: astore 5
    //   191: goto -147 -> 44
    //   194: astore_0
    //   195: ldc 2
    //   197: monitorexit
    //   198: aload_0
    //   199: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	200	0	paramContext	Context
    //   0	200	1	paramString1	String
    //   0	200	2	paramOnClickListener1	DialogInterface.OnClickListener
    //   0	200	3	paramString2	String
    //   0	200	4	paramOnClickListener2	DialogInterface.OnClickListener
    //   42	148	5	localObject	Object
    //   61	111	6	localDialog	Dialog
    //   120	31	7	localTextView	android.widget.TextView
    // Exception table:
    //   from	to	target	type
    //   3	44	194	finally
    //   44	176	194	finally
    //   180	191	194	finally
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.UnableToConnectDialogHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */