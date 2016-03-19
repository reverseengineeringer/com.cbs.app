package com.facebook.share.internal;

import com.facebook.share.model.SharePhoto;

class ShareContentValidation$ApiValidator
  extends ShareContentValidation.Validator
{
  private ShareContentValidation$ApiValidator()
  {
    super(null);
  }
  
  public void validate(SharePhoto paramSharePhoto)
  {
    ShareContentValidation.access$400(paramSharePhoto, this);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.ShareContentValidation.ApiValidator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */