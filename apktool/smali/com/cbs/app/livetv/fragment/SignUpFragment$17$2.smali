.class final Lcom/cbs/app/livetv/fragment/SignUpFragment$17$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/SignUpFragment$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/SignUpFragment$17;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/SignUpFragment$17;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$17$2;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$17$2;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment$17;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/SignUpFragment$17;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->e(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->requestFocus()Z

    .line 225
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$17$2;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment$17;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/SignUpFragment$17;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->e(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 226
    return-void
.end method
