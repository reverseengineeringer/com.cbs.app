package com.facebook.share.internal;

import com.facebook.internal.Validate;
import com.facebook.share.model.GameRequestContent;
import com.facebook.share.model.GameRequestContent.ActionType;

public class GameRequestValidation
{
  public static void validate(GameRequestContent paramGameRequestContent)
  {
    int k = 0;
    Validate.notNull(paramGameRequestContent.getMessage(), "message");
    if (paramGameRequestContent.getObjectId() != null)
    {
      i = 1;
      if ((paramGameRequestContent.getActionType() != GameRequestContent.ActionType.ASKFOR) && (paramGameRequestContent.getActionType() != GameRequestContent.ActionType.SEND)) {
        break label63;
      }
    }
    label63:
    for (int j = 1;; j = 0)
    {
      if ((i ^ j) == 0) {
        break label68;
      }
      throw new IllegalArgumentException("Object id should be provided if and only if action type is send or askfor");
      i = 0;
      break;
    }
    label68:
    j = k;
    if (paramGameRequestContent.getTo() != null) {
      j = 1;
    }
    int i = j;
    if (paramGameRequestContent.getSuggestions() != null) {
      i = j + 1;
    }
    j = i;
    if (paramGameRequestContent.getFilters() != null) {
      j = i + 1;
    }
    if (j > 1) {
      throw new IllegalArgumentException("Parameters to, filters and suggestions are mutually exclusive");
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.GameRequestValidation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */