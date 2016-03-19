.class final Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$1;
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
    .line 230
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 236
    :try_start_0
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "like: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->a(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;)Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$CommentListener2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->a(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;)Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$CommentListener2;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$CommentListener2;->b(Lorg/json/JSONObject;)V

    .line 244
    :cond_0
    return-void

    .line 239
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
