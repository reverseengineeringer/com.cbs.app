package com.facebook.share.internal;

import com.facebook.GraphRequestBatch;
import com.facebook.GraphRequestBatch.Callback;
import com.facebook.LoggingBehavior;
import com.facebook.internal.Logger;

class LikeActionController$9$1
  implements GraphRequestBatch.Callback
{
  LikeActionController$9$1(LikeActionController.9 param9, LikeActionController.GetOGObjectLikesRequestWrapper paramGetOGObjectLikesRequestWrapper, LikeActionController.GetEngagementRequestWrapper paramGetEngagementRequestWrapper) {}
  
  public void onBatchCompleted(GraphRequestBatch paramGraphRequestBatch)
  {
    if ((val$objectLikesRequest.error != null) || (val$engagementRequest.error != null))
    {
      Logger.log(LoggingBehavior.REQUESTS, LikeActionController.access$100(), "Unable to refresh like state for id: '%s'", new Object[] { LikeActionController.access$2200(this$1.this$0) });
      return;
    }
    LikeActionController.access$1300(this$1.this$0, val$objectLikesRequest.objectIsLiked, val$engagementRequest.likeCountStringWithLike, val$engagementRequest.likeCountStringWithoutLike, val$engagementRequest.socialSentenceStringWithLike, val$engagementRequest.socialSentenceStringWithoutLike, val$objectLikesRequest.unlikeToken);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.LikeActionController.9.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */