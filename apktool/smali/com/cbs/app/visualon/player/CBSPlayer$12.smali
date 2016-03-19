.class final Lcom/cbs/app/visualon/player/CBSPlayer$12;
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
    .line 1142
    iput-object p1, p0, Lcom/cbs/app/visualon/player/CBSPlayer$12;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1146
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(Ljava/util/Date;)Ljava/util/Date;

    .line 1147
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1169
    :goto_0
    return-void

    .line 1151
    :cond_0
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->au()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1154
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->av()Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1155
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSPlayer$12;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 1157
    :cond_1
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->g()V

    goto :goto_0

    .line 1162
    :cond_2
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->av()Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1163
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSPlayer$12;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 1165
    :cond_3
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->g()V

    goto :goto_0
.end method
