package com.facebook.internal;

import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidParameterException;
import java.util.Date;
import java.util.PriorityQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public final class FileLruCache
{
  private static final String HEADER_CACHEKEY_KEY = "key";
  private static final String HEADER_CACHE_CONTENT_TAG_KEY = "tag";
  static final String TAG = FileLruCache.class.getSimpleName();
  private static final AtomicLong bufferIndex = new AtomicLong();
  private final File directory;
  private boolean isTrimInProgress;
  private boolean isTrimPending;
  private AtomicLong lastClearCacheTime = new AtomicLong(0L);
  private final Limits limits;
  private final Object lock;
  private final String tag;
  
  public FileLruCache(String paramString, Limits paramLimits)
  {
    tag = paramString;
    limits = paramLimits;
    directory = new File(FacebookSdk.getCacheDir(), paramString);
    lock = new Object();
    if ((directory.mkdirs()) || (directory.isDirectory())) {
      BufferFile.deleteAll(directory);
    }
  }
  
  private void postTrim()
  {
    synchronized (lock)
    {
      if (!isTrimPending)
      {
        isTrimPending = true;
        FacebookSdk.getExecutor().execute(new Runnable()
        {
          public void run()
          {
            FileLruCache.this.trim();
          }
        });
      }
      return;
    }
  }
  
  private void renameToTargetAndTrim(String paramString, File paramFile)
  {
    if (!paramFile.renameTo(new File(directory, Utility.md5hash(paramString)))) {
      paramFile.delete();
    }
    postTrim();
  }
  
  private void trim()
  {
    synchronized (lock)
    {
      isTrimPending = false;
      isTrimInProgress = true;
    }
    for (;;)
    {
      try
      {
        Logger.log(LoggingBehavior.CACHE, TAG, "trim started");
        ??? = new PriorityQueue();
        l1 = 0L;
        long l3 = 0L;
        File[] arrayOfFile = directory.listFiles(BufferFile.excludeBufferFiles());
        l2 = l3;
        l4 = l1;
        if (arrayOfFile == null) {
          continue;
        }
        int j = arrayOfFile.length;
        int i = 0;
        l2 = l3;
        l4 = l1;
        if (i >= j) {
          continue;
        }
        File localFile2 = arrayOfFile[i];
        ModifiedFile localModifiedFile = new ModifiedFile(localFile2);
        ((PriorityQueue)???).add(localModifiedFile);
        Logger.log(LoggingBehavior.CACHE, TAG, "  trim considering time=" + Long.valueOf(localModifiedFile.getModified()) + " name=" + localModifiedFile.getFile().getName());
        l2 = localFile2.length();
        i += 1;
        l3 = 1L + l3;
        l1 = l2 + l1;
        continue;
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
      finally
      {
        long l1;
        long l2;
        synchronized (lock)
        {
          long l4;
          File localFile1;
          isTrimInProgress = false;
          lock.notifyAll();
          throw ((Throwable)localObject4);
        }
      }
      if ((l4 <= limits.getByteCount()) && (l1 <= limits.getFileCount())) {
        continue;
      }
      localFile1 = ((ModifiedFile)((PriorityQueue)???).remove()).getFile();
      Logger.log(LoggingBehavior.CACHE, TAG, "  trim removing " + localFile1.getName());
      l4 -= localFile1.length();
      localFile1.delete();
      l1 -= 1L;
    }
    synchronized (lock)
    {
      isTrimInProgress = false;
      lock.notifyAll();
      return;
    }
  }
  
  public final void clearCache()
  {
    final File[] arrayOfFile = directory.listFiles(BufferFile.excludeBufferFiles());
    lastClearCacheTime.set(System.currentTimeMillis());
    if (arrayOfFile != null) {
      FacebookSdk.getExecutor().execute(new Runnable()
      {
        public void run()
        {
          File[] arrayOfFile = arrayOfFile;
          int j = arrayOfFile.length;
          int i = 0;
          while (i < j)
          {
            arrayOfFile[i].delete();
            i += 1;
          }
        }
      });
    }
  }
  
  public final InputStream get(String paramString)
  {
    return get(paramString, null);
  }
  
  public final InputStream get(String paramString1, String paramString2)
  {
    File localFile = new File(directory, Utility.md5hash(paramString1));
    try
    {
      Object localObject = new FileInputStream(localFile);
      localObject = new BufferedInputStream((InputStream)localObject, 8192);
      try
      {
        JSONObject localJSONObject = StreamHeader.readHeader((InputStream)localObject);
        if (localJSONObject == null) {
          return null;
        }
        String str = localJSONObject.optString("key");
        boolean bool;
        if (str != null)
        {
          bool = str.equals(paramString1);
          if (bool) {}
        }
        else
        {
          return null;
        }
        paramString1 = localJSONObject.optString("tag", null);
        if ((paramString2 != null) || (paramString1 == null))
        {
          if (paramString2 != null)
          {
            bool = paramString2.equals(paramString1);
            if (bool) {}
          }
        }
        else {
          return null;
        }
        long l = new Date().getTime();
        Logger.log(LoggingBehavior.CACHE, TAG, "Setting lastModified to " + Long.valueOf(l) + " for " + localFile.getName());
        localFile.setLastModified(l);
        return (InputStream)localObject;
      }
      finally
      {
        ((BufferedInputStream)localObject).close();
      }
      return null;
    }
    catch (IOException paramString1) {}
  }
  
  public final String getLocation()
  {
    return directory.getPath();
  }
  
  public final InputStream interceptAndPut(String paramString, InputStream paramInputStream)
  {
    return new CopyingInputStream(paramInputStream, openPutStream(paramString));
  }
  
  public final OutputStream openPutStream(String paramString)
  {
    return openPutStream(paramString, null);
  }
  
  /* Error */
  public final OutputStream openPutStream(final String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 97	com/facebook/internal/FileLruCache:directory	Ljava/io/File;
    //   4: invokestatic 327	com/facebook/internal/FileLruCache$BufferFile:newFile	(Ljava/io/File;)Ljava/io/File;
    //   7: astore_3
    //   8: aload_3
    //   9: invokevirtual 153	java/io/File:delete	()Z
    //   12: pop
    //   13: aload_3
    //   14: invokevirtual 330	java/io/File:createNewFile	()Z
    //   17: ifne +31 -> 48
    //   20: new 261	java/io/IOException
    //   23: dup
    //   24: new 190	java/lang/StringBuilder
    //   27: dup
    //   28: ldc_w 332
    //   31: invokespecial 195	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   34: aload_3
    //   35: invokevirtual 335	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   38: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 223	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokespecial 336	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   47: athrow
    //   48: new 338	java/io/FileOutputStream
    //   51: dup
    //   52: aload_3
    //   53: invokespecial 339	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   56: astore 4
    //   58: new 341	java/io/BufferedOutputStream
    //   61: dup
    //   62: new 19	com/facebook/internal/FileLruCache$CloseCallbackOutputStream
    //   65: dup
    //   66: aload 4
    //   68: new 6	com/facebook/internal/FileLruCache$1
    //   71: dup
    //   72: aload_0
    //   73: invokestatic 248	java/lang/System:currentTimeMillis	()J
    //   76: aload_3
    //   77: aload_1
    //   78: invokespecial 344	com/facebook/internal/FileLruCache$1:<init>	(Lcom/facebook/internal/FileLruCache;JLjava/io/File;Ljava/lang/String;)V
    //   81: invokespecial 347	com/facebook/internal/FileLruCache$CloseCallbackOutputStream:<init>	(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V
    //   84: sipush 8192
    //   87: invokespecial 350	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   90: astore_3
    //   91: new 278	org/json/JSONObject
    //   94: dup
    //   95: invokespecial 351	org/json/JSONObject:<init>	()V
    //   98: astore 4
    //   100: aload 4
    //   102: ldc 39
    //   104: aload_1
    //   105: invokevirtual 355	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   108: pop
    //   109: aload_2
    //   110: invokestatic 359	com/facebook/internal/Utility:isNullOrEmpty	(Ljava/lang/String;)Z
    //   113: ifne +12 -> 125
    //   116: aload 4
    //   118: ldc 42
    //   120: aload_2
    //   121: invokevirtual 355	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   124: pop
    //   125: aload_3
    //   126: aload 4
    //   128: invokestatic 363	com/facebook/internal/FileLruCache$StreamHeader:writeHeader	(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    //   131: aload_3
    //   132: areturn
    //   133: astore_1
    //   134: getstatic 163	com/facebook/LoggingBehavior:CACHE	Lcom/facebook/LoggingBehavior;
    //   137: iconst_5
    //   138: getstatic 65	com/facebook/internal/FileLruCache:TAG	Ljava/lang/String;
    //   141: new 190	java/lang/StringBuilder
    //   144: dup
    //   145: ldc_w 365
    //   148: invokespecial 195	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   151: aload_1
    //   152: invokevirtual 209	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   155: invokevirtual 223	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   158: invokestatic 368	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
    //   161: new 261	java/io/IOException
    //   164: dup
    //   165: aload_1
    //   166: invokevirtual 371	java/io/FileNotFoundException:getMessage	()Ljava/lang/String;
    //   169: invokespecial 336	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   172: athrow
    //   173: astore_1
    //   174: getstatic 163	com/facebook/LoggingBehavior:CACHE	Lcom/facebook/LoggingBehavior;
    //   177: iconst_5
    //   178: getstatic 65	com/facebook/internal/FileLruCache:TAG	Ljava/lang/String;
    //   181: new 190	java/lang/StringBuilder
    //   184: dup
    //   185: ldc_w 373
    //   188: invokespecial 195	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   191: aload_1
    //   192: invokevirtual 209	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   195: invokevirtual 223	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   198: invokestatic 368	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
    //   201: new 261	java/io/IOException
    //   204: dup
    //   205: aload_1
    //   206: invokevirtual 374	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   209: invokespecial 336	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   212: athrow
    //   213: astore_1
    //   214: aload_3
    //   215: invokevirtual 375	java/io/BufferedOutputStream:close	()V
    //   218: aload_1
    //   219: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	220	0	this	FileLruCache
    //   0	220	1	paramString1	String
    //   0	220	2	paramString2	String
    //   7	208	3	localObject1	Object
    //   56	71	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   48	58	133	java/io/FileNotFoundException
    //   91	125	173	org/json/JSONException
    //   125	131	173	org/json/JSONException
    //   91	125	213	finally
    //   125	131	213	finally
    //   174	213	213	finally
  }
  
  final long sizeInBytesForTest()
  {
    long l2;
    synchronized (lock)
    {
      for (;;)
      {
        if (!isTrimPending)
        {
          boolean bool = isTrimInProgress;
          if (!bool) {
            break;
          }
        }
        try
        {
          lock.wait();
        }
        catch (InterruptedException localInterruptedException) {}
      }
      ??? = directory.listFiles();
      long l1 = 0L;
      l2 = l1;
      if (??? != null)
      {
        int j = ???.length;
        int i = 0;
        l2 = l1;
        if (i < j)
        {
          l2 = ???[i].length();
          i += 1;
          l1 = l2 + l1;
        }
      }
    }
    return l2;
  }
  
  public final String toString()
  {
    return "{FileLruCache: tag:" + tag + " file:" + directory.getName() + "}";
  }
  
  private static class BufferFile
  {
    private static final String FILE_NAME_PREFIX = "buffer";
    private static final FilenameFilter filterExcludeBufferFiles = new FilenameFilter()
    {
      public final boolean accept(File paramAnonymousFile, String paramAnonymousString)
      {
        return !paramAnonymousString.startsWith("buffer");
      }
    };
    private static final FilenameFilter filterExcludeNonBufferFiles = new FilenameFilter()
    {
      public final boolean accept(File paramAnonymousFile, String paramAnonymousString)
      {
        return paramAnonymousString.startsWith("buffer");
      }
    };
    
    static void deleteAll(File paramFile)
    {
      paramFile = paramFile.listFiles(excludeNonBufferFiles());
      if (paramFile != null)
      {
        int j = paramFile.length;
        int i = 0;
        while (i < j)
        {
          paramFile[i].delete();
          i += 1;
        }
      }
    }
    
    static FilenameFilter excludeBufferFiles()
    {
      return filterExcludeBufferFiles;
    }
    
    static FilenameFilter excludeNonBufferFiles()
    {
      return filterExcludeNonBufferFiles;
    }
    
    static File newFile(File paramFile)
    {
      return new File(paramFile, "buffer" + Long.valueOf(FileLruCache.bufferIndex.incrementAndGet()).toString());
    }
  }
  
  private static class CloseCallbackOutputStream
    extends OutputStream
  {
    final FileLruCache.StreamCloseCallback callback;
    final OutputStream innerStream;
    
    CloseCallbackOutputStream(OutputStream paramOutputStream, FileLruCache.StreamCloseCallback paramStreamCloseCallback)
    {
      innerStream = paramOutputStream;
      callback = paramStreamCloseCallback;
    }
    
    public void close()
    {
      try
      {
        innerStream.close();
        return;
      }
      finally
      {
        callback.onClose();
      }
    }
    
    public void flush()
    {
      innerStream.flush();
    }
    
    public void write(int paramInt)
    {
      innerStream.write(paramInt);
    }
    
    public void write(byte[] paramArrayOfByte)
    {
      innerStream.write(paramArrayOfByte);
    }
    
    public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      innerStream.write(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
  
  private static final class CopyingInputStream
    extends InputStream
  {
    final InputStream input;
    final OutputStream output;
    
    CopyingInputStream(InputStream paramInputStream, OutputStream paramOutputStream)
    {
      input = paramInputStream;
      output = paramOutputStream;
    }
    
    public final int available()
    {
      return input.available();
    }
    
    public final void close()
    {
      try
      {
        input.close();
        return;
      }
      finally
      {
        output.close();
      }
    }
    
    public final void mark(int paramInt)
    {
      throw new UnsupportedOperationException();
    }
    
    public final boolean markSupported()
    {
      return false;
    }
    
    public final int read()
    {
      int i = input.read();
      if (i >= 0) {
        output.write(i);
      }
      return i;
    }
    
    public final int read(byte[] paramArrayOfByte)
    {
      int i = input.read(paramArrayOfByte);
      if (i > 0) {
        output.write(paramArrayOfByte, 0, i);
      }
      return i;
    }
    
    public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      paramInt2 = input.read(paramArrayOfByte, paramInt1, paramInt2);
      if (paramInt2 > 0) {
        output.write(paramArrayOfByte, paramInt1, paramInt2);
      }
      return paramInt2;
    }
    
    public final void reset()
    {
      try
      {
        throw new UnsupportedOperationException();
      }
      finally {}
    }
    
    public final long skip(long paramLong)
    {
      byte[] arrayOfByte = new byte['Ѐ'];
      int i;
      for (long l = 0L;; l += i) {
        if (l < paramLong)
        {
          i = read(arrayOfByte, 0, (int)Math.min(paramLong - l, 1024L));
          if (i >= 0) {}
        }
        else
        {
          return l;
        }
      }
    }
  }
  
  public static final class Limits
  {
    private int byteCount = 1048576;
    private int fileCount = 1024;
    
    final int getByteCount()
    {
      return byteCount;
    }
    
    final int getFileCount()
    {
      return fileCount;
    }
    
    final void setByteCount(int paramInt)
    {
      if (paramInt < 0) {
        throw new InvalidParameterException("Cache byte-count limit must be >= 0");
      }
      byteCount = paramInt;
    }
    
    final void setFileCount(int paramInt)
    {
      if (paramInt < 0) {
        throw new InvalidParameterException("Cache file count limit must be >= 0");
      }
      fileCount = paramInt;
    }
  }
  
  private static final class ModifiedFile
    implements Comparable<ModifiedFile>
  {
    private static final int HASH_MULTIPLIER = 37;
    private static final int HASH_SEED = 29;
    private final File file;
    private final long modified;
    
    ModifiedFile(File paramFile)
    {
      file = paramFile;
      modified = paramFile.lastModified();
    }
    
    public final int compareTo(ModifiedFile paramModifiedFile)
    {
      if (getModified() < paramModifiedFile.getModified()) {
        return -1;
      }
      if (getModified() > paramModifiedFile.getModified()) {
        return 1;
      }
      return getFile().compareTo(paramModifiedFile.getFile());
    }
    
    public final boolean equals(Object paramObject)
    {
      return ((paramObject instanceof ModifiedFile)) && (compareTo((ModifiedFile)paramObject) == 0);
    }
    
    final File getFile()
    {
      return file;
    }
    
    final long getModified()
    {
      return modified;
    }
    
    public final int hashCode()
    {
      return (file.hashCode() + 1073) * 37 + (int)(modified % 2147483647L);
    }
  }
  
  private static abstract interface StreamCloseCallback
  {
    public abstract void onClose();
  }
  
  private static final class StreamHeader
  {
    private static final int HEADER_VERSION = 0;
    
    static JSONObject readHeader(InputStream paramInputStream)
    {
      int k = 0;
      if (paramInputStream.read() != 0) {
        return null;
      }
      int j = 0;
      int i = 0;
      while (j < 3)
      {
        int m = paramInputStream.read();
        if (m == -1)
        {
          Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: stream.read returned -1 while reading header size");
          return null;
        }
        i = (i << 8) + (m & 0xFF);
        j += 1;
      }
      byte[] arrayOfByte = new byte[i];
      j = k;
      while (j < i)
      {
        k = paramInputStream.read(arrayOfByte, j, i - j);
        if (k <= 0)
        {
          Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: stream.read stopped at " + Integer.valueOf(j) + " when expected " + i);
          return null;
        }
        j += k;
      }
      paramInputStream = new JSONTokener(new String(arrayOfByte));
      try
      {
        paramInputStream = paramInputStream.nextValue();
        if (!(paramInputStream instanceof JSONObject))
        {
          Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: expected JSONObject, got " + paramInputStream.getClass().getCanonicalName());
          return null;
        }
        paramInputStream = (JSONObject)paramInputStream;
        return paramInputStream;
      }
      catch (JSONException paramInputStream)
      {
        throw new IOException(paramInputStream.getMessage());
      }
    }
    
    static void writeHeader(OutputStream paramOutputStream, JSONObject paramJSONObject)
    {
      paramJSONObject = paramJSONObject.toString().getBytes();
      paramOutputStream.write(0);
      paramOutputStream.write(paramJSONObject.length >> 16 & 0xFF);
      paramOutputStream.write(paramJSONObject.length >> 8 & 0xFF);
      paramOutputStream.write(paramJSONObject.length >> 0 & 0xFF);
      paramOutputStream.write(paramJSONObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.FileLruCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */