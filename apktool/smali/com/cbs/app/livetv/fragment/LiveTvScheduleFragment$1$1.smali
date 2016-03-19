.class final Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/visualon/player/FullScreenButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;II)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;

    iput p2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->a:I

    iput p3, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/cbs/app/visualon/player/PlayerRect;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->d:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)Lcom/cbs/app/visualon/player/PlayerRect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    iget v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->a:I

    iget v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->b:I

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(II)Lcom/cbs/app/visualon/player/PlayerRect;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->d:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)Lcom/cbs/app/visualon/player/PlayerRect;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 156
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->d:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Z)V

    .line 159
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->d:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;

    iget-object v1, v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Landroid/view/View;)V

    .line 160
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->d:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Z)V

    .line 166
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->d:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;

    iget-object v1, v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->d:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;I)V

    .line 167
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->d:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;

    iget-object v1, v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$1;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Landroid/view/View;)V

    .line 168
    return-void
.end method
