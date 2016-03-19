.class public Lcom/cbs/app/androiddata/model/VideoContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/cbs/app/androiddata/model/VideoData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMedTime()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/VideoContainer;->a:J

    return-wide v0
.end method

.method public getVideo()Lcom/cbs/app/androiddata/model/VideoData;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoContainer;->b:Lcom/cbs/app/androiddata/model/VideoData;

    return-object v0
.end method

.method public setMedTime(J)V
    .locals 1

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/VideoContainer;->a:J

    .line 18
    return-void
.end method

.method public setVideo(Lcom/cbs/app/androiddata/model/VideoData;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoContainer;->b:Lcom/cbs/app/androiddata/model/VideoData;

    .line 26
    return-void
.end method
