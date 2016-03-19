.class final Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->a(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;Lorg/json/JSONObject;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$2;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 254
    :try_start_0
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reply: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$2;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->a(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;)Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$CommentListener2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$2;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->a(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;)Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$CommentListener2;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$CommentListener2;->a(Lorg/json/JSONObject;)V

    .line 262
    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
