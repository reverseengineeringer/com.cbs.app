.class final Lcom/cbs/app/view/SubscriptionActivity$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/SubscriptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/SubscriptionActivity;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/cbs/app/view/SubscriptionActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 430
    iput-object p1, p0, Lcom/cbs/app/view/SubscriptionActivity$a;->a:Lcom/cbs/app/view/SubscriptionActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$a;->b:Landroid/content/Context;

    .line 431
    iput-object p2, p0, Lcom/cbs/app/view/SubscriptionActivity$a;->b:Landroid/content/Context;

    .line 432
    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6

    .prologue
    .line 436
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConsoleMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    .line 438
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$a;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$a;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 440
    const v2, 0x7f0f016d

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 441
    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 442
    check-cast v0, Landroid/widget/LinearLayout;

    .line 443
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 445
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cbs/app/view/SubscriptionActivity$a;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 446
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v4

    sget-object v5, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    invoke-virtual {v4, v5}, Landroid/webkit/ConsoleMessage$MessageLevel;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    iget-object v4, p0, Lcom/cbs/app/view/SubscriptionActivity$a;->a:Lcom/cbs/app/view/SubscriptionActivity;

    invoke-virtual {v4}, Lcom/cbs/app/view/SubscriptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 453
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method
