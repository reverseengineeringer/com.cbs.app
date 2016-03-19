package com.cbs.app.view.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.io.Serializable;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class FavoriteShowList
  implements Serializable
{
  private long id;
  private String name;
  private ArrayList<FavoriteShow> showList;
  private String uniqueName;
  
  public long getId()
  {
    return id;
  }
  
  public String getName()
  {
    return name;
  }
  
  public ArrayList<FavoriteShow> getShowList()
  {
    return showList;
  }
  
  public String getUniqueName()
  {
    return uniqueName;
  }
  
  public void setId(long paramLong)
  {
    id = paramLong;
  }
  
  public void setName(String paramString)
  {
    name = paramString;
  }
  
  public void setShowList(ArrayList<FavoriteShow> paramArrayList)
  {
    showList = paramArrayList;
  }
  
  public void setUniqueName(String paramString)
  {
    uniqueName = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.FavoriteShowList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */