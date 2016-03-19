.class final Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$2;
.super Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    invoke-direct {p0}, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->e(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    move-result-object v0

    const/16 v1, 0x456

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    invoke-static {v2}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->d(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 169
    return-void
.end method
