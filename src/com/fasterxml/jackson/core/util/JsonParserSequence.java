package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.ArrayList;
import java.util.List;

public class JsonParserSequence
  extends JsonParserDelegate
{
  protected int _nextParser;
  protected final JsonParser[] _parsers;
  
  protected JsonParserSequence(JsonParser[] paramArrayOfJsonParser)
  {
    super(paramArrayOfJsonParser[0]);
    _parsers = paramArrayOfJsonParser;
    _nextParser = 1;
  }
  
  public static JsonParserSequence createFlattened(JsonParser paramJsonParser1, JsonParser paramJsonParser2)
  {
    if ((!(paramJsonParser1 instanceof JsonParserSequence)) && (!(paramJsonParser2 instanceof JsonParserSequence))) {
      return new JsonParserSequence(new JsonParser[] { paramJsonParser1, paramJsonParser2 });
    }
    ArrayList localArrayList = new ArrayList();
    if ((paramJsonParser1 instanceof JsonParserSequence))
    {
      ((JsonParserSequence)paramJsonParser1).addFlattenedActiveParsers(localArrayList);
      if (!(paramJsonParser2 instanceof JsonParserSequence)) {
        break label103;
      }
      ((JsonParserSequence)paramJsonParser2).addFlattenedActiveParsers(localArrayList);
    }
    for (;;)
    {
      return new JsonParserSequence((JsonParser[])localArrayList.toArray(new JsonParser[localArrayList.size()]));
      localArrayList.add(paramJsonParser1);
      break;
      label103:
      localArrayList.add(paramJsonParser2);
    }
  }
  
  protected void addFlattenedActiveParsers(List<JsonParser> paramList)
  {
    int i = _nextParser;
    int j = _parsers.length;
    i -= 1;
    if (i < j)
    {
      JsonParser localJsonParser = _parsers[i];
      if ((localJsonParser instanceof JsonParserSequence)) {
        ((JsonParserSequence)localJsonParser).addFlattenedActiveParsers(paramList);
      }
      for (;;)
      {
        i += 1;
        break;
        paramList.add(localJsonParser);
      }
    }
  }
  
  public void close()
  {
    do
    {
      delegate.close();
    } while (switchToNext());
  }
  
  public int containedParsersCount()
  {
    return _parsers.length;
  }
  
  public JsonToken nextToken()
  {
    JsonToken localJsonToken = delegate.nextToken();
    if (localJsonToken != null) {
      return localJsonToken;
    }
    while (switchToNext())
    {
      localJsonToken = delegate.nextToken();
      if (localJsonToken != null) {
        return localJsonToken;
      }
    }
    return null;
  }
  
  protected boolean switchToNext()
  {
    if (_nextParser >= _parsers.length) {
      return false;
    }
    JsonParser[] arrayOfJsonParser = _parsers;
    int i = _nextParser;
    _nextParser = (i + 1);
    delegate = arrayOfJsonParser[i];
    return true;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.util.JsonParserSequence
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */