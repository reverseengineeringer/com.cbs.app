.class final Lcom/cbs/app/livetv/fragment/SignInFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 174
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SignInFragment$5;->a:Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignInFragment$5;->a:Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->c(Lcom/cbs/app/livetv/fragment/SignInFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 178
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method
