.class final Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$10;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$10;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->f(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 228
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$10;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->f(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 218
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 223
    return-void
.end method
