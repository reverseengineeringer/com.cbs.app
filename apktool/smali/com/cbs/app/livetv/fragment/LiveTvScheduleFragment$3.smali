.class final Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$3;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    iput-object p2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    .prologue
    .line 284
    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$3;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 286
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$3;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$3;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$3;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(II)Lcom/cbs/app/visualon/player/PlayerRect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Lcom/cbs/app/visualon/player/PlayerRect;)Lcom/cbs/app/visualon/player/PlayerRect;

    .line 287
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$3;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)Lcom/cbs/app/visualon/player/PlayerRect;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Lcom/cbs/app/visualon/player/PlayerRect;)V

    .line 289
    :cond_1
    return-void
.end method
