.class final Lcom/cbs/app/view/fragments/settings/RateFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/RateFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/cbs/app/view/fragments/settings/RateFragment$1;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/RateFragment$1;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/RateFragment$1$1;->b:Lcom/cbs/app/view/fragments/settings/RateFragment$1;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/RateFragment$1$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/RateFragment$1$1;->b:Lcom/cbs/app/view/fragments/settings/RateFragment$1;

    iget-object v2, v2, Lcom/cbs/app/view/fragments/settings/RateFragment$1;->a:Lcom/cbs/app/view/fragments/settings/RateFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/RateFragment;->a(Lcom/cbs/app/view/fragments/settings/RateFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 52
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/RateFragment$1$1;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
