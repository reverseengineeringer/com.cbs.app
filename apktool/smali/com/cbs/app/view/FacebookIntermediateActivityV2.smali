.class public Lcom/cbs/app/view/FacebookIntermediateActivityV2;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/cbs/app/service/social/model/FacebookOperation;

.field private c:Lcom/facebook/CallbackManager;

.field private d:Lcom/facebook/share/widget/ShareDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/FacebookIntermediateActivityV2;)Lcom/cbs/app/service/social/model/FacebookOperation;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->b:Lcom/cbs/app/service/social/model/FacebookOperation;

    return-object v0
.end method

.method private a(Lcom/cbs/app/service/social/model/FacebookOperation;)V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->b:Lcom/cbs/app/service/social/model/FacebookOperation;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->b:Lcom/cbs/app/service/social/model/FacebookOperation;

    invoke-virtual {v0}, Lcom/cbs/app/service/social/model/FacebookOperation;->getChoice()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 254
    invoke-virtual {p0}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->finish()V

    .line 260
    :goto_0
    return-void

    .line 1264
    :pswitch_0
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->d:Lcom/facebook/share/widget/ShareDialog;

    .line 1265
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->d:Lcom/facebook/share/widget/ShareDialog;

    iget-object v1, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->c:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/cbs/app/view/FacebookIntermediateActivityV2$2;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/FacebookIntermediateActivityV2$2;-><init>(Lcom/cbs/app/view/FacebookIntermediateActivityV2;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 1288
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/cbs/app/service/social/model/FacebookOperation;->getFacebookLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-virtual {p1}, Lcom/cbs/app/service/social/model/FacebookOperation;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cbs/app/service/social/model/FacebookOperation;->getPictureLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cbs/app/service/social/model/FacebookOperation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 1295
    invoke-static {p0, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Landroid/app/Activity;Lcom/facebook/share/model/ShareContent;)V

    goto :goto_0

    .line 245
    :pswitch_1
    invoke-virtual {p0}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->finish()V

    goto :goto_0

    .line 248
    :pswitch_2
    invoke-virtual {p0}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->finish()V

    goto :goto_0

    .line 251
    :pswitch_3
    invoke-virtual {p0}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->finish()V

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->finish()V

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/cbs/app/view/FacebookIntermediateActivityV2;Lcom/cbs/app/service/social/model/FacebookOperation;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->a(Lcom/cbs/app/service/social/model/FacebookOperation;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 156
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->c:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 178
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    new-instance v1, Lcom/cbs/app/service/social/FacebookServiceImplV2;

    invoke-direct {v1, p0}, Lcom/cbs/app/service/social/FacebookServiceImplV2;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p0}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 66
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->c:Lcom/facebook/CallbackManager;

    .line 81
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v2, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->c:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/cbs/app/view/FacebookIntermediateActivityV2$1;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/FacebookIntermediateActivityV2$1;-><init>(Lcom/cbs/app/view/FacebookIntermediateActivityV2;)V

    invoke-virtual {v0, v2, v3}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 113
    invoke-virtual {p0}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    const-string v2, "pendingOperation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    check-cast v0, Lcom/cbs/app/service/social/model/FacebookOperation;

    iput-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->b:Lcom/cbs/app/service/social/model/FacebookOperation;

    .line 121
    :cond_0
    invoke-interface {v1}, Lcom/cbs/app/service/social/FacebookService;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "public_profile"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "email"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "user_birthday"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->b:Lcom/cbs/app/service/social/model/FacebookOperation;

    invoke-direct {p0, v0}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->a(Lcom/cbs/app/service/social/model/FacebookOperation;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 185
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->a:Z

    .line 149
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->a:Z

    .line 141
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 192
    return-void
.end method
