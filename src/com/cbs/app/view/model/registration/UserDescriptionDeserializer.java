package com.cbs.app.view.model.registration;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;

public class UserDescriptionDeserializer
  extends JsonDeserializer<UserDescription>
{
  public UserDescription deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return UserDescription.fromString(paramJsonParser.getText());
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.registration.UserDescriptionDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */