.class final Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;Lcom/cbs/app/view/model/syncbak/SyncbakStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

.field final synthetic b:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

.field final synthetic c:Lcom/cbs/app/view/model/Affiliate;

.field final synthetic d:Landroid/widget/Button;

.field final synthetic e:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/syncbak/SyncbakStream;Lcom/cbs/app/view/model/Affiliate;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$2;->e:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    iput-object p2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$2;->a:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iput-object p3, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$2;->b:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    iput-object p4, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$2;->c:Lcom/cbs/app/view/model/Affiliate;

    iput-object p5, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$2;->d:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$2;->e:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$2;->a:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$2;->c:Lcom/cbs/app/view/model/Affiliate;

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;)V

    .line 233
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$2;->d:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    return-void
.end method
