package com.cbs.app.view.fragments.show.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Group
{
  public long id;
  public String platformType;
  public ArrayList<ShowItem> showGroupItems;
  public String title;
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.model.Group
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */