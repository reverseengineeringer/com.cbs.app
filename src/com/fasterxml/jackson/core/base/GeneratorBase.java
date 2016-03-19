package com.fasterxml.jackson.core.base;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonGenerator.Feature;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.TreeNode;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.json.DupDetector;
import com.fasterxml.jackson.core.json.JsonWriteContext;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.core.util.VersionUtil;
import java.io.InputStream;

public abstract class GeneratorBase
  extends JsonGenerator
{
  protected static final int DERIVED_FEATURES_MASK = JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS.getMask() | JsonGenerator.Feature.ESCAPE_NON_ASCII.getMask() | JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION.getMask();
  public static final int SURR1_FIRST = 55296;
  public static final int SURR1_LAST = 56319;
  public static final int SURR2_FIRST = 56320;
  public static final int SURR2_LAST = 57343;
  protected boolean _cfgNumbersAsStrings;
  protected boolean _closed;
  protected int _features;
  protected ObjectCodec _objectCodec;
  protected JsonWriteContext _writeContext;
  
  protected GeneratorBase(int paramInt, ObjectCodec paramObjectCodec)
  {
    _features = paramInt;
    _objectCodec = paramObjectCodec;
    if (JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION.enabledIn(paramInt)) {}
    for (paramObjectCodec = DupDetector.rootDetector(this);; paramObjectCodec = null)
    {
      _writeContext = JsonWriteContext.createRootContext(paramObjectCodec);
      _cfgNumbersAsStrings = JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS.enabledIn(paramInt);
      return;
    }
  }
  
  protected GeneratorBase(int paramInt, ObjectCodec paramObjectCodec, JsonWriteContext paramJsonWriteContext)
  {
    _features = paramInt;
    _objectCodec = paramObjectCodec;
    _writeContext = paramJsonWriteContext;
    _cfgNumbersAsStrings = JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS.enabledIn(paramInt);
  }
  
  protected final int _decodeSurrogate(int paramInt1, int paramInt2)
  {
    if ((paramInt2 < 56320) || (paramInt2 > 57343)) {
      _reportError("Incomplete surrogate pair: first char 0x" + Integer.toHexString(paramInt1) + ", second 0x" + Integer.toHexString(paramInt2));
    }
    return 65536 + (paramInt1 - 55296 << 10) + (paramInt2 - 56320);
  }
  
  protected abstract void _releaseBuffers();
  
  protected abstract void _verifyValueWrite(String paramString);
  
  public void close()
  {
    _closed = true;
  }
  
  public JsonGenerator disable(JsonGenerator.Feature paramFeature)
  {
    int i = paramFeature.getMask();
    _features &= (i ^ 0xFFFFFFFF);
    if ((i & DERIVED_FEATURES_MASK) != 0)
    {
      if (paramFeature != JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS) {
        break label39;
      }
      _cfgNumbersAsStrings = false;
    }
    label39:
    do
    {
      return this;
      if (paramFeature == JsonGenerator.Feature.ESCAPE_NON_ASCII)
      {
        setHighestNonEscapedChar(0);
        return this;
      }
    } while (paramFeature != JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION);
    _writeContext = _writeContext.withDupDetector(null);
    return this;
  }
  
  public JsonGenerator enable(JsonGenerator.Feature paramFeature)
  {
    int i = paramFeature.getMask();
    _features |= i;
    if ((i & DERIVED_FEATURES_MASK) != 0)
    {
      if (paramFeature != JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS) {
        break label37;
      }
      _cfgNumbersAsStrings = true;
    }
    label37:
    do
    {
      return this;
      if (paramFeature == JsonGenerator.Feature.ESCAPE_NON_ASCII)
      {
        setHighestNonEscapedChar(127);
        return this;
      }
    } while ((paramFeature != JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION) || (_writeContext.getDupDetector() != null));
    _writeContext = _writeContext.withDupDetector(DupDetector.rootDetector(this));
    return this;
  }
  
  public abstract void flush();
  
  public final ObjectCodec getCodec()
  {
    return _objectCodec;
  }
  
  public Object getCurrentValue()
  {
    return _writeContext.getCurrentValue();
  }
  
  public int getFeatureMask()
  {
    return _features;
  }
  
  public final JsonWriteContext getOutputContext()
  {
    return _writeContext;
  }
  
  public boolean isClosed()
  {
    return _closed;
  }
  
  public final boolean isEnabled(JsonGenerator.Feature paramFeature)
  {
    return (_features & paramFeature.getMask()) != 0;
  }
  
  public JsonGenerator setCodec(ObjectCodec paramObjectCodec)
  {
    _objectCodec = paramObjectCodec;
    return this;
  }
  
  public void setCurrentValue(Object paramObject)
  {
    _writeContext.setCurrentValue(paramObject);
  }
  
  public JsonGenerator setFeatureMask(int paramInt)
  {
    int i = _features ^ paramInt;
    _features = paramInt;
    if ((DERIVED_FEATURES_MASK & i) != 0)
    {
      _cfgNumbersAsStrings = JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS.enabledIn(paramInt);
      if (JsonGenerator.Feature.ESCAPE_NON_ASCII.enabledIn(i))
      {
        if (!JsonGenerator.Feature.ESCAPE_NON_ASCII.enabledIn(paramInt)) {
          break label105;
        }
        setHighestNonEscapedChar(127);
      }
    }
    for (;;)
    {
      if (JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i))
      {
        if (!JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION.enabledIn(paramInt)) {
          break;
        }
        if (_writeContext.getDupDetector() == null) {
          _writeContext = _writeContext.withDupDetector(DupDetector.rootDetector(this));
        }
      }
      return this;
      label105:
      setHighestNonEscapedChar(0);
    }
    _writeContext = _writeContext.withDupDetector(null);
    return this;
  }
  
  public JsonGenerator useDefaultPrettyPrinter()
  {
    if (getPrettyPrinter() != null) {
      return this;
    }
    return setPrettyPrinter(new DefaultPrettyPrinter());
  }
  
  public Version version()
  {
    return VersionUtil.versionFor(getClass());
  }
  
  public int writeBinary(Base64Variant paramBase64Variant, InputStream paramInputStream, int paramInt)
  {
    _reportUnsupportedOperation();
    return 0;
  }
  
  public void writeFieldName(SerializableString paramSerializableString)
  {
    writeFieldName(paramSerializableString.getValue());
  }
  
  public void writeObject(Object paramObject)
  {
    if (paramObject == null)
    {
      writeNull();
      return;
    }
    if (_objectCodec != null)
    {
      _objectCodec.writeValue(this, paramObject);
      return;
    }
    _writeSimpleObject(paramObject);
  }
  
  public void writeRawValue(SerializableString paramSerializableString)
  {
    _verifyValueWrite("write raw value");
    writeRaw(paramSerializableString);
  }
  
  public void writeRawValue(String paramString)
  {
    _verifyValueWrite("write raw value");
    writeRaw(paramString);
  }
  
  public void writeRawValue(String paramString, int paramInt1, int paramInt2)
  {
    _verifyValueWrite("write raw value");
    writeRaw(paramString, paramInt1, paramInt2);
  }
  
  public void writeRawValue(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    _verifyValueWrite("write raw value");
    writeRaw(paramArrayOfChar, paramInt1, paramInt2);
  }
  
  public void writeString(SerializableString paramSerializableString)
  {
    writeString(paramSerializableString.getValue());
  }
  
  public void writeTree(TreeNode paramTreeNode)
  {
    if (paramTreeNode == null)
    {
      writeNull();
      return;
    }
    if (_objectCodec == null) {
      throw new IllegalStateException("No ObjectCodec defined");
    }
    _objectCodec.writeValue(this, paramTreeNode);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.base.GeneratorBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */