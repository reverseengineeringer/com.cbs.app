.class final Lcom/cbs/app/visualon/player/CBSPlayer$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/visualon/player/CBSPlayer;->a(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/cbs/app/visualon/player/CBSPlayer$13;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1182
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(Ljava/util/Date;)Ljava/util/Date;

    .line 1183
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1209
    :goto_0
    return-void

    .line 1186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClick m_ibVideoExpand isFullScreen = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aw()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1188
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ax()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->t()V

    goto :goto_0

    .line 1193
    :cond_1
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1195
    invoke-static {v4}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Z)V

    .line 1196
    invoke-static {v4}, Lcom/cbs/app/visualon/player/CBSPlayer;->g(Z)Z

    goto :goto_0

    .line 1200
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSPlayer$13;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_3

    .line 1201
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSPlayer$13;->a:Landroid/content/Context;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 1202
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->i()V

    .line 1205
    :cond_3
    invoke-static {v5}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Z)V

    .line 1206
    invoke-static {v5}, Lcom/cbs/app/visualon/player/CBSPlayer;->g(Z)Z

    goto :goto_0
.end method
