package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.FormatSchema;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.SerializedString;
import java.io.Serializable;

public final class ObjectWriter$GeneratorSettings
  implements Serializable
{
  public static final GeneratorSettings empty = new GeneratorSettings(null, null, null, null);
  private static final long serialVersionUID = 1L;
  public final CharacterEscapes characterEscapes;
  public final PrettyPrinter prettyPrinter;
  public final SerializableString rootValueSeparator;
  public final FormatSchema schema;
  
  public ObjectWriter$GeneratorSettings(PrettyPrinter paramPrettyPrinter, FormatSchema paramFormatSchema, CharacterEscapes paramCharacterEscapes, SerializableString paramSerializableString)
  {
    prettyPrinter = paramPrettyPrinter;
    schema = paramFormatSchema;
    characterEscapes = paramCharacterEscapes;
    rootValueSeparator = paramSerializableString;
  }
  
  public final GeneratorSettings with(FormatSchema paramFormatSchema)
  {
    if (schema == paramFormatSchema) {
      return this;
    }
    return new GeneratorSettings(prettyPrinter, paramFormatSchema, characterEscapes, rootValueSeparator);
  }
  
  public final GeneratorSettings with(PrettyPrinter paramPrettyPrinter)
  {
    PrettyPrinter localPrettyPrinter = paramPrettyPrinter;
    if (paramPrettyPrinter == null) {
      localPrettyPrinter = ObjectWriter.NULL_PRETTY_PRINTER;
    }
    if (localPrettyPrinter == prettyPrinter) {
      return this;
    }
    return new GeneratorSettings(localPrettyPrinter, schema, characterEscapes, rootValueSeparator);
  }
  
  public final GeneratorSettings with(CharacterEscapes paramCharacterEscapes)
  {
    if (characterEscapes == paramCharacterEscapes) {
      return this;
    }
    return new GeneratorSettings(prettyPrinter, schema, paramCharacterEscapes, rootValueSeparator);
  }
  
  public final GeneratorSettings withRootValueSeparator(SerializableString paramSerializableString)
  {
    if (paramSerializableString == null)
    {
      if (rootValueSeparator != null) {}
    }
    else {
      while ((rootValueSeparator != null) && (paramSerializableString.getValue().equals(rootValueSeparator.getValue()))) {
        return this;
      }
    }
    return new GeneratorSettings(prettyPrinter, schema, characterEscapes, paramSerializableString);
  }
  
  public final GeneratorSettings withRootValueSeparator(String paramString)
  {
    if (paramString == null)
    {
      if (rootValueSeparator != null) {}
    }
    else {
      while (paramString.equals(rootValueSeparator)) {
        return this;
      }
    }
    PrettyPrinter localPrettyPrinter = prettyPrinter;
    FormatSchema localFormatSchema = schema;
    CharacterEscapes localCharacterEscapes = characterEscapes;
    if (paramString == null) {}
    for (paramString = null;; paramString = new SerializedString(paramString)) {
      return new GeneratorSettings(localPrettyPrinter, localFormatSchema, localCharacterEscapes, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ObjectWriter.GeneratorSettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */