.class final Lcom/cbs/app/widget/ScheduleGridLayout$2;
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
    .line 355
    iput-object p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iput-object p2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->a:Z

    .line 403
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 404
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 406
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 359
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    .line 361
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 362
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    if-eqz v0, :cond_0

    .line 363
    check-cast p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    .line 364
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->getItemList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    .line 366
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Elements in video list : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v1, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 368
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iput-boolean v3, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->e:Z

    .line 370
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    iput-object v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->o:Lcom/cbs/app/view/model/VideoData;

    .line 371
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v0

    iput-boolean v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->p:Z

    .line 376
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iput-boolean v3, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->a:Z

    .line 378
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-boolean v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-boolean v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->e:Z

    if-eqz v0, :cond_1

    .line 379
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 382
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getEpisodeNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->m:Ljava/lang/String;

    .line 383
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->k:Ljava/lang/String;

    .line 384
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->j:Ljava/lang/String;

    .line 385
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->c(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->n:Ljava/lang/String;

    .line 386
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getSeasonNum()I

    move-result v0

    iput v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->l:I

    .line 387
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->d(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->i:Ljava/lang/String;

    .line 388
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    const-string v1, "Watch Episode"

    iput-object v1, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->f:Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v1, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->o:Lcom/cbs/app/view/model/VideoData;

    iget-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/view/model/VideoData;Landroid/app/Dialog;)V

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->r:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 397
    :cond_3
    return-void

    .line 373
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$2;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iput-boolean v2, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->e:Z

    goto/16 :goto_0
.end method
