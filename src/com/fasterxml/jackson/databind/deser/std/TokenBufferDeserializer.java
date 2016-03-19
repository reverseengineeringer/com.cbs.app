package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.util.TokenBuffer;

@JacksonStdImpl
public class TokenBufferDeserializer
  extends StdScalarDeserializer<TokenBuffer>
{
  private static final long serialVersionUID = 1L;
  
  public TokenBufferDeserializer()
  {
    super(TokenBuffer.class);
  }
  
  protected TokenBuffer createBufferInstance(JsonParser paramJsonParser)
  {
    return new TokenBuffer(paramJsonParser);
  }
  
  public TokenBuffer deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return createBufferInstance(paramJsonParser).deserialize(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.TokenBufferDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */