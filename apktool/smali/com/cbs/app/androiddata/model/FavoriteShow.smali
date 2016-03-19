.class public Lcom/cbs/app/androiddata/model/FavoriteShow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/cbs/app/androiddata/model/FavoriteShow;

    if-eqz v1, :cond_0

    .line 52
    check-cast p1, Lcom/cbs/app/androiddata/model/FavoriteShow;

    .line 53
    iget-wide v2, p0, Lcom/cbs/app/androiddata/model/FavoriteShow;->c:J

    invoke-virtual {p1}, Lcom/cbs/app/androiddata/model/FavoriteShow;->getCbsShowId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 57
    :cond_0
    return v0
.end method

.method public getCbsShowId()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/FavoriteShow;->c:J

    return-wide v0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/FavoriteShow;->d:J

    return-wide v0
.end method

.method public getDisplayOrder()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/FavoriteShow;->b:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/FavoriteShow;->a:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/FavoriteShow;->a:J

    long-to-int v0, v0

    return v0
.end method

.method public setCbsShowId(J)V
    .locals 1

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/FavoriteShow;->c:J

    .line 38
    return-void
.end method

.method public setDateAdded(J)V
    .locals 1

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/FavoriteShow;->d:J

    .line 46
    return-void
.end method

.method public setDisplayOrder(J)V
    .locals 1

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/FavoriteShow;->b:J

    .line 30
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/FavoriteShow;->a:J

    .line 22
    return-void
.end method
