.class final Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment$1;->a:Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment$1;->a:Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment$1;->a:Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->e()V

    .line 72
    :cond_0
    return-void
.end method
