.class final Lcom/cbs/app/view/fragments/show/LiveFeedFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$2;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$2;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->f(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$2;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 302
    return-void
.end method
