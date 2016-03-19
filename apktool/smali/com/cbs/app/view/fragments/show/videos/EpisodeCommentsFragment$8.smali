.class final Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;
.super Lcom/c/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;Z)V
    .locals 1

    .prologue
    .line 478
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->a:Z

    invoke-direct {p0}, Lcom/c/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 549
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure4:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a(Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 544
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    .line 545
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0, p2}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 539
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure2:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " obj:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 540
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    const-string v1, "Unknown failure."

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a(Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 523
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure1: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 524
    const/4 v1, 0x0

    .line 525
    if-eqz p2, :cond_1

    .line 527
    :try_start_0
    const-string v0, "msg"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 532
    :goto_0
    if-nez v0, :cond_0

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "There was a problem "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "liking"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " this content. Please try again later."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a(Ljava/lang/String;)V

    .line 536
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 533
    :cond_2
    const-string v0, "unliking"

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 480
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 481
    if-eqz p1, :cond_0

    .line 482
    const/4 v1, 0x0

    .line 484
    :try_start_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 488
    :goto_0
    if-eqz v1, :cond_0

    .line 491
    :try_start_1
    const-string v0, "authors"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 492
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v2, v2, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v2, v0}, Lcom/cbs/app/service/LiveFyreService;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 498
    :goto_1
    :try_start_2
    const-string v0, "messages"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 499
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 500
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    .line 501
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 502
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v3, v3, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v3, v2}, Lcom/cbs/app/service/LiveFyreService;->b(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 486
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 494
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 505
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 511
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8$1;

    invoke-direct {v1, p0, v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8$1;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 519
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v0}, Lcom/cbs/app/service/LiveFyreService;->a()V

    .line 520
    return-void
.end method
