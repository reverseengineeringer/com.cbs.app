.class final Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$CommentListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 359
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    .line 360
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->j:Ljava/lang/String;

    .line 361
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->g:Z

    .line 362
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    .line 365
    :try_start_0
    const-string v1, "content"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 369
    :goto_0
    if-eqz v1, :cond_0

    .line 372
    :try_start_1
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 376
    :goto_1
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->j:Ljava/lang/String;

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v2, v2, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 380
    return-void

    .line 367
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    .line 374
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 384
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iput-object v1, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->j:Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 389
    :try_start_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 393
    :goto_0
    if-eqz v0, :cond_0

    .line 396
    :try_start_1
    const-string v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 400
    :goto_1
    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iput-object v0, v5, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->j:Ljava/lang/String;

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v0}, Lcom/cbs/app/service/LiveFyreService;->getLiveFyreToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 405
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iput-boolean v2, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->g:Z

    .line 407
    const-string v0, "Comments Page"

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setFrom(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 414
    :goto_2
    if-eqz v0, :cond_1

    .line 417
    invoke-static {v1}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 418
    invoke-static {v1}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 419
    invoke-static {v3}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 421
    invoke-static {v4}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;)V

    .line 428
    :cond_1
    :goto_3
    return-void

    .line 391
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 398
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 424
    :cond_2
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_2
.end method
