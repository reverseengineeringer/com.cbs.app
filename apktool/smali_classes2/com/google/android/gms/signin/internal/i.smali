.class public final Lcom/google/android/gms/signin/internal/i;
.super Lcom/google/android/gms/common/internal/n;

# interfaces
.implements Lcom/google/android/gms/internal/kz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/signin/internal/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/n",
        "<",
        "Lcom/google/android/gms/signin/internal/f;",
        ">;",
        "Lcom/google/android/gms/internal/kz;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final e:Lcom/google/android/gms/common/internal/j;

.field private final f:Lcom/google/android/gms/internal/la;

.field private g:Ljava/lang/Integer;

.field private final h:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/j;Lcom/google/android/gms/internal/la;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;Ljava/util/concurrent/ExecutorService;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/n;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/j;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;)V

    iput-boolean p3, p0, Lcom/google/android/gms/signin/internal/i;->a:Z

    iput-object p4, p0, Lcom/google/android/gms/signin/internal/i;->e:Lcom/google/android/gms/common/internal/j;

    iput-object p5, p0, Lcom/google/android/gms/signin/internal/i;->f:Lcom/google/android/gms/internal/la;

    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/j;->i()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/signin/internal/i;->g:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/google/android/gms/signin/internal/i;->h:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 0
    .line 2000
    invoke-static {p1}, Lcom/google/android/gms/signin/internal/f$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/f;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/internal/s;Ljava/util/Set;Lcom/google/android/gms/signin/internal/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/s;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Lcom/google/android/gms/signin/internal/e;",
            ")V"
        }
    .end annotation

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/i;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/f;

    new-instance v1, Lcom/google/android/gms/common/internal/AuthAccountRequest;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/common/internal/AuthAccountRequest;-><init>(Lcom/google/android/gms/common/internal/s;Ljava/util/Set;)V

    invoke-interface {v0, v1, p3}, Lcom/google/android/gms/signin/internal/f;->a(Lcom/google/android/gms/common/internal/AuthAccountRequest;Lcom/google/android/gms/signin/internal/e;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    new-instance v2, Lcom/google/android/gms/signin/internal/AuthAccountResult;

    invoke-direct {v2}, Lcom/google/android/gms/signin/internal/AuthAccountResult;-><init>()V

    invoke-interface {p3, v1, v2}, Lcom/google/android/gms/signin/internal/e;->a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/signin/internal/AuthAccountResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "SignInClientImpl"

    const-string v2, "ISignInCallbacks#onAuthAccount should be executed from the same process, unexpected RemoteException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/internal/s;Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/i;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/f;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/i;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/signin/internal/f;->a(Lcom/google/android/gms/common/internal/s;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/internal/w;)V
    .locals 4

    const-string v0, "Expecting a valid IResolveAccountCallbacks"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/i;->e:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/j;->b()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/i;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/f;

    new-instance v2, Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    iget-object v3, p0, Lcom/google/android/gms/signin/internal/i;->g:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/common/internal/ResolveAccountRequest;-><init>(Landroid/accounts/Account;I)V

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/signin/internal/f;->a(Lcom/google/android/gms/common/internal/ResolveAccountRequest;Lcom/google/android/gms/common/internal/w;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    invoke-direct {v1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;-><init>()V

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/internal/w;->a(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "SignInClientImpl"

    const-string v2, "IResolveAccountCallbacks#onAccountResolutionComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public final d()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/i;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/f;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/i;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/signin/internal/f;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final e()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/i;->f:Lcom/google/android/gms/internal/la;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/i;->e:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/j;->i()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/signin/internal/i;->h:Ljava/util/concurrent/ExecutorService;

    .line 1000
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "com.google.android.gms.signin.internal.offlineAccessRequested"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/la;->a()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/la;->b()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/la;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/la;->d()Lcom/google/android/gms/common/api/b$d;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/google/android/gms/signin/internal/i$a;

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/signin/internal/i$a;-><init>(Lcom/google/android/gms/internal/la;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v4}, Lcom/google/android/gms/signin/internal/i$a;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v4, "com.google.android.gms.signin.internal.signInCallbacks"

    new-instance v5, Lcom/google/android/gms/common/internal/BinderWrapper;

    invoke-direct {v5, v2}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/la;->e()Z

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/la;->f()Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/i;->e:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/j;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/i;->r()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.google.android.gms.signin.internal.realClientPackageName"

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/i;->e:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/j;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v3
.end method

.method public final f()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/n$f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/n$f;-><init>(Lcom/google/android/gms/common/internal/n;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/signin/internal/i;->a(Lcom/google/android/gms/common/api/b$e;)V

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/signin/internal/i;->a:Z

    return v0
.end method
