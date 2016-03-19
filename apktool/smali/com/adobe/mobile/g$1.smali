.class final Lcom/adobe/mobile/g$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/mobile/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/mobile/g;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/g;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/adobe/mobile/g$1;->a:Lcom/adobe/mobile/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 555
    invoke-static {p1}, Lcom/adobe/mobile/g;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/mobile/g;->b(Z)Z

    .line 557
    invoke-static {}, Lcom/adobe/mobile/g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    const-string v0, "Analytics - Network status changed (reachable)"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    invoke-static {}, Lcom/adobe/mobile/g;->e()Lcom/adobe/mobile/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/mobile/g;->a(Z)V

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_0
    const-string v0, "Analytics - Network status changed (unreachable)"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
