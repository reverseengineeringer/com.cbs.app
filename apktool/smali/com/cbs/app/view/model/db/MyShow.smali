.class public Lcom/cbs/app/view/model/db/MyShow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dateAdded:Ljava/util/Date;

.field private showId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/cbs/app/view/model/db/MyShow;->showId:Ljava/lang/Integer;

    .line 16
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/cbs/app/view/model/db/MyShow;->dateAdded:Ljava/util/Date;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 21
    instance-of v0, p1, Lcom/cbs/app/view/model/db/MyShow;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/cbs/app/view/model/db/MyShow;->showId:Ljava/lang/Integer;

    check-cast p1, Lcom/cbs/app/view/model/db/MyShow;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/db/MyShow;->getShowId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 24
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDateAdded()Ljava/util/Date;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/cbs/app/view/model/db/MyShow;->dateAdded:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getShowId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cbs/app/view/model/db/MyShow;->showId:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cbs/app/view/model/db/MyShow;->showId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    return v0
.end method
