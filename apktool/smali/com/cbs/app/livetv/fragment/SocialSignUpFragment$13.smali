.class final Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 264
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$13;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$13;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 269
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$13;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->b(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 270
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$13;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->b(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->performClick()Z

    .line 272
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
