.class final Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 476
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;[Lcom/cbs/app/view/model/ShowVideo;)[Lcom/cbs/app/view/model/ShowVideo;

    .line 478
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    .line 479
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 425
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 426
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/MyCbsEndpointResponse;

    if-eqz v0, :cond_2

    .line 427
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 428
    check-cast p1, Lcom/cbs/app/view/model/rest/MyCbsEndpointResponse;

    .line 429
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/MyCbsEndpointResponse;->getShowVideoArray()[Lcom/cbs/app/view/model/ShowVideo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;[Lcom/cbs/app/view/model/ShowVideo;)[Lcom/cbs/app/view/model/ShowVideo;

    .line 430
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->B(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)[Lcom/cbs/app/view/model/ShowVideo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->B(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)[Lcom/cbs/app/view/model/ShowVideo;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 434
    if-eqz v5, :cond_3

    .line 435
    invoke-virtual {v5}, Lcom/cbs/app/view/model/ShowVideo;->getShowId()Ljava/lang/Integer;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_3

    .line 437
    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v6

    .line 438
    if-eqz v6, :cond_3

    .line 439
    const/4 v0, 0x1

    .line 440
    iget-object v6, v6, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/cbs/app/view/model/ShowVideo;->setShowTitle(Ljava/lang/String;)V

    .line 444
    :goto_1
    if-nez v0, :cond_0

    if-eqz v5, :cond_0

    .line 445
    const-string v0, "z"

    invoke-virtual {v5, v0}, Lcom/cbs/app/view/model/ShowVideo;->setShowTitle(Ljava/lang/String;)V

    .line 432
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->B(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)[Lcom/cbs/app/view/model/ShowVideo;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16$1;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    .line 472
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method
