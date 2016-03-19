.class public Lcom/cbs/app/view/model/db/MyRecentVideo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyRecentVideo"


# instance fields
.field private cid:Ljava/lang/String;

.field private dateViewed:Ljava/util/Date;

.field private medTime:J

.field private showId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;JLjava/util/Date;)V
    .locals 5

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->medTime:J

    .line 24
    iput-object p1, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->showId:Ljava/lang/Integer;

    .line 25
    iput-object p2, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->cid:Ljava/lang/String;

    .line 26
    iput-wide p3, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->medTime:J

    .line 27
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->dateViewed:Ljava/util/Date;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->medTime:J

    .line 17
    iput-object p1, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->showId:Ljava/lang/Integer;

    .line 18
    iput-object p2, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->cid:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->dateViewed:Ljava/util/Date;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/cbs/app/view/model/db/MyRecentVideo;

    if-eqz v1, :cond_0

    .line 52
    check-cast p1, Lcom/cbs/app/view/model/db/MyRecentVideo;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "comparing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->cid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 58
    :cond_0
    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getDateViewed()Ljava/util/Date;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->dateViewed:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getMedTime()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->medTime:J

    return-wide v0
.end method

.method public getShowId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->showId:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->cid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/model/db/MyRecentVideo;->cid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
