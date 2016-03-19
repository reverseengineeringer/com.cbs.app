.class public Lcom/cbs/app/view/model/FavoriteShow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x47f7b8c8600205ccL


# instance fields
.field private cbsShowId:J

.field private dateAdded:J

.field private displayOrder:J

.field private id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/cbs/app/view/model/FavoriteShow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/model/FavoriteShow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/cbs/app/view/model/FavoriteShow;

    if-eqz v1, :cond_0

    .line 59
    check-cast p1, Lcom/cbs/app/view/model/FavoriteShow;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "comparing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/cbs/app/view/model/FavoriteShow;->cbsShowId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/FavoriteShow;->getCbsShowId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    iget-wide v2, p0, Lcom/cbs/app/view/model/FavoriteShow;->cbsShowId:J

    invoke-virtual {p1}, Lcom/cbs/app/view/model/FavoriteShow;->getCbsShowId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 66
    :cond_0
    return v0
.end method

.method public getCbsShowId()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/cbs/app/view/model/FavoriteShow;->cbsShowId:J

    return-wide v0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/cbs/app/view/model/FavoriteShow;->dateAdded:J

    return-wide v0
.end method

.method public getDisplayOrder()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/cbs/app/view/model/FavoriteShow;->displayOrder:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/cbs/app/view/model/FavoriteShow;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/cbs/app/view/model/FavoriteShow;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public setCbsShowId(J)V
    .locals 1

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/cbs/app/view/model/FavoriteShow;->cbsShowId:J

    .line 45
    return-void
.end method

.method public setDateAdded(J)V
    .locals 1

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/cbs/app/view/model/FavoriteShow;->dateAdded:J

    .line 53
    return-void
.end method

.method public setDisplayOrder(J)V
    .locals 1

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/cbs/app/view/model/FavoriteShow;->displayOrder:J

    .line 37
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/cbs/app/view/model/FavoriteShow;->id:J

    .line 29
    return-void
.end method
