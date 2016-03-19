.class final Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->d:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    iput-object p2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 149
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 150
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->d:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-virtual {v2}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 151
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->d:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    new-instance v3, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;II)V

    invoke-static {v2, v3}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Lcom/cbs/app/visualon/player/FullScreenButtonListener;)Lcom/cbs/app/visualon/player/FullScreenButtonListener;

    .line 179
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->d:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)Lcom/cbs/app/visualon/player/FullScreenButtonListener;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Lcom/cbs/app/visualon/player/FullScreenButtonListener;)V

    .line 181
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
