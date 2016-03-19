.class final Lcom/cbs/app/view/AbstractAsyncFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/AbstractAsyncFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/AbstractAsyncFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/AbstractAsyncFragment;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cbs/app/view/AbstractAsyncFragment$1;->a:Lcom/cbs/app/view/AbstractAsyncFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment$1;->a:Lcom/cbs/app/view/AbstractAsyncFragment;

    invoke-static {v0}, Lcom/cbs/app/view/AbstractAsyncFragment;->a(Lcom/cbs/app/view/AbstractAsyncFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment$1;->a:Lcom/cbs/app/view/AbstractAsyncFragment;

    invoke-static {v0}, Lcom/cbs/app/view/AbstractAsyncFragment;->a(Lcom/cbs/app/view/AbstractAsyncFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment$1;->a:Lcom/cbs/app/view/AbstractAsyncFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/AbstractAsyncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment$1;->a:Lcom/cbs/app/view/AbstractAsyncFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/AbstractAsyncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/cbs/app/view/AbstractAsyncFragment$1;->a:Lcom/cbs/app/view/AbstractAsyncFragment;

    invoke-static {v0}, Lcom/cbs/app/view/AbstractAsyncFragment;->a(Lcom/cbs/app/view/AbstractAsyncFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 87
    :cond_0
    return-void
.end method
