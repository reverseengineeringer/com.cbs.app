.class final Lcom/cbs/app/widget/ScheduleGridLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/widget/ScheduleGridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/cbs/app/widget/ScheduleGridLayout;


# direct methods
.method constructor <init>(Lcom/cbs/app/widget/ScheduleGridLayout;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iput-object p2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->c:Z

    .line 463
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 464
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 414
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iput-boolean v2, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->c:Z

    .line 416
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 417
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    if-eqz v0, :cond_0

    .line 418
    check-cast p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    .line 419
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 422
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 423
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iput-boolean v3, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->d:Z

    .line 424
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-virtual {v1, v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->setClipVideos(Ljava/util/ArrayList;)V

    .line 429
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iput-boolean v3, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->c:Z

    .line 431
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-boolean v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-boolean v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-boolean v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-boolean v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->e:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-boolean v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->c:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-boolean v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->d:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-boolean v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->a:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-boolean v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->e:Z

    if-nez v0, :cond_8

    .line 433
    :cond_2
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->e(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->e(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 435
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->e(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->k:Ljava/lang/String;

    .line 436
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->e(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->j:Ljava/lang/String;

    .line 437
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->e(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getSeasonNum()I

    move-result v0

    iput v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->l:I

    .line 438
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->e(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getEpisodeNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->m:Ljava/lang/String;

    .line 439
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->e(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->get_airDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->n:Ljava/lang/String;

    .line 440
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->e(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->d(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->i:Ljava/lang/String;

    .line 441
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->e(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v0

    iput-boolean v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->p:Z

    .line 442
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    const-string v1, "Watch clip"

    iput-object v1, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->f:Ljava/lang/String;

    .line 444
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->e(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    iget-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->a:Landroid/app/Dialog;

    invoke-virtual {v1, v0, v2}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/view/model/VideoData;Landroid/app/Dialog;)V

    .line 454
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 455
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 456
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->r:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    .line 457
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 458
    :cond_5
    return-void

    .line 426
    :cond_6
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iput-boolean v2, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->d:Z

    goto/16 :goto_0

    .line 446
    :cond_7
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->a:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Landroid/app/Dialog;)V

    goto :goto_1

    .line 449
    :cond_8
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-boolean v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-boolean v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-boolean v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-boolean v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->a:Z

    if-eqz v0, :cond_3

    .line 450
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$3;->a:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Landroid/app/Dialog;)V

    goto :goto_1
.end method
