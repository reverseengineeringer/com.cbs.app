.class public Lcom/cbs/app/androiddata/model/rest/NextEpisodeResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/cbs/app/androiddata/model/VideoData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextVideo()Lcom/cbs/app/androiddata/model/VideoData;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/NextEpisodeResponse;->b:Lcom/cbs/app/androiddata/model/VideoData;

    return-object v0
.end method

.method public setNextVideo(Lcom/cbs/app/androiddata/model/VideoData;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/NextEpisodeResponse;->b:Lcom/cbs/app/androiddata/model/VideoData;

    .line 29
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/NextEpisodeResponse;->a:Z

    .line 21
    return-void
.end method
