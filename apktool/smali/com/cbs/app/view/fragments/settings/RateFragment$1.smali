.class final Lcom/cbs/app/view/fragments/settings/RateFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/RateFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/RateFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/RateFragment;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/RateFragment$1;->a:Lcom/cbs/app/view/fragments/settings/RateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/cbs/app/view/fragments/settings/RateFragment;->a:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/RateFragment$1;->a:Lcom/cbs/app/view/fragments/settings/RateFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/RateFragment;->a(Lcom/cbs/app/view/fragments/settings/RateFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/RateFragment$1;->a:Lcom/cbs/app/view/fragments/settings/RateFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/RateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/cbs/app/view/fragments/settings/RateFragment$1$1;

    invoke-direct {v1, p0, v0}, Lcom/cbs/app/view/fragments/settings/RateFragment$1$1;-><init>(Lcom/cbs/app/view/fragments/settings/RateFragment$1;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    :cond_0
    return-void
.end method
