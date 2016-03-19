package com.fasterxml.jackson.core.sym;

import com.fasterxml.jackson.core.JsonFactory.Feature;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.BitSet;
import java.util.concurrent.atomic.AtomicReference;

public final class BytesToNameCanonicalizer
{
  private static final int DEFAULT_T_SIZE = 64;
  static final int INITIAL_COLLISION_LEN = 32;
  static final int LAST_VALID_BUCKET = 254;
  private static final int MAX_COLL_CHAIN_LENGTH = 200;
  private static final int MAX_ENTRIES_FOR_REUSE = 6000;
  private static final int MAX_T_SIZE = 65536;
  static final int MIN_HASH_SIZE = 16;
  private static final int MULT = 33;
  private static final int MULT2 = 65599;
  private static final int MULT3 = 31;
  protected int _collCount;
  protected int _collEnd;
  protected Bucket[] _collList;
  private boolean _collListShared;
  protected int _count;
  protected final boolean _failOnDoS;
  protected int[] _hash;
  protected int _hashMask;
  private boolean _hashShared;
  protected boolean _intern;
  protected int _longestCollisionList;
  protected Name[] _mainNames;
  private boolean _namesShared;
  private transient boolean _needRehash;
  protected BitSet _overflows;
  protected final BytesToNameCanonicalizer _parent;
  private final int _seed;
  protected final AtomicReference<TableInfo> _tableInfo;
  
  private BytesToNameCanonicalizer(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    _parent = null;
    _seed = paramInt2;
    _intern = paramBoolean1;
    _failOnDoS = paramBoolean2;
    if (paramInt1 < 16) {
      paramInt2 = 16;
    }
    for (;;)
    {
      _tableInfo = new AtomicReference(initTableInfo(paramInt2));
      return;
      paramInt2 = paramInt1;
      if ((paramInt1 - 1 & paramInt1) != 0)
      {
        paramInt2 = i;
        while (paramInt2 < paramInt1) {
          paramInt2 += paramInt2;
        }
      }
    }
  }
  
  private BytesToNameCanonicalizer(BytesToNameCanonicalizer paramBytesToNameCanonicalizer, boolean paramBoolean1, int paramInt, boolean paramBoolean2, TableInfo paramTableInfo)
  {
    _parent = paramBytesToNameCanonicalizer;
    _seed = paramInt;
    _intern = paramBoolean1;
    _failOnDoS = paramBoolean2;
    _tableInfo = null;
    _count = count;
    _hashMask = mainHashMask;
    _hash = mainHash;
    _mainNames = mainNames;
    _collList = collList;
    _collCount = collCount;
    _collEnd = collEnd;
    _longestCollisionList = longestCollisionList;
    _needRehash = false;
    _hashShared = true;
    _namesShared = true;
    _collListShared = true;
  }
  
  private void _addSymbol(int paramInt, Name paramName)
  {
    if (_hashShared) {
      unshareMain();
    }
    if (_needRehash) {
      rehash();
    }
    _count += 1;
    int j = paramInt & _hashMask;
    int i;
    if (_mainNames[j] == null)
    {
      _hash[j] = (paramInt << 8);
      if (_namesShared) {
        unshareNames();
      }
      _mainNames[j] = paramName;
      paramInt = _hash.length;
      if (_count > paramInt >> 1)
      {
        i = paramInt >> 2;
        if (_count <= paramInt - i) {
          break label290;
        }
        _needRehash = true;
      }
    }
    label199:
    label265:
    label290:
    while (_collCount < i)
    {
      return;
      if (_collListShared) {
        unshareCollision();
      }
      _collCount += 1;
      int k = _hash[j];
      paramInt = k & 0xFF;
      if (paramInt == 0) {
        if (_collEnd <= 254)
        {
          i = _collEnd;
          _collEnd += 1;
          paramInt = i;
          if (i >= _collList.length)
          {
            expandCollision();
            paramInt = i;
          }
          _hash[j] = (k & 0xFF00 | paramInt + 1);
        }
      }
      for (;;)
      {
        paramName = new Bucket(paramName, _collList[paramInt]);
        if (length <= 200) {
          break label265;
        }
        _handleSpillOverflow(paramInt, paramName);
        break;
        paramInt = findBestBucket();
        break label199;
        paramInt -= 1;
      }
      _collList[paramInt] = paramName;
      _longestCollisionList = Math.max(length, _longestCollisionList);
      break;
    }
    _needRehash = true;
  }
  
  private void _handleSpillOverflow(int paramInt, Bucket paramBucket)
  {
    if (_overflows == null)
    {
      _overflows = new BitSet();
      _overflows.set(paramInt);
    }
    for (;;)
    {
      _collList[paramInt] = null;
      _count -= length;
      _longestCollisionList = -1;
      return;
      if (!_overflows.get(paramInt)) {
        break;
      }
      if (_failOnDoS) {
        reportTooManyCollisions(200);
      }
      _intern = false;
    }
  }
  
  protected static int[] calcQuads(byte[] paramArrayOfByte)
  {
    int n = paramArrayOfByte.length;
    int[] arrayOfInt = new int[(n + 3) / 4];
    int j;
    for (int i = 0; i < n; i = j + 1)
    {
      int k = paramArrayOfByte[i] & 0xFF;
      int m = i + 1;
      i = k;
      j = m;
      if (m < n)
      {
        k = k << 8 | paramArrayOfByte[m] & 0xFF;
        m += 1;
        i = k;
        j = m;
        if (m < n)
        {
          k = k << 8 | paramArrayOfByte[m] & 0xFF;
          m += 1;
          i = k;
          j = m;
          if (m < n)
          {
            i = k << 8 | paramArrayOfByte[m] & 0xFF;
            j = m;
          }
        }
      }
      arrayOfInt[(j >> 2)] = i;
    }
    return arrayOfInt;
  }
  
  private static Name constructName(int paramInt1, String paramString, int paramInt2, int paramInt3)
  {
    if (paramInt3 == 0) {
      return new Name1(paramString, paramInt1, paramInt2);
    }
    return new Name2(paramString, paramInt1, paramInt2, paramInt3);
  }
  
  private static Name constructName(int paramInt1, String paramString, int[] paramArrayOfInt, int paramInt2)
  {
    if (paramInt2 < 4) {}
    switch (paramInt2)
    {
    default: 
      return NameN.construct(paramString, paramInt1, paramArrayOfInt, paramInt2);
    case 1: 
      return new Name1(paramString, paramInt1, paramArrayOfInt[0]);
    case 2: 
      return new Name2(paramString, paramInt1, paramArrayOfInt[0], paramArrayOfInt[1]);
    }
    return new Name3(paramString, paramInt1, paramArrayOfInt[0], paramArrayOfInt[1], paramArrayOfInt[2]);
  }
  
  public static BytesToNameCanonicalizer createRoot()
  {
    long l = System.currentTimeMillis();
    int i = (int)l;
    return createRoot((int)(l >>> 32) + i | 0x1);
  }
  
  protected static BytesToNameCanonicalizer createRoot(int paramInt)
  {
    return new BytesToNameCanonicalizer(64, true, paramInt, true);
  }
  
  private void expandCollision()
  {
    Bucket[] arrayOfBucket = _collList;
    _collList = ((Bucket[])Arrays.copyOf(arrayOfBucket, arrayOfBucket.length * 2));
  }
  
  private int findBestBucket()
  {
    Bucket[] arrayOfBucket = _collList;
    int j = Integer.MAX_VALUE;
    int k = -1;
    int i = 0;
    int n = _collEnd;
    if (i < n)
    {
      Bucket localBucket = arrayOfBucket[i];
      if (localBucket == null) {}
      int m;
      do
      {
        return i;
        m = length;
        if (m >= j) {
          break;
        }
      } while (m == 1);
      k = i;
      j = m;
    }
    for (;;)
    {
      i += 1;
      break;
      return k;
    }
  }
  
  public static Name getEmptyName()
  {
    return Name1.getEmptyName();
  }
  
  private TableInfo initTableInfo(int paramInt)
  {
    return new TableInfo(0, paramInt - 1, new int[paramInt], new Name[paramInt], null, 0, 0, 0);
  }
  
  private void mergeChild(TableInfo paramTableInfo)
  {
    int i = count;
    TableInfo localTableInfo = (TableInfo)_tableInfo.get();
    if (i == count) {
      return;
    }
    if (i > 6000) {
      paramTableInfo = initTableInfo(64);
    }
    _tableInfo.compareAndSet(localTableInfo, paramTableInfo);
  }
  
