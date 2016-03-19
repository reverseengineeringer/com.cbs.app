package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.model.SyncbakSchedule;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakScheduleEndpointResponse
  extends SyncbakEndpointResponse
{
  @JsonProperty("schedule")
  private ArrayList<SyncbakSchedule> a;
  
  public ArrayList<SyncbakSchedule> getSchedule()
  {
    return a;
  }
  
  public void setSchedule(ArrayList<SyncbakSchedule> paramArrayList)
  {
    a = paramArrayList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.SyncbakScheduleEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */