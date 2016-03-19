.class final Lcom/cbs/app/livetv/fragment/SignUpFragment$9;
.super Lcom/cbs/app/livetv/widget/NoUnderlineClickableSpan;
.source "SourceFile"


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
    .line 421
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$9;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-direct {p0}, Lcom/cbs/app/livetv/widget/NoUnderlineClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$9;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SignUpFragment$9;->a:Lcom/cbs/app/livetv/fragment/SignUpFragment;

    const v2, 0x7f0801e3

    invoke-virtual {v1, v2}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->a(Lcom/cbs/app/livetv/fragment/SignUpFragment;Ljava/lang/String;)V

    .line 425
    return-void
.end method
