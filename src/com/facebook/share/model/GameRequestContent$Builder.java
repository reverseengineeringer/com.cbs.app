package com.facebook.share.model;

import android.os.Parcel;
import java.util.ArrayList;

public class GameRequestContent$Builder
  implements ShareModelBuilder<GameRequestContent, Builder>
{
  private GameRequestContent.ActionType actionType;
  private String data;
  private GameRequestContent.Filters filters;
  private String message;
  private String objectId;
  private ArrayList<String> suggestions;
  private String title;
  private String to;
  
  public GameRequestContent build()
  {
    return new GameRequestContent(this, null);
  }
  
  public Builder readFrom(Parcel paramParcel)
  {
    return readFrom((GameRequestContent)paramParcel.readParcelable(GameRequestContent.class.getClassLoader()));
  }
  
  public Builder readFrom(GameRequestContent paramGameRequestContent)
  {
    if (paramGameRequestContent == null) {
      return this;
    }
    return setMessage(paramGameRequestContent.getMessage()).setTo(paramGameRequestContent.getTo()).setTitle(paramGameRequestContent.getTitle()).setData(paramGameRequestContent.getData()).setActionType(paramGameRequestContent.getActionType()).setObjectId(paramGameRequestContent.getObjectId()).setFilters(paramGameRequestContent.getFilters()).setSuggestions(paramGameRequestContent.getSuggestions());
  }
  
  public Builder setActionType(GameRequestContent.ActionType paramActionType)
  {
    actionType = paramActionType;
    return this;
  }
  
  public Builder setData(String paramString)
  {
    data = paramString;
    return this;
  }
  
  public Builder setFilters(GameRequestContent.Filters paramFilters)
  {
    filters = paramFilters;
    return this;
  }
  
  public Builder setMessage(String paramString)
  {
    message = paramString;
    return this;
  }
  
  public Builder setObjectId(String paramString)
  {
    objectId = paramString;
    return this;
  }
  
  public Builder setSuggestions(ArrayList<String> paramArrayList)
  {
    suggestions = paramArrayList;
    return this;
  }
  
  public Builder setTitle(String paramString)
  {
    title = paramString;
    return this;
  }
  
  public Builder setTo(String paramString)
  {
    to = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.GameRequestContent.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */