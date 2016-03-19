.class final Lcom/cbs/app/livetv/fragment/SignInFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/SignInFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/SignInFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/SignInFragment;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment$9;->a:Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment$9;->a:Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->d(Lcom/cbs/app/livetv/fragment/SignInFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 216
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment$9;->a:Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->d(Lcom/cbs/app/livetv/fragment/SignInFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment$9;->a:Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->e(Lcom/cbs/app/livetv/fragment/SignInFragment;)V

    .line 218
    return-void
.end method
