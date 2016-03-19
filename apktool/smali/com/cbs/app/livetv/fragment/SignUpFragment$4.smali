.class final Lcom/cbs/app/livetv/fragment/SignUpFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/SignUpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/SignUpFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$4;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$4;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->l(Lcom/cbs/app/livetv/fragment/SignUpFragment;)V

    .line 339
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$4;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->b(Lcom/cbs/app/livetv/fragment/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->performClick()Z

    .line 341
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
