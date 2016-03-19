.class final Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$3;
.super Lcom/cbs/app/livetv/widget/NoUnderlineClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$3;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-direct {p0}, Lcom/cbs/app/livetv/widget/NoUnderlineClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$3;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$3;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x451

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$3;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    const v3, 0x7f080259

    invoke-virtual {v2, v3}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 273
    :cond_0
    return-void
.end method
