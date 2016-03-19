.class final Lcom/cbs/app/view/fragments/show/videos/VideosFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/videos/VideosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 385
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->d()V

    .line 387
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    .line 355
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    if-eqz v0, :cond_0

    .line 357
    check-cast p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    .line 358
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "videodata sizeM: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    .line 362
    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getSeasonNum()I

    move-result v2

    .line 364
    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 365
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->H(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 366
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    .line 367
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    if-gez v2, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->setSelection(I)V

    .line 372
    :goto_1
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->a(Lcom/cbs/app/view/model/VideoData;)V

    .line 381
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 367
    goto :goto_0

    .line 369
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->H(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v3, 0x457

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->setSelection(I)V

    goto :goto_1

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->I(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getApplicationContext()Lcom/cbs/app/view/MainApplication;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;Landroid/content/Context;)V

    goto :goto_2
.end method
