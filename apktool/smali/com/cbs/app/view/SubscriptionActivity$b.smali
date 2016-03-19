.class final Lcom/cbs/app/view/SubscriptionActivity$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/SubscriptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Lcom/cbs/app/view/SubscriptionActivity;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/cbs/app/view/SubscriptionActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 463
    iput-object p1, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->c:Lcom/cbs/app/view/SubscriptionActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 459
    iput-boolean v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->a:Z

    .line 460
    iput-boolean v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->b:Z

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->d:Landroid/content/Context;

    .line 464
    iput-object p2, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->d:Landroid/content/Context;

    .line 465
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/SubscriptionActivity$b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 617
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->c:Lcom/cbs/app/view/SubscriptionActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/SubscriptionActivity;->b:Z

    .line 619
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 621
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 596
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 597
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 599
    const v0, 0x7f0f0167

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 600
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 601
    check-cast v0, Landroid/widget/EditText;

    .line 602
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->c:Lcom/cbs/app/view/SubscriptionActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cbs/app/view/SubscriptionActivity;->b:Z

    .line 606
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 625
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " descr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearSslPreferences()V

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->a:Z

    .line 629
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .prologue
    .line 633
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 634
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedSslError:  errorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->a:Z

    .line 636
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 471
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 472
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 475
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 476
    iput-boolean v5, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->a:Z

    .line 478
    iget-boolean v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->b:Z

    if-nez v0, :cond_2

    .line 479
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 480
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cbs-svod"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "done"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 481
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CBS_COM"

    invoke-static {v0, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    if-eqz v0, :cond_3

    .line 487
    sget-object v2, Lcom/cbs/app/view/SubscriptionActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 490
    new-instance v0, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 491
    iget-object v2, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->d:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/cbs/app/service/AuthService;->b(Landroid/content/Context;)V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->d:Landroid/content/Context;

    new-instance v2, Lcom/cbs/app/view/SubscriptionActivity$b$1;

    invoke-direct {v2, p0, v1, p2}, Lcom/cbs/app/view/SubscriptionActivity$b$1;-><init>(Lcom/cbs/app/view/SubscriptionActivity$b;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-static {v0, v5, v2, v7, v7}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;ZLcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_1
    :goto_0
    iput-boolean v6, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->b:Z

    .line 562
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Returning value : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 588
    :cond_2
    :goto_1
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "**** retVal: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 590
    iget-boolean v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->b:Z

    return v0

    .line 533
    :cond_3
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 534
    const-string v0, "demoContentId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 535
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 536
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 537
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 538
    const-string v3, "url"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 540
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 542
    :cond_4
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 543
    const-string v0, "demoContentId"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    new-instance v1, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 545
    if-eqz v0, :cond_1

    .line 546
    iget-object v2, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->d:Landroid/content/Context;

    new-instance v3, Lcom/cbs/app/view/SubscriptionActivity$b$2;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/SubscriptionActivity$b$2;-><init>(Lcom/cbs/app/view/SubscriptionActivity$b;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/cbs/app/service/ShowService;->g(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto :goto_0

    .line 563
    :cond_5
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cbs-svod"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 564
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 565
    const-string v0, "url"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 567
    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 568
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 580
    :cond_6
    :goto_2
    iput-boolean v6, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->b:Z

    goto/16 :goto_1

    .line 570
    :cond_7
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 573
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 574
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 575
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 576
    const-string v2, "url"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 578
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2
.end method
