.class final Lcom/cbs/app/livetv/fragment/SignInFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/SignInFragment;->b()V
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
    .line 424
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment$3;->a:Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 427
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment$3;->a:Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->d(Lcom/cbs/app/livetv/fragment/SignInFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 428
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment$3;->a:Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->d(Lcom/cbs/app/livetv/fragment/SignInFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 429
    return-void
.end method
