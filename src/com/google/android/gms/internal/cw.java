package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.ads.internal.client.n;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@fs
public final class cw
  extends ct
{
  private static final Set<String> b = Collections.synchronizedSet(new HashSet());
  private static final DecimalFormat c = new DecimalFormat("#,###");
  private File d;
  private boolean e;
  
  public cw(hs paramhs)
  {
    super(paramhs);
    paramhs = paramhs.getContext().getCacheDir();
    if (paramhs == null) {
      b.a(5);
    }
    do
    {
      return;
      d = new File(paramhs, "admobVideoStreams");
      if ((!d.isDirectory()) && (!d.mkdirs()))
      {
        new StringBuilder("Could not create preload cache directory at ").append(d.getAbsolutePath());
        b.a(5);
        d = null;
        return;
      }
    } while ((d.setReadable(true, false)) && (d.setExecutable(true, false)));
    new StringBuilder("Could not set cache file permissions at ").append(d.getAbsolutePath());
    b.a(5);
    d = null;
  }
  
  private File a(File paramFile)
  {
    return new File(d, paramFile.getName() + ".done");
  }
  
  public final void a()
  {
    e = true;
  }
  
  public final boolean a(String paramString)
  {
    if (d == null)
    {
      a(paramString, null, "noCacheDir", null);
      return false;
    }
    int i;
    int m;
    int j;
    int k;
    label141:
    long l1;
    long l2;
    label264:
    for (;;)
    {
      boolean bool1;
      if (d == null)
      {
        i = 0;
        ??? = ax.o;
        if (i <= ((Integer)o.n().a((at)???)).intValue()) {
          break;
        }
        if (d != null) {
          break label141;
        }
        bool1 = false;
      }
      for (;;)
      {
        if (bool1) {
          break label264;
        }
        b.a(5);
        a(paramString, null, "expireFailed", null);
        return false;
        ??? = d.listFiles();
        m = ???.length;
        i = 0;
        j = 0;
        while (j < m)
        {
          k = i;
          if (!???[j].getName().endsWith(".done")) {
            k = i + 1;
          }
          j += 1;
          i = k;
        }
        break;
        ??? = null;
        l1 = Long.MAX_VALUE;
        localObject5 = d.listFiles();
        j = localObject5.length;
        i = 0;
        while (i < j)
        {
          localObject4 = localObject5[i];
          if (((File)localObject4).getName().endsWith(".done")) {
            break label1457;
          }
          l2 = ((File)localObject4).lastModified();
          if (l2 >= l1) {
            break label1457;
          }
          ??? = localObject4;
          l1 = l2;
          i += 1;
        }
        bool1 = false;
        if (??? != null)
        {
          boolean bool2 = ((File)???).delete();
          ??? = a((File)???);
          bool1 = bool2;
          if (((File)???).isFile()) {
            bool1 = bool2 & ((File)???).delete();
          }
        }
      }
    }
    n.a();
    ??? = a.a(paramString);
    File localFile = new File(d, (String)???);
    Object localObject4 = a(localFile);
    if ((localFile.isFile()) && (((File)localObject4).isFile()))
    {
      i = (int)localFile.length();
      new StringBuilder("Stream cache hit at ").append(paramString);
      b.a(3);
      a(paramString, localFile.getAbsolutePath(), i);
      return true;
    }
    String str4 = d.getAbsolutePath() + paramString;
    synchronized (b)
    {
      if (b.contains(str4))
      {
        new StringBuilder("Stream cache already in progress at ").append(paramString);
        b.a(5);
        a(paramString, localFile.getAbsolutePath(), "inProgress", null);
        return false;
      }
    }
    b.add(str4);
    Object localObject5 = null;
    Object localObject8;
    Object localObject3;
    Object localObject6;
    for (;;)
    {
      try
      {
        ??? = new URL(paramString).openConnection();
        at localat = ax.t;
        i = ((Integer)o.n().a(localat)).intValue();
        ((URLConnection)???).setConnectTimeout(i);
        ((URLConnection)???).setReadTimeout(i);
        if ((??? instanceof HttpURLConnection))
        {
          i = ((HttpURLConnection)???).getResponseCode();
          if (i >= 400) {
            localObject4 = "badUrl";
          }
        }
      }
      catch (IOException localIOException1)
      {
        Object localObject7;
        Object localObject9;
        ju localju;
        Object localObject10;
        Object localObject11;
        localObject2 = null;
        str2 = "error";
        continue;
      }
      try
      {
        ??? = "HTTP request failed. Code: " + Integer.toString(i);
        try
        {
          throw new IOException("HTTP status code " + i + " at " + paramString);
        }
        catch (IOException localIOException8) {}
      }
      catch (IOException localIOException2)
      {
        localObject3 = null;
        continue;
        continue;
      }
      try
      {
        ((FileOutputStream)localObject5).close();
        if (e)
        {
          new StringBuilder("Preload aborted for URL \"").append(paramString).append("\"");
          b.a(4);
          if ((localFile.exists()) && (!localFile.delete()))
          {
            new StringBuilder("Could not delete partial cache file at ").append(localFile.getAbsolutePath());
            b.a(5);
          }
          a(paramString, localFile.getAbsolutePath(), (String)localObject4, (String)???);
          b.remove(str4);
          return false;
          k = ((URLConnection)???).getContentLength();
          if (k < 0)
          {
            new StringBuilder("Stream cache aborted, missing content-length header at ").append(paramString);
            b.a(5);
            a(paramString, localFile.getAbsolutePath(), "contentLengthMissing", null);
            b.remove(str4);
            return false;
          }
          localObject7 = c.format(k);
          localObject9 = ax.p;
          m = ((Integer)o.n().a((at)localObject9)).intValue();
          if (k > m)
          {
            new StringBuilder("Content length ").append((String)localObject7).append(" exceeds limit at ").append(paramString);
            b.a(5);
            ??? = "File too big for full file cache. Size: " + (String)localObject7;
            a(paramString, localFile.getAbsolutePath(), "sizeExceeded", (String)???);
            b.remove(str4);
            return false;
          }
          new StringBuilder("Caching ").append((String)localObject7).append(" bytes from ").append(paramString);
          b.a(3);
          localObject7 = Channels.newChannel(((URLConnection)???).getInputStream());
          ??? = new FileOutputStream(localFile);
        }
      }
      catch (IOException localIOException6)
      {
        try
        {
          localObject5 = ((FileOutputStream)???).getChannel();
          localObject9 = ByteBuffer.allocate(1048576);
          localju = o.i();
          i = 0;
          l1 = localju.a();
          localObject10 = ax.s;
          localObject10 = new hd(((Long)o.n().a((at)localObject10)).longValue());
          localObject11 = ax.r;
          l2 = ((Long)o.n().a((at)localObject11)).longValue();
          j = ((ReadableByteChannel)localObject7).read((ByteBuffer)localObject9);
          if (j >= 0)
          {
            j = i + j;
            if (j > m)
            {
              localObject5 = "sizeExceeded";
              localObject4 = localObject5;
            }
          }
          try
          {
            localObject7 = "File too big for full file cache. Size: " + Integer.toString(j);
            localObject4 = localObject7;
            try
            {
              throw new IOException("stream cache file size limit exceeded");
            }
            catch (IOException localIOException9)
            {
              localObject8 = ???;
              ??? = localObject4;
              localObject4 = localObject5;
              localObject5 = localObject8;
            }
          }
          catch (IOException localIOException7)
          {
            String str1;
            Object localObject2;
            String str2;
            localObject8 = null;
            localObject6 = localObject3;
            localObject3 = localObject8;
          }
          ((ByteBuffer)localObject9).flip();
          if (((FileChannel)localObject5).write((ByteBuffer)localObject9) > 0) {
            continue;
          }
          ((ByteBuffer)localObject9).clear();
          if (localju.a() - l1 > 1000L * l2)
          {
            localObject5 = "downloadTimeout";
            localObject4 = localObject5;
            localObject8 = "Timeout exceeded. Limit: " + Long.toString(l2) + " sec";
            localObject4 = localObject8;
            throw new IOException("stream cache time limit exceeded");
          }
          if (e)
          {
            try
            {
              throw new IOException("abort requested");
            }
            catch (IOException localIOException3)
            {
              str1 = "externalAbort";
              localObject5 = ???;
              ??? = null;
            }
            continue;
          }
          i = j;
          if (!((hd)localObject10).a()) {
            continue;
          }
          localObject11 = localFile.getAbsolutePath();
          a.a.post(new ct.1(this, paramString, (String)localObject11, j, k, false));
          i = j;
          continue;
          ((FileOutputStream)???).close();
          if (b.a(3))
          {
            localObject5 = c.format(i);
            new StringBuilder("Preloaded ").append((String)localObject5).append(" bytes from ").append(paramString);
            b.a(3);
          }
          localFile.setReadable(true, false);
          if (str1.isFile())
          {
            str1.setLastModified(System.currentTimeMillis());
            a(paramString, localFile.getAbsolutePath(), i);
            b.remove(str4);
            return true;
          }
          try
          {
            str1.createNewFile();
          }
          catch (IOException localIOException4) {}
          continue;
          new StringBuilder("Preload failed for URL \"").append(paramString).append("\"");
          b.a(5);
        }
        catch (IOException localIOException5)
        {
          localObject8 = null;
          String str3 = "error";
          localObject6 = localObject3;
          localObject3 = localObject8;
        }
        localIOException6 = localIOException6;
        continue;
      }
      catch (NullPointerException localNullPointerException)
      {
        continue;
      }
      label1457:
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */