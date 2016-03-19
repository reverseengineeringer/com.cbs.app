package com.cbs.app.view.fragments.show.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowGroups
{
  public int id;
  public String platformType;
  public String showGroupItems;
  public String title;
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.model.ShowGroups
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */