package com.cbs.app.service.social;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import com.cbs.app.service.social.model.TweetOperation;
import com.cbs.app.view.TwitterWebOAuthActivity;
import com.cbs.app.view.utils.Util;

public class Twitter
  implements TwitterOAuthResponse
{
  private Context a;
  private TwitterOAuthImpl b;
  private OAuthBuilder c;
  private TwitterOAuthTokens d;
  
  public Twitter(Context paramContext)
  {
    a = paramContext;
    b = new TwitterOAuthImpl();
    b.setTwitterOAuthResponse(this);
    c = new OAuthBuilder(a);
  }
  
  private void a(boolean paramBoolean, String paramString, int paramInt)
  {
    Object localObject = null;
    String str = paramString;
    if (paramString.contains("403")) {
      str = "Already exists";
    }
    switch (paramInt)
    {
    default: 
      paramString = (String)localObject;
    }
    for (;;)
    {
      if (paramString != null) {
        Toast.makeText(a, paramString, 0).show();
      }
      return;
      if (paramBoolean)
      {
        paramString = "Tweet was successful";
      }
      else
      {
        paramString = "tweet failed\nresponse = " + str;
        continue;
        if (paramBoolean)
        {
          paramString = "Re-Tweet was successful";
        }
        else
        {
          paramString = "Re-Tweet failed\nresponse = " + str;
          continue;
          if (paramBoolean)
          {
            paramString = "Reply-Tweet was successful";
          }
          else
          {
            paramString = "Reply-Tweet failed\nresponse = " + str;
            continue;
            if (paramBoolean)
            {
              paramString = "follow request was successful";
            }
            else
            {
              paramString = "follow request failed\nresponse = " + str;
              continue;
              if (paramBoolean) {
                paramString = "favorite tweet was successful";
              } else {
                paramString = "favorite tweet failed\nresponse = " + str;
              }
            }
          }
        }
      }
    }
  }
  
  private void b()
  {
    Intent localIntent = new Intent(a, TwitterWebOAuthActivity.class);
    a.startActivity(localIntent);
  }
  
  private boolean c()
  {
    if (d == null)
    {
      d = Util.D(a);
      if (d != null) {}
    }
    while ((d.b == null) || (d.a == null) || (d.c == null)) {
      return false;
    }
    return true;
  }
  
  public final void a()
  {
    b();
  }
  
  public final void a(long paramLong)
  {
    if (c())
    {
      b.a(c.b(d, paramLong));
      return;
    }
    b();
  }
  
  public final void a(final TweetOperation paramTweetOperation)
  {
    View localView = LayoutInflater.from(a).inflate(2130903283, null);
    final EditText localEditText = (EditText)localView.findViewById(2131690340);
    if (paramTweetOperation.getMessage() != null) {
      localEditText.setText(paramTweetOperation.getMessage());
    }
    new AlertDialog.Builder(new ContextThemeWrapper(a, 16973939)).setTitle("Tweet Message").setView(localView).setCancelable(false).setPositiveButton("Done", new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (paramTweetOperation.getChoice() == 2) {
          a(localEditText.getText().toString());
        }
        for (;;)
        {
          Util.a((Activity)Twitter.a(Twitter.this));
          return;
          if (paramTweetOperation.getChoice() == 5)
          {
            String str = paramTweetOperation.getReplyToAuthor();
            paramAnonymousDialogInterface = str;
            if (!str.contains("@")) {
              paramAnonymousDialogInterface = "@" + str;
            }
            paramAnonymousDialogInterface = paramAnonymousDialogInterface + "  " + localEditText.getText().toString();
            Twitter.a(Twitter.this, paramTweetOperation.getId(), paramAnonymousDialogInterface);
          }
        }
      }
    }).setNegativeButton("Cancel", new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        Util.a((Activity)Twitter.a(Twitter.this));
        paramAnonymousDialogInterface.dismiss();
      }
    }).show();
  }
  
  public final void a(String paramString)
  {
    if (c())
    {
      b.a(c.a(d, paramString));
      return;
    }
    b();
  }
  
  public final void a(String paramString, int paramInt)
  {
    a(true, paramString, paramInt);
  }
  
  public final void b(long paramLong)
  {
    if (c())
    {
      b.a(c.a(d, paramLong));
      return;
    }
    b();
  }
  
  public final void b(String paramString)
  {
    if (c())
    {
      b.a(c.b(d, paramString));
      return;
    }
    b();
  }
  
  public final void b(String paramString, int paramInt)
  {
    a(false, paramString, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.social.Twitter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */