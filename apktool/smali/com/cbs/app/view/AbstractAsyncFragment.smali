.class public abstract Lcom/cbs/app/view/AbstractAsyncFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/AsyncActivity;


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field public b:Z

.field public c:Z

.field protected d:Lcom/cbs/app/analytics/Action;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Landroid/support/v7/app/AppCompatActivity;

.field private h:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/cbs/app/view/AbstractAsyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/AbstractAsyncFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->b:Z

    .line 24
    iput-boolean v1, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->c:Z

    .line 25
    iput-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->d:Lcom/cbs/app/analytics/Action;

    .line 26
    iput-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->e:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/AbstractAsyncFragment;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->h:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->c()V

    .line 63
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->h:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b01a3

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->h:Landroid/app/ProgressDialog;

    .line 71
    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->h:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->h:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->h:Landroid/app/ProgressDialog;

    const v1, 0x103001d

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 74
    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->h:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    new-instance v1, Lcom/cbs/app/view/AbstractAsyncFragment$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/AbstractAsyncFragment$1;-><init>(Lcom/cbs/app/view/AbstractAsyncFragment;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 100
    :cond_0
    return-void
.end method

.method public getApplicationContext()Lcom/cbs/app/view/MainApplication;
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 49
    if-eqz v2, :cond_0

    instance-of v2, v2, Lcom/cbs/app/view/MainApplication;

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/MainApplication;

    .line 54
    :cond_0
    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 34
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    iput-object p1, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    .line 35
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 40
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    .line 154
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 147
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->h:Landroid/app/ProgressDialog;

    .line 148
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->d:Lcom/cbs/app/analytics/Action;

    if-eqz v0, :cond_3

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    const-string v1, "pageView"

    const-string v2, "anything"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "ShowTitle"

    iget-object v2, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "showId"

    iget-object v2, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cbscom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string v2, "evar_63"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v2, "prop_63"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->d:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 139
    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 106
    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 107
    iget-boolean v1, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->b:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {v0}, Lcom/cbs/app/view/InterstitialAdManagerV2;->a(Landroid/app/Activity;)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment;->b:Z

    .line 111
    :cond_0
    return-void
.end method
