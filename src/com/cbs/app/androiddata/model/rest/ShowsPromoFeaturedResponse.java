package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.Promo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowsPromoFeaturedResponse
  extends ResponseModel
{
  private List<Promo> a;
  
  public List<Promo> getFeaturedShows()
  {
    return a;
  }
  
  public void setFeaturedShows(List<Promo> paramList)
  {
    a = paramList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.ShowsPromoFeaturedResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */