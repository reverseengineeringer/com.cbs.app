package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.Group;
import com.cbs.app.androiddata.model.ShowGroup;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SingleShowGroupResponse
  extends ResponseModel
{
  private ArrayList<ShowGroup> a;
  private boolean b;
  private Group c;
  
  public Group getGroup()
  {
    return c;
  }
  
  public ArrayList<ShowGroup> getShowGroups()
  {
    return a;
  }
  
  public void setGroup(Group paramGroup)
  {
    c = paramGroup;
  }
  
  public void setShowGroups(ArrayList<ShowGroup> paramArrayList)
  {
    a = paramArrayList;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    b = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.SingleShowGroupResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */