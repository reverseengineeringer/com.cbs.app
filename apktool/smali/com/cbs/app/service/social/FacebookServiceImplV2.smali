.class public Lcom/cbs/app/service/social/FacebookServiceImplV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/service/social/FacebookService;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/cbs/app/service/social/FacebookServiceImplV2;->a:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private a(Lcom/cbs/app/service/social/model/FacebookOperation;)V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cbs/app/service/social/FacebookServiceImplV2;->a:Landroid/content/Context;

    const-class v2, Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    const-string v1, "pendingOperation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/cbs/app/service/social/FacebookServiceImplV2;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 118
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 119
    return-void
.end method

.method public final a(Lcom/cbs/app/view/model/AlbumPhoto;)V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/cbs/app/service/social/model/FacebookOperation;

    invoke-direct {v0}, Lcom/cbs/app/service/social/model/FacebookOperation;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/cbs/app/view/model/AlbumPhoto;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/model/FacebookOperation;->setName(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/cbs/app/view/model/AlbumPhoto;->getPhotoCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/model/FacebookOperation;->setDescription(Ljava/lang/String;)V

    .line 70
    const-string v1, "From CBS Android APP."

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/model/FacebookOperation;->setCaption(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/cbs/app/view/model/AlbumPhoto;->getFilepathThumb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/model/FacebookOperation;->setPictureLink(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lcom/cbs/app/view/model/AlbumPhoto;->getFilepath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/model/FacebookOperation;->setFacebookLink(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, v0}, Lcom/cbs/app/service/social/FacebookServiceImplV2;->a(Lcom/cbs/app/service/social/model/FacebookOperation;)V

    .line 74
    return-void
.end method

.method public final a(Lcom/cbs/app/view/model/Show;)V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lcom/cbs/app/service/social/model/FacebookOperation;

    invoke-direct {v0}, Lcom/cbs/app/service/social/model/FacebookOperation;-><init>()V

    .line 56
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/model/FacebookOperation;->setName(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Show;->getAbout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/model/FacebookOperation;->setDescription(Ljava/lang/String;)V

    .line 58
    const-string v1, "From CBS Android APP."

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/model/FacebookOperation;->setCaption(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Show;->getFilepathShowThumbnail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/model/FacebookOperation;->setPictureLink(Ljava/lang/String;)V

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show link "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Show;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Show;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/model/FacebookOperation;->setFacebookLink(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, v0}, Lcom/cbs/app/service/social/FacebookServiceImplV2;->a(Lcom/cbs/app/service/social/model/FacebookOperation;)V

    .line 63
    return-void
.end method

.method public final a(Lcom/cbs/app/view/model/VideoData;)V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/cbs/app/service/social/model/FacebookOperation;

    invoke-direct {v0}, Lcom/cbs/app/service/social/model/FacebookOperation;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/model/FacebookOperation;->setName(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/model/FacebookOperation;->setDescription(Ljava/lang/String;)V

    .line 44
    const-string v1, "From CBS Android APP."

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/model/FacebookOperation;->setCaption(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/model/FacebookOperation;->setPictureLink(Ljava/lang/String;)V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cbs/app/service/social/FacebookServiceImplV2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/model/FacebookOperation;->setFacebookLink(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, v0}, Lcom/cbs/app/service/social/FacebookServiceImplV2;->a(Lcom/cbs/app/service/social/model/FacebookOperation;)V

    .line 51
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cbs/app/service/social/FacebookServiceImplV2;->a(Lcom/cbs/app/service/social/model/FacebookOperation;)V

    .line 124
    return-void
.end method
