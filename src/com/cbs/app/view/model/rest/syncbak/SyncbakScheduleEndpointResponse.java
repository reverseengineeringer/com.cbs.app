package com.cbs.app.view.model.rest.syncbak;

import com.cbs.app.view.model.syncbak.SyncbakSchedule;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakScheduleEndpointResponse
  extends SyncbakEndpointResponse
{
  @JsonProperty("schedule")
  private ArrayList<SyncbakSchedule> schedule;
  
  public ArrayList<SyncbakSchedule> getSchedule()
  {
    return schedule;
  }
  
  public void setSchedule(ArrayList<SyncbakSchedule> paramArrayList)
  {
    schedule = paramArrayList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.syncbak.SyncbakScheduleEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */