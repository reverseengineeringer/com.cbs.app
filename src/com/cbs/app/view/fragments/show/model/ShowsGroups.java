package com.cbs.app.view.fragments.show.model;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowsGroups
  extends ResponseModel
{
  public String platformType;
  public ArrayList<ShowGroups> showGroups;
  @JsonProperty("all")
  public ArrayList<ShowItem> showItems;
  public boolean success;
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.model.ShowsGroups
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */