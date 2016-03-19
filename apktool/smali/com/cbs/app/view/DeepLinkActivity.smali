.class public Lcom/cbs/app/view/DeepLinkActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/cbs/app/view/DeepLinkActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/DeepLinkActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 37
    invoke-virtual {p0}, Lcom/cbs/app/view/DeepLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 38
    const-string v1, "mustfinish"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 39
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/cbs/app/view/DeepLinkActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/cbs/app/view/DeepLinkActivity;->finish()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    invoke-virtual {p0}, Lcom/cbs/app/view/DeepLinkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/cbs/app/view/DeepLinkActivity;->finish()V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/cbs/app/view/DeepLinkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/cbs/app/view/DeepLinkActivity;->finish()V

    goto :goto_0

    .line 55
    :cond_3
    sput-boolean v3, Lcom/cbs/app/GlobalConstants;->b:Z

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cbs/app/view/SplashActivity2;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const-string v2, "url"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v0, "isdeeplink"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    const/high16 v0, 0x10000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v1}, Lcom/cbs/app/view/DeepLinkActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/cbs/app/view/DeepLinkActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/cbs/app/view/DeepLinkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/cbs/app/view/DeepLinkActivity;->finish()V

    .line 70
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-direct {p0}, Lcom/cbs/app/view/DeepLinkActivity;->a()V

    .line 26
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 32
    invoke-direct {p0}, Lcom/cbs/app/view/DeepLinkActivity;->a()V

    .line 33
    return-void
.end method
