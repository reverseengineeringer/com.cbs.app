package com.facebook.internal;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.util.Log;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookDialog;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import java.util.Iterator;
import java.util.List;

public abstract class FacebookDialogBase<CONTENT, RESULT>
  implements FacebookDialog<CONTENT, RESULT>
{
  protected static final Object BASE_AUTOMATIC_MODE = new Object();
  private static final String TAG = "FacebookDialog";
  private final Activity activity;
  private final Fragment fragment;
  private List<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> modeHandlers;
  private int requestCode;
  
  protected FacebookDialogBase(Activity paramActivity, int paramInt)
  {
    Validate.notNull(paramActivity, "activity");
    activity = paramActivity;
    fragment = null;
    requestCode = paramInt;
  }
  
  protected FacebookDialogBase(Fragment paramFragment, int paramInt)
  {
    Validate.notNull(paramFragment, "fragment");
    fragment = paramFragment;
    activity = null;
    requestCode = paramInt;
    if (paramFragment.getActivity() == null) {
      throw new IllegalArgumentException("Cannot use a fragment that is not attached to an activity");
    }
  }
  
  private List<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> cachedModeHandlers()
  {
    if (modeHandlers == null) {
      modeHandlers = getOrderedModeHandlers();
    }
    return modeHandlers;
  }
  
  private AppCall createAppCallForMode(CONTENT paramCONTENT, Object paramObject)
  {
    int i;
    ModeHandler localModeHandler;
    if (paramObject == BASE_AUTOMATIC_MODE)
    {
      i = 1;
      Iterator localIterator = cachedModeHandlers().iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localModeHandler = (ModeHandler)localIterator.next();
      } while (((i == 0) && (!Utility.areObjectsEqual(localModeHandler.getMode(), paramObject))) || (!localModeHandler.canShow(paramCONTENT)));
    }
    for (;;)
    {
      try
      {
        paramCONTENT = localModeHandler.createAppCall(paramCONTENT);
        paramObject = paramCONTENT;
        if (paramCONTENT == null)
        {
          paramObject = createBaseAppCall();
          DialogPresenter.setupAppCallForCannotShowError((AppCall)paramObject);
        }
        return (AppCall)paramObject;
        i = 0;
      }
      catch (FacebookException paramObject)
      {
        paramCONTENT = createBaseAppCall();
        DialogPresenter.setupAppCallForValidationError(paramCONTENT, (FacebookException)paramObject);
        continue;
      }
      paramCONTENT = null;
    }
  }
  
  public boolean canShow(CONTENT paramCONTENT)
  {
    return canShowImpl(paramCONTENT, BASE_AUTOMATIC_MODE);
  }
  
  protected boolean canShowImpl(CONTENT paramCONTENT, Object paramObject)
  {
    if (paramObject == BASE_AUTOMATIC_MODE) {}
    for (int i = 1;; i = 0)
    {
      Iterator localIterator = cachedModeHandlers().iterator();
      ModeHandler localModeHandler;
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localModeHandler = (ModeHandler)localIterator.next();
      } while (((i == 0) && (!Utility.areObjectsEqual(localModeHandler.getMode(), paramObject))) || (!localModeHandler.canShow(paramCONTENT)));
      return true;
    }
    return false;
  }
  
  protected abstract AppCall createBaseAppCall();
  
  protected Activity getActivityContext()
  {
    if (activity != null) {
      return activity;
    }
    if (fragment != null) {
      return fragment.getActivity();
    }
    return null;
  }
  
  protected abstract List<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> getOrderedModeHandlers();
  
  public int getRequestCode()
  {
    return requestCode;
  }
  
  public final void registerCallback(CallbackManager paramCallbackManager, FacebookCallback<RESULT> paramFacebookCallback)
  {
    if (!(paramCallbackManager instanceof CallbackManagerImpl)) {
      throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
    }
    registerCallbackImpl((CallbackManagerImpl)paramCallbackManager, paramFacebookCallback);
  }
  
  public final void registerCallback(CallbackManager paramCallbackManager, FacebookCallback<RESULT> paramFacebookCallback, int paramInt)
  {
    setRequestCode(paramInt);
    registerCallback(paramCallbackManager, paramFacebookCallback);
  }
  
  protected abstract void registerCallbackImpl(CallbackManagerImpl paramCallbackManagerImpl, FacebookCallback<RESULT> paramFacebookCallback);
  
  protected void setRequestCode(int paramInt)
  {
    if (FacebookSdk.isFacebookRequestCode(paramInt)) {
      throw new IllegalArgumentException("Request code " + paramInt + " cannot be within the range reserved by the Facebook SDK.");
    }
    requestCode = paramInt;
  }
  
  public void show(CONTENT paramCONTENT)
  {
    showImpl(paramCONTENT, BASE_AUTOMATIC_MODE);
  }
  
  protected void showImpl(CONTENT paramCONTENT, Object paramObject)
  {
    paramCONTENT = createAppCallForMode(paramCONTENT, paramObject);
    if (paramCONTENT != null) {
      if (fragment != null) {
        DialogPresenter.present(paramCONTENT, fragment);
      }
    }
    do
    {
      return;
      DialogPresenter.present(paramCONTENT, activity);
      return;
      Log.e("FacebookDialog", "No code path should ever result in a null appCall");
    } while (!FacebookSdk.isDebugEnabled());
    throw new IllegalStateException("No code path should ever result in a null appCall");
  }
  
  protected abstract class ModeHandler
  {
    protected ModeHandler() {}
    
    public abstract boolean canShow(CONTENT paramCONTENT);
    
    public abstract AppCall createAppCall(CONTENT paramCONTENT);
    
    public Object getMode()
    {
      return FacebookDialogBase.BASE_AUTOMATIC_MODE;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.FacebookDialogBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */