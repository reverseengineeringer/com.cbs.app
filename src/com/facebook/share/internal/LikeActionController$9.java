package com.facebook.share.internal;

import com.facebook.GraphRequestBatch;
import com.facebook.GraphRequestBatch.Callback;
import com.facebook.LoggingBehavior;
import com.facebook.internal.Logger;

class LikeActionController$9
  implements LikeActionController.RequestCompletionCallback
{
  LikeActionController$9(LikeActionController paramLikeActionController) {}
  
  public void onComplete()
  {
    final LikeActionController.GetOGObjectLikesRequestWrapper localGetOGObjectLikesRequestWrapper = new LikeActionController.GetOGObjectLikesRequestWrapper(this$0, LikeActionController.access$1600(this$0), LikeActionController.access$1700(this$0));
    final LikeActionController.GetEngagementRequestWrapper localGetEngagementRequestWrapper = new LikeActionController.GetEngagementRequestWrapper(this$0, LikeActionController.access$1600(this$0), LikeActionController.access$1700(this$0));
    GraphRequestBatch localGraphRequestBatch = new GraphRequestBatch();
    localGetOGObjectLikesRequestWrapper.addToBatch(localGraphRequestBatch);
    localGetEngagementRequestWrapper.addToBatch(localGraphRequestBatch);
    localGraphRequestBatch.addCallback(new GraphRequestBatch.Callback()
    {
      public void onBatchCompleted(GraphRequestBatch paramAnonymousGraphRequestBatch)
      {
        if ((localGetOGObjectLikesRequestWrappererror != null) || (localGetEngagementRequestWrappererror != null))
        {
          Logger.log(LoggingBehavior.REQUESTS, LikeActionController.access$100(), "Unable to refresh like state for id: '%s'", new Object[] { LikeActionController.access$2200(this$0) });
          return;
        }
        LikeActionController.access$1300(this$0, localGetOGObjectLikesRequestWrapperobjectIsLiked, localGetEngagementRequestWrapperlikeCountStringWithLike, localGetEngagementRequestWrapperlikeCountStringWithoutLike, localGetEngagementRequestWrappersocialSentenceStringWithLike, localGetEngagementRequestWrappersocialSentenceStringWithoutLike, localGetOGObjectLikesRequestWrapperunlikeToken);
      }
    });
    localGraphRequestBatch.executeAsync();
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.LikeActionController.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */