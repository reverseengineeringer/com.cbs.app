package com.cbs.app.view.fragments.show.model;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Shows
  extends ResponseModel
{
  public Group group;
  public ArrayList<ShowGroups> showGroups;
  public boolean success;
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.model.Shows
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */