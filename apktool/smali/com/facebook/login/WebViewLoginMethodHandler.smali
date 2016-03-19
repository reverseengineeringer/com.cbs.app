.class Lcom/facebook/login/WebViewLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/WebViewLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final WEB_VIEW_AUTH_HANDLER_STORE:Ljava/lang/String; = "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

.field private static final WEB_VIEW_AUTH_HANDLER_TOKEN_KEY:Ljava/lang/String; = "TOKEN"


# instance fields
.field private e2e:Ljava/lang/String;

.field private loginDialog:Lcom/facebook/internal/WebDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lcom/facebook/login/WebViewLoginMethodHandler$2;

    invoke-direct {v0}, Lcom/facebook/login/WebViewLoginMethodHandler$2;-><init>()V

    sput-object v0, Lcom/facebook/login/WebViewLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    .line 266
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 57
    return-void
.end method

.method private loadCookieToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 213
    const-string v1, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    const-string v1, "TOKEN"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveCookieToken(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 203
    const-string v1, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TOKEN"

    .line 207
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginDialog:Lcom/facebook/internal/WebDialog;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginDialog:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog;->cancel()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginDialog:Lcom/facebook/internal/WebDialog;

    .line 75
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "web_view"

    return-object v0
.end method

.method needsInternetPermission()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method onWebDialogComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 143
    if-eqz p2, :cond_2

    .line 145
    const-string v0, "e2e"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "e2e"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    .line 151
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    .line 154
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-static {v0, p2, v2, v3}, Lcom/facebook/login/WebViewLoginMethodHandler;->createAccessTokenFromWebBundle(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v2

    .line 155
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 156
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 155
    invoke-static {v0, v2}, Lcom/facebook/login/LoginClient$Result;->createTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 162
    iget-object v3, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 163
    invoke-virtual {v3}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v3

    .line 164
    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 165
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/login/WebViewLoginMethodHandler;->saveCookieToken(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/facebook/login/WebViewLoginMethodHandler;->logWebLoginCompleted(Ljava/lang/String;)V

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    .line 199
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    iget-object v2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 168
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v2

    .line 170
    invoke-virtual {v0}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v2, v1, v0}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_2
    instance-of v0, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    const-string v1, "User canceled log in."

    invoke-static {v0, v1}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_3
    iput-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    .line 182
    invoke-virtual {p3}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 183
    instance-of v2, p3, Lcom/facebook/FacebookServiceException;

    if-eqz v2, :cond_4

    .line 184
    check-cast p3, Lcom/facebook/FacebookServiceException;

    .line 185
    invoke-virtual {p3}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    .line 186
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    :goto_1
    iget-object v3, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v2, v0

    move-object v0, v1

    goto :goto_1
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const-string v0, ","

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v2, "scope"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "scope"

    invoke-virtual {p0, v2, v0}, Lcom/facebook/login/WebViewLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v0

    .line 87
    const-string v2, "default_audience"

    .line 88
    invoke-virtual {v0}, Lcom/facebook/login/DefaultAudience;->getNativeProtocolAudience()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    if-eqz v0, :cond_2

    .line 93
    invoke-direct {p0}, Lcom/facebook/login/WebViewLoginMethodHandler;->loadCookieToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "access_token"

    const-string v2, "1"

    invoke-virtual {p0, v0, v2}, Lcom/facebook/login/WebViewLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    :goto_1
    new-instance v0, Lcom/facebook/login/WebViewLoginMethodHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/login/WebViewLoginMethodHandler$1;-><init>(Lcom/facebook/login/WebViewLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V

    .line 117
    invoke-static {}, Lcom/facebook/login/LoginClient;->getE2E()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    .line 118
    const-string v2, "e2e"

    iget-object v3, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/login/WebViewLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    iget-object v2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 121
    new-instance v3, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;

    .line 123
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v1}, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    .line 125
    invoke-virtual {v3, v1}, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->setE2E(Ljava/lang/String;)Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;

    move-result-object v1

    .line 126
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->isRerequest()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->setIsRerequest(Z)Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v0}, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->setOnCompleteListener(Lcom/facebook/internal/WebDialog$OnCompleteListener;)Lcom/facebook/internal/WebDialog$Builder;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/facebook/FacebookSdk;->getWebDialogTheme()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/internal/WebDialog$Builder;->setTheme(I)Lcom/facebook/internal/WebDialog$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog$Builder;->build()Lcom/facebook/internal/WebDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginDialog:Lcom/facebook/internal/WebDialog;

    .line 131
    new-instance v0, Lcom/facebook/internal/FacebookDialogFragment;

    invoke-direct {v0}, Lcom/facebook/internal/FacebookDialogFragment;-><init>()V

    .line 132
    invoke-virtual {v0, v5}, Lcom/facebook/internal/FacebookDialogFragment;->setRetainInstance(Z)V

    .line 133
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginDialog:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/FacebookDialogFragment;->setDialog(Landroid/app/Dialog;)V

    .line 134
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "FacebookDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/FacebookDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 137
    return v5

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    .line 105
    const-string v0, "access_token"

    const-string v2, "0"

    invoke-virtual {p0, v0, v2}, Lcom/facebook/login/WebViewLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 275
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 276
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    return-void
.end method