  private void nukeSymbols()
  {
    _count = 0;
    _longestCollisionList = 0;
    Arrays.fill(_hash, 0);
    Arrays.fill(_mainNames, null);
    Arrays.fill(_collList, null);
    _collCount = 0;
    _collEnd = 0;
  }
  
  private void rehash()
  {
    int m = 0;
    _needRehash = false;
    _namesShared = false;
    int n = _hash.length;
    int i = n + n;
    if (i > 65536) {
      nukeSymbols();
    }
    int j;
    label352:
    do
    {
      return;
      _hash = new int[i];
      _hashMask = (i - 1);
      Object localObject1 = _mainNames;
      _mainNames = new Name[i];
      j = 0;
      for (i = 0; j < n; i = k)
      {
        arrayOfBucket = localObject1[j];
        k = i;
        if (arrayOfBucket != null)
        {
          k = i + 1;
          i = arrayOfBucket.hashCode();
          i1 = _hashMask & i;
          _mainNames[i1] = arrayOfBucket;
          _hash[i1] = (i << 8);
        }
        j += 1;
      }
      int i1 = _collEnd;
      if (i1 == 0)
      {
        _longestCollisionList = 0;
        return;
      }
      _collCount = 0;
      _collEnd = 0;
      _collListShared = false;
      Bucket[] arrayOfBucket = _collList;
      _collList = new Bucket[arrayOfBucket.length];
      int k = 0;
      j = i;
      while (k < i1)
      {
        localObject1 = arrayOfBucket[k];
        i = m;
        while (localObject1 != null)
        {
          m = j + 1;
          Object localObject2 = name;
          j = ((Name)localObject2).hashCode();
          int i2 = _hashMask & j;
          int i3 = _hash[i2];
          if (_mainNames[i2] == null)
          {
            _hash[i2] = (j << 8);
            _mainNames[i2] = localObject2;
            localObject1 = next;
            j = m;
          }
          else
          {
            _collCount += 1;
            j = i3 & 0xFF;
            if (j == 0) {
              if (_collEnd <= 254)
              {
                n = _collEnd;
                _collEnd += 1;
                j = n;
                if (n >= _collList.length)
                {
                  expandCollision();
                  j = n;
                }
                _hash[i2] = (i3 & 0xFF00 | j + 1);
              }
            }
            for (;;)
            {
              localObject2 = new Bucket((Name)localObject2, _collList[j]);
              _collList[j] = localObject2;
              i = Math.max(i, length);
              break;
              j = findBestBucket();
              break label352;
              j -= 1;
            }
          }
        }
        k += 1;
        m = i;
      }
      _longestCollisionList = m;
    } while (j == _count);
    throw new RuntimeException("Internal error: count after rehash " + j + "; should be " + _count);
  }
  
  private void unshareCollision()
  {
    Bucket[] arrayOfBucket = _collList;
    if (arrayOfBucket == null) {}
    for (_collList = new Bucket[32];; _collList = ((Bucket[])Arrays.copyOf(arrayOfBucket, arrayOfBucket.length)))
    {
      _collListShared = false;
      return;
    }
  }
  
  private void unshareMain()
  {
    int[] arrayOfInt = _hash;
    _hash = Arrays.copyOf(arrayOfInt, arrayOfInt.length);
    _hashShared = false;
  }
  
  private void unshareNames()
  {
    Name[] arrayOfName = _mainNames;
    _mainNames = ((Name[])Arrays.copyOf(arrayOfName, arrayOfName.length));
    _namesShared = false;
  }
  
  public final Name addName(String paramString, int paramInt1, int paramInt2)
  {
    String str = paramString;
    if (_intern) {
      str = InternCache.instance.intern(paramString);
    }
    if (paramInt2 == 0) {}
    for (int i = calcHash(paramInt1);; i = calcHash(paramInt1, paramInt2))
    {
      paramString = constructName(i, str, paramInt1, paramInt2);
      _addSymbol(i, paramString);
      return paramString;
    }
  }
  
  public final Name addName(String paramString, int[] paramArrayOfInt, int paramInt)
  {
    String str = paramString;
    if (_intern) {
      str = InternCache.instance.intern(paramString);
    }
    int i;
    if (paramInt < 3) {
      if (paramInt == 1) {
        i = calcHash(paramArrayOfInt[0]);
      }
    }
    for (;;)
    {
      paramString = constructName(i, str, paramArrayOfInt, paramInt);
      _addSymbol(i, paramString);
      return paramString;
      i = calcHash(paramArrayOfInt[0], paramArrayOfInt[1]);
      continue;
      i = calcHash(paramArrayOfInt, paramInt);
    }
  }
  
  public final int bucketCount()
  {
    return _hash.length;
  }
  
  public final int calcHash(int paramInt)
  {
    paramInt = _seed ^ paramInt;
    paramInt += (paramInt >>> 15);
    return paramInt ^ paramInt >>> 9;
  }
  
  public final int calcHash(int paramInt1, int paramInt2)
  {
    paramInt1 = (paramInt1 >>> 15 ^ paramInt1) + paramInt2 * 33 ^ _seed;
    paramInt1 += (paramInt1 >>> 7);
    return paramInt1 ^ paramInt1 >>> 4;
  }
  
  public final int calcHash(int[] paramArrayOfInt, int paramInt)
  {
    int i = 3;
    if (paramInt < 3) {
      throw new IllegalArgumentException();
    }
    int j = paramArrayOfInt[0] ^ _seed;
    j = ((j + (j >>> 9)) * 33 + paramArrayOfInt[1]) * 65599;
    j = j + (j >>> 15) ^ paramArrayOfInt[2];
    j += (j >>> 17);
    while (i < paramInt)
    {
      j = j * 31 ^ paramArrayOfInt[i];
      j += (j >>> 3);
      j ^= j << 7;
      i += 1;
    }
    paramInt = (j >>> 15) + j;
    return paramInt ^ paramInt << 9;
  }
  
  public final int collisionCount()
  {
    return _collCount;
  }
  
  public final Name findName(int paramInt)
  {
    int i = calcHash(paramInt);
    int j = _hashMask & i;
    int k = _hash[j];
    Object localObject;
    if ((k >> 8 ^ i) << 8 == 0)
    {
      localObject = _mainNames[j];
      if (localObject != null) {}
    }
    do
    {
      do
      {
        do
        {
          return null;
          if (!((Name)localObject).equals(paramInt)) {
            break;
          }
          return (Name)localObject;
        } while (k == 0);
        j = k & 0xFF;
      } while (j <= 0);
      localObject = _collList[(j - 1)];
    } while (localObject == null);
    return ((Bucket)localObject).find(i, paramInt, 0);
  }
  
  public final Name findName(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {}
    int k;
    Object localObject;
    for (int i = calcHash(paramInt1);; i = calcHash(paramInt1, paramInt2))
    {
      j = _hashMask & i;
      k = _hash[j];
      if ((k >> 8 ^ i) << 8 != 0) {
        break label79;
      }
      localObject = _mainNames[j];
      if (localObject != null) {
        break;
      }
      return null;
    }
    if (((Name)localObject).equals(paramInt1, paramInt2))
    {
      return (Name)localObject;
      label79:
      if (k == 0) {
        return null;
      }
    }
    int j = k & 0xFF;
    if (j > 0)
    {
      localObject = _collList[(j - 1)];
      if (localObject != null) {
        return ((Bucket)localObject).find(i, paramInt1, paramInt2);
      }
    }
    return null;
  }
  
  public final Name findName(int[] paramArrayOfInt, int paramInt)
  {
    int i = 0;
    int j;
    Object localObject;
    if (paramInt < 3)
    {
      j = paramArrayOfInt[0];
      if (paramInt < 2)
      {
        paramInt = i;
        localObject = findName(j, paramInt);
      }
    }
    int k;
    do
    {
      do
      {
        return (Name)localObject;
        paramInt = paramArrayOfInt[1];
        break;
        i = calcHash(paramArrayOfInt, paramInt);
        j = _hashMask & i;
        k = _hash[j];
        if ((k >> 8 ^ i) << 8 != 0) {
          break label145;
        }
        localName = _mainNames[j];
        localObject = localName;
      } while (localName == null);
      localObject = localName;
    } while (localName.equals(paramArrayOfInt, paramInt));
    label145:
    while (k != 0)
    {
      Name localName;
      j = k & 0xFF;
      if (j <= 0) {
        break;
      }
      localObject = _collList[(j - 1)];
      if (localObject == null) {
        break;
      }
      return ((Bucket)localObject).find(i, paramArrayOfInt, paramInt);
    }
    return null;
    return null;
  }
  
