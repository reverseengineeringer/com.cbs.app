package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;

public class InetSocketAddressSerializer
  extends StdScalarSerializer<InetSocketAddress>
{
  public InetSocketAddressSerializer()
  {
    super(InetSocketAddress.class);
  }
  
  public void serialize(InetSocketAddress paramInetSocketAddress, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    InetAddress localInetAddress = paramInetSocketAddress.getAddress();
    String str;
    int i;
    if (localInetAddress == null)
    {
      str = paramInetSocketAddress.getHostName();
      i = str.indexOf('/');
      paramSerializerProvider = str;
      if (i >= 0)
      {
        if (i != 0) {
          break label128;
        }
        if (!(localInetAddress instanceof Inet6Address)) {
          break label118;
        }
        paramSerializerProvider = "[" + str.substring(1) + "]";
      }
    }
    for (;;)
    {
      paramJsonGenerator.writeString(paramSerializerProvider + ":" + paramInetSocketAddress.getPort());
      return;
      str = localInetAddress.toString().trim();
      break;
      label118:
      paramSerializerProvider = str.substring(1);
      continue;
      label128:
      paramSerializerProvider = str.substring(0, i);
    }
  }
  
  public void serializeWithType(InetSocketAddress paramInetSocketAddress, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForScalar(paramInetSocketAddress, paramJsonGenerator, InetSocketAddress.class);
    serialize(paramInetSocketAddress, paramJsonGenerator, paramSerializerProvider);
    paramTypeSerializer.writeTypeSuffixForScalar(paramInetSocketAddress, paramJsonGenerator);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.InetSocketAddressSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */