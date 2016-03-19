.class public Lcom/cbs/app/androiddata/model/rest/MyVideoResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/VideoContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/MyVideoResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/VideoContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/MyVideoResponse;->d:Ljava/util/List;

    return-object v0
.end method

.method public setErrors(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/MyVideoResponse;->c:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setIsLoggedIn(Z)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/MyVideoResponse;->a:Z

    .line 24
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/MyVideoResponse;->b:Z

    .line 32
    return-void
.end method

.method public setVideos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/VideoContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/MyVideoResponse;->d:Ljava/util/List;

    .line 48
    return-void
.end method
