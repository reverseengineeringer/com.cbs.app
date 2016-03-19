package android.support.v4.print;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.CancellationSignal.OnCancelListener;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentAdapter.LayoutResultCallback;
import android.print.PrintDocumentInfo.Builder;
import java.io.FileNotFoundException;

class PrintHelperKitkat$2
  extends PrintDocumentAdapter
{
  private PrintAttributes mAttributes;
  Bitmap mBitmap = null;
  AsyncTask<Uri, Boolean, Bitmap> mLoadBitmap;
  
  PrintHelperKitkat$2(PrintHelperKitkat paramPrintHelperKitkat, String paramString, Uri paramUri, PrintHelperKitkat.OnPrintFinishCallback paramOnPrintFinishCallback, int paramInt) {}
  
  private void cancelLoad()
  {
    synchronized (PrintHelperKitkat.access$400(this$0))
    {
      if (this$0.mDecodeOptions != null)
      {
        this$0.mDecodeOptions.requestCancelDecode();
        this$0.mDecodeOptions = null;
      }
      return;
    }
  }
  
  public void onFinish()
  {
    super.onFinish();
    cancelLoad();
    if (mLoadBitmap != null) {
      mLoadBitmap.cancel(true);
    }
    if (val$callback != null) {
      val$callback.onFinish();
    }
    if (mBitmap != null)
    {
      mBitmap.recycle();
      mBitmap = null;
    }
  }
  
  public void onLayout(final PrintAttributes paramPrintAttributes1, final PrintAttributes paramPrintAttributes2, final CancellationSignal paramCancellationSignal, final PrintDocumentAdapter.LayoutResultCallback paramLayoutResultCallback, Bundle paramBundle)
  {
    boolean bool = true;
    mAttributes = paramPrintAttributes2;
    if (paramCancellationSignal.isCanceled())
    {
      paramLayoutResultCallback.onLayoutCancelled();
      return;
    }
    if (mBitmap != null)
    {
      paramCancellationSignal = new PrintDocumentInfo.Builder(val$jobName).setContentType(1).setPageCount(1).build();
      if (!paramPrintAttributes2.equals(paramPrintAttributes1)) {}
      for (;;)
      {
        paramLayoutResultCallback.onLayoutFinished(paramCancellationSignal, bool);
        return;
        bool = false;
      }
    }
    mLoadBitmap = new AsyncTask()
    {
      protected Bitmap doInBackground(Uri... paramAnonymousVarArgs)
      {
        try
        {
          paramAnonymousVarArgs = PrintHelperKitkat.access$300(this$0, val$imageFile, 3500);
          return paramAnonymousVarArgs;
        }
        catch (FileNotFoundException paramAnonymousVarArgs) {}
        return null;
      }
      
      protected void onCancelled(Bitmap paramAnonymousBitmap)
      {
        paramLayoutResultCallback.onLayoutCancelled();
        mLoadBitmap = null;
      }
      
      protected void onPostExecute(Bitmap paramAnonymousBitmap)
      {
        boolean bool = true;
        super.onPostExecute(paramAnonymousBitmap);
        mBitmap = paramAnonymousBitmap;
        if (paramAnonymousBitmap != null)
        {
          paramAnonymousBitmap = new PrintDocumentInfo.Builder(val$jobName).setContentType(1).setPageCount(1).build();
          if (!paramPrintAttributes2.equals(paramPrintAttributes1)) {
            paramLayoutResultCallback.onLayoutFinished(paramAnonymousBitmap, bool);
          }
        }
        for (;;)
        {
          mLoadBitmap = null;
          return;
          bool = false;
          break;
          paramLayoutResultCallback.onLayoutFailed(null);
        }
      }
      
      protected void onPreExecute()
      {
        paramCancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener()
        {
          public void onCancel()
          {
            PrintHelperKitkat.2.this.cancelLoad();
            cancel(false);
          }
        });
      }
    }.execute(new Uri[0]);
  }
  
  /* Error */
  public void onWrite(android.print.PageRange[] paramArrayOfPageRange, android.os.ParcelFileDescriptor paramParcelFileDescriptor, CancellationSignal paramCancellationSignal, android.print.PrintDocumentAdapter.WriteResultCallback paramWriteResultCallback)
  {
    // Byte code:
    //   0: new 141	android/print/pdf/PrintedPdfDocument
    //   3: dup
    //   4: aload_0
    //   5: getfield 34	android/support/v4/print/PrintHelperKitkat$2:this$0	Landroid/support/v4/print/PrintHelperKitkat;
    //   8: getfield 145	android/support/v4/print/PrintHelperKitkat:mContext	Landroid/content/Context;
    //   11: aload_0
    //   12: getfield 89	android/support/v4/print/PrintHelperKitkat$2:mAttributes	Landroid/print/PrintAttributes;
    //   15: invokespecial 148	android/print/pdf/PrintedPdfDocument:<init>	(Landroid/content/Context;Landroid/print/PrintAttributes;)V
    //   18: astore_3
    //   19: aload_0
    //   20: getfield 34	android/support/v4/print/PrintHelperKitkat$2:this$0	Landroid/support/v4/print/PrintHelperKitkat;
    //   23: aload_0
    //   24: getfield 47	android/support/v4/print/PrintHelperKitkat$2:mBitmap	Landroid/graphics/Bitmap;
    //   27: aload_0
    //   28: getfield 89	android/support/v4/print/PrintHelperKitkat$2:mAttributes	Landroid/print/PrintAttributes;
    //   31: invokevirtual 152	android/print/PrintAttributes:getColorMode	()I
    //   34: invokestatic 156	android/support/v4/print/PrintHelperKitkat:access$000	(Landroid/support/v4/print/PrintHelperKitkat;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    //   37: astore_1
    //   38: aload_3
    //   39: iconst_1
    //   40: invokevirtual 160	android/print/pdf/PrintedPdfDocument:startPage	(I)Landroid/graphics/pdf/PdfDocument$Page;
    //   43: astore 5
    //   45: new 162	android/graphics/RectF
    //   48: dup
    //   49: aload 5
    //   51: invokevirtual 168	android/graphics/pdf/PdfDocument$Page:getInfo	()Landroid/graphics/pdf/PdfDocument$PageInfo;
    //   54: invokevirtual 174	android/graphics/pdf/PdfDocument$PageInfo:getContentRect	()Landroid/graphics/Rect;
    //   57: invokespecial 177	android/graphics/RectF:<init>	(Landroid/graphics/Rect;)V
    //   60: astore 6
    //   62: aload_0
    //   63: getfield 34	android/support/v4/print/PrintHelperKitkat$2:this$0	Landroid/support/v4/print/PrintHelperKitkat;
    //   66: aload_0
    //   67: getfield 47	android/support/v4/print/PrintHelperKitkat$2:mBitmap	Landroid/graphics/Bitmap;
    //   70: invokevirtual 180	android/graphics/Bitmap:getWidth	()I
    //   73: aload_0
    //   74: getfield 47	android/support/v4/print/PrintHelperKitkat$2:mBitmap	Landroid/graphics/Bitmap;
    //   77: invokevirtual 183	android/graphics/Bitmap:getHeight	()I
    //   80: aload 6
    //   82: aload_0
    //   83: getfield 42	android/support/v4/print/PrintHelperKitkat$2:val$fittingMode	I
    //   86: invokestatic 187	android/support/v4/print/PrintHelperKitkat:access$100	(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    //   89: astore 6
    //   91: aload 5
    //   93: invokevirtual 191	android/graphics/pdf/PdfDocument$Page:getCanvas	()Landroid/graphics/Canvas;
    //   96: aload_1
    //   97: aload 6
    //   99: aconst_null
    //   100: invokevirtual 197	android/graphics/Canvas:drawBitmap	(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    //   103: aload_3
    //   104: aload 5
    //   106: invokevirtual 201	android/print/pdf/PrintedPdfDocument:finishPage	(Landroid/graphics/pdf/PdfDocument$Page;)V
    //   109: aload_3
    //   110: new 203	java/io/FileOutputStream
    //   113: dup
    //   114: aload_2
    //   115: invokevirtual 209	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   118: invokespecial 212	java/io/FileOutputStream:<init>	(Ljava/io/FileDescriptor;)V
    //   121: invokevirtual 216	android/print/pdf/PrintedPdfDocument:writeTo	(Ljava/io/OutputStream;)V
    //   124: aload 4
    //   126: iconst_1
    //   127: anewarray 218	android/print/PageRange
    //   130: dup
    //   131: iconst_0
    //   132: getstatic 222	android/print/PageRange:ALL_PAGES	Landroid/print/PageRange;
    //   135: aastore
    //   136: invokevirtual 228	android/print/PrintDocumentAdapter$WriteResultCallback:onWriteFinished	([Landroid/print/PageRange;)V
    //   139: aload_3
    //   140: invokevirtual 231	android/print/pdf/PrintedPdfDocument:close	()V
    //   143: aload_2
    //   144: ifnull +7 -> 151
    //   147: aload_2
    //   148: invokevirtual 232	android/os/ParcelFileDescriptor:close	()V
    //   151: aload_1
    //   152: aload_0
    //   153: getfield 47	android/support/v4/print/PrintHelperKitkat$2:mBitmap	Landroid/graphics/Bitmap;
    //   156: if_acmpeq +7 -> 163
    //   159: aload_1
    //   160: invokevirtual 85	android/graphics/Bitmap:recycle	()V
    //   163: return
    //   164: astore 5
    //   166: ldc -22
    //   168: ldc -20
    //   170: aload 5
    //   172: invokestatic 242	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   175: pop
    //   176: aload 4
    //   178: aconst_null
    //   179: invokevirtual 246	android/print/PrintDocumentAdapter$WriteResultCallback:onWriteFailed	(Ljava/lang/CharSequence;)V
    //   182: goto -43 -> 139
    //   185: astore 4
    //   187: aload_3
    //   188: invokevirtual 231	android/print/pdf/PrintedPdfDocument:close	()V
    //   191: aload_2
    //   192: ifnull +7 -> 199
    //   195: aload_2
    //   196: invokevirtual 232	android/os/ParcelFileDescriptor:close	()V
    //   199: aload_1
    //   200: aload_0
    //   201: getfield 47	android/support/v4/print/PrintHelperKitkat$2:mBitmap	Landroid/graphics/Bitmap;
    //   204: if_acmpeq +7 -> 211
    //   207: aload_1
    //   208: invokevirtual 85	android/graphics/Bitmap:recycle	()V
    //   211: aload 4
    //   213: athrow
    //   214: astore_2
    //   215: goto -64 -> 151
    //   218: astore_2
    //   219: goto -20 -> 199
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	222	0	this	2
    //   0	222	1	paramArrayOfPageRange	android.print.PageRange[]
    //   0	222	2	paramParcelFileDescriptor	android.os.ParcelFileDescriptor
    //   0	222	3	paramCancellationSignal	CancellationSignal
    //   0	222	4	paramWriteResultCallback	android.print.PrintDocumentAdapter.WriteResultCallback
    //   43	62	5	localPage	android.graphics.pdf.PdfDocument.Page
    //   164	7	5	localIOException	java.io.IOException
    //   60	38	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   109	139	164	java/io/IOException
    //   38	109	185	finally
    //   109	139	185	finally
    //   166	182	185	finally
    //   147	151	214	java/io/IOException
    //   195	199	218	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     android.support.v4.print.PrintHelperKitkat.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */