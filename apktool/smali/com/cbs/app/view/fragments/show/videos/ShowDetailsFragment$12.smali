.class final Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$12;->b:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$12;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 558
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$12;->b:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    const-string v1, "launchUrl"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$12;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$12;->b:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 561
    return-void
.end method
