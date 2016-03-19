.class final Lcom/cbs/app/analytics/impl/KochavaService$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/analytics/impl/KochavaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/cbs/app/analytics/impl/KochavaService$a;->a:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/analytics/impl/KochavaService$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cbs/app/analytics/impl/KochavaService$a;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "attributionData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/analytics/impl/KochavaService;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attribution string2 : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/analytics/impl/KochavaService;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Lcom/cbs/app/analytics/impl/KochavaService;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/analytics/impl/KochavaService;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/cbs/app/analytics/impl/KochavaService$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->v(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/cbs/app/analytics/impl/KochavaService$a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/cbs/app/analytics/impl/KochavaService$a$1;

    invoke-direct {v2, p0, v0}, Lcom/cbs/app/analytics/impl/KochavaService$a$1;-><init>(Lcom/cbs/app/analytics/impl/KochavaService$a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/cbs/app/analytics/impl/KochavaService$a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
