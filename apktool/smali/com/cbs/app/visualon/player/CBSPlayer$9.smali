.class final Lcom/cbs/app/visualon/player/CBSPlayer$9;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/visualon/player/CBSPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 675
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 679
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->an()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 680
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->l()V

    .line 681
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->m()V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 687
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ao()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 689
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->p()V

    goto :goto_0

    .line 690
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ap()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 692
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->r()V

    goto :goto_0

    .line 693
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aq()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 695
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->P()V

    goto :goto_0

    .line 696
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->L()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 698
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->t()V

    .line 699
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 700
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ag()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 701
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aa()Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/util/Date;)Ljava/util/Date;

    goto :goto_0

    .line 706
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ad()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 707
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ar()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 709
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->as()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 711
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->am()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 712
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->P()V

    goto :goto_0
.end method
