.class final Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;)Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->e()V

    .line 89
    :cond_0
    return-void
.end method
