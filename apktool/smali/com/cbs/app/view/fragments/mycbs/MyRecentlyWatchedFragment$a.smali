.class final Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/db/MyRecentVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/db/MyRecentVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$a;->a:Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p2, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$a;->b:Ljava/util/List;

    .line 364
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 402
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->h:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 8

    .prologue
    .line 368
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->h:Ljava/lang/String;

    .line 369
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    if-eqz v0, :cond_3

    .line 370
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->h:Ljava/lang/String;

    .line 371
    check-cast p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    .line 373
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->getItemList()Ljava/util/ArrayList;

    move-result-object v2

    .line 374
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 375
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 376
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "videoList.size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/db/MyRecentVideo;

    .line 379
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/VideoData;

    .line 380
    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getCid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 381
    sget-object v5, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->h:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "adding: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    sget-object v5, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->h:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "date viewed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getDateViewed()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$a;->a:Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/VideoData;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->i:[Lcom/cbs/app/view/model/VideoData;

    .line 391
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$a;->a:Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$a;->a:Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->i:[Lcom/cbs/app/view/model/VideoData;

    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->a([Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v1

    iput-object v1, v0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->i:[Lcom/cbs/app/view/model/VideoData;

    .line 396
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$a;->a:Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->e()V

    .line 397
    return-void
.end method