  public final int hashSeed()
  {
    return _seed;
  }
  
  public final BytesToNameCanonicalizer makeChild(int paramInt)
  {
    return new BytesToNameCanonicalizer(this, JsonFactory.Feature.INTERN_FIELD_NAMES.enabledIn(paramInt), _seed, JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(paramInt), (TableInfo)_tableInfo.get());
  }
  
  @Deprecated
  public final BytesToNameCanonicalizer makeChild(boolean paramBoolean1, boolean paramBoolean2)
  {
    return new BytesToNameCanonicalizer(this, paramBoolean2, _seed, true, (TableInfo)_tableInfo.get());
  }
  
  public final int maxCollisionLength()
  {
    return _longestCollisionList;
  }
  
  public final boolean maybeDirty()
  {
    return !_hashShared;
  }
  
  public final void release()
  {
    if ((_parent != null) && (maybeDirty()))
    {
      _parent.mergeChild(new TableInfo(this));
      _hashShared = true;
      _namesShared = true;
      _collListShared = true;
    }
  }
  
  protected final void reportTooManyCollisions(int paramInt)
  {
    throw new IllegalStateException("Longest collision chain in symbol table (of size " + _count + ") now exceeds maximum, " + paramInt + " -- suspect a DoS attack based on hash collisions");
  }
  
  public final int size()
  {
    if (_tableInfo != null) {
      return _tableInfo.get()).count;
    }
    return _count;
  }
  
  private static final class Bucket
  {
    public final int hash;
    public final int length;
    public final Name name;
    public final Bucket next;
    
    Bucket(Name paramName, Bucket paramBucket)
    {
      name = paramName;
      next = paramBucket;
      if (paramBucket == null) {}
      for (int i = 1;; i = length + 1)
      {
        length = i;
        hash = paramName.hashCode();
        return;
      }
    }
    
    public final Name find(int paramInt1, int paramInt2, int paramInt3)
    {
      Object localObject;
      if ((hash == paramInt1) && (name.equals(paramInt2, paramInt3)))
      {
        localObject = name;
        return (Name)localObject;
      }
      for (Bucket localBucket = next;; localBucket = next)
      {
        if (localBucket == null) {
          break label80;
        }
        if (hash == paramInt1)
        {
          Name localName = name;
          localObject = localName;
          if (localName.equals(paramInt2, paramInt3)) {
            break;
          }
        }
      }
      label80:
      return null;
    }
    
    public final Name find(int paramInt1, int[] paramArrayOfInt, int paramInt2)
    {
      Object localObject;
      if ((hash == paramInt1) && (name.equals(paramArrayOfInt, paramInt2)))
      {
        localObject = name;
        return (Name)localObject;
      }
      for (Bucket localBucket = next;; localBucket = next)
      {
        if (localBucket == null) {
          break label80;
        }
        if (hash == paramInt1)
        {
          Name localName = name;
          localObject = localName;
          if (localName.equals(paramArrayOfInt, paramInt2)) {
            break;
          }
        }
      }
      label80:
      return null;
    }
  }
  
  private static final class TableInfo
  {
    public final int collCount;
    public final int collEnd;
    public final BytesToNameCanonicalizer.Bucket[] collList;
    public final int count;
    public final int longestCollisionList;
    public final int[] mainHash;
    public final int mainHashMask;
    public final Name[] mainNames;
    
    public TableInfo(int paramInt1, int paramInt2, int[] paramArrayOfInt, Name[] paramArrayOfName, BytesToNameCanonicalizer.Bucket[] paramArrayOfBucket, int paramInt3, int paramInt4, int paramInt5)
    {
      count = paramInt1;
      mainHashMask = paramInt2;
      mainHash = paramArrayOfInt;
      mainNames = paramArrayOfName;
      collList = paramArrayOfBucket;
      collCount = paramInt3;
      collEnd = paramInt4;
      longestCollisionList = paramInt5;
    }
    
    public TableInfo(BytesToNameCanonicalizer paramBytesToNameCanonicalizer)
    {
      count = _count;
      mainHashMask = _hashMask;
      mainHash = _hash;
      mainNames = _mainNames;
      collList = _collList;
      collCount = _collCount;
      collEnd = _collEnd;
      longestCollisionList = _longestCollisionList;
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.sym.BytesToNameCanonicalizer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */