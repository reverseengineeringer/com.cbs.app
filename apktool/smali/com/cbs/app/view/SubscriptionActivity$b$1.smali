.class final Lcom/cbs/app/view/SubscriptionActivity$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/settings/DoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SubscriptionActivity$b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cbs/app/view/SubscriptionActivity$b;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SubscriptionActivity$b;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/cbs/app/view/SubscriptionActivity$b$1;->c:Lcom/cbs/app/view/SubscriptionActivity$b;

    iput-object p2, p0, Lcom/cbs/app/view/SubscriptionActivity$b$1;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/cbs/app/view/SubscriptionActivity$b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 498
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "urlObj: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/SubscriptionActivity$b$1;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b$1;->c:Lcom/cbs/app/view/SubscriptionActivity$b;

    invoke-static {v0}, Lcom/cbs/app/view/SubscriptionActivity$b;->a(Lcom/cbs/app/view/SubscriptionActivity$b;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 500
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b$1;->b:Ljava/lang/String;

    const-string v1, "demoContentId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 503
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b$1;->a:Landroid/net/Uri;

    const-string v1, "demoContentId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    new-instance v1, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 505
    if-eqz v0, :cond_0

    .line 506
    iget-object v2, p0, Lcom/cbs/app/view/SubscriptionActivity$b$1;->c:Lcom/cbs/app/view/SubscriptionActivity$b;

    invoke-static {v2}, Lcom/cbs/app/view/SubscriptionActivity$b;->a(Lcom/cbs/app/view/SubscriptionActivity$b;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/cbs/app/view/SubscriptionActivity$b$1$1;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/SubscriptionActivity$b$1$1;-><init>(Lcom/cbs/app/view/SubscriptionActivity$b$1;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/cbs/app/service/ShowService;->g(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b$1;->c:Lcom/cbs/app/view/SubscriptionActivity$b;

    invoke-static {v0}, Lcom/cbs/app/view/SubscriptionActivity$b;->a(Lcom/cbs/app/view/SubscriptionActivity$b;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b$1;->c:Lcom/cbs/app/view/SubscriptionActivity$b;

    invoke-static {v0}, Lcom/cbs/app/view/SubscriptionActivity$b;->a(Lcom/cbs/app/view/SubscriptionActivity$b;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 522
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 523
    const-string v2, "url"

    iget-object v3, p0, Lcom/cbs/app/view/SubscriptionActivity$b$1;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 525
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
