.class final Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$3;
.super Lcom/cbs/app/livetv/widget/NoUnderlineClickableSpan;
.source "SourceFile"


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
    .line 342
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$3;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-direct {p0}, Lcom/cbs/app/livetv/widget/NoUnderlineClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$3;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$3;->a:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    const v2, 0x7f080259

    invoke-virtual {v1, v2}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->a(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;Ljava/lang/String;)V

    .line 346
    return-void
.end method
