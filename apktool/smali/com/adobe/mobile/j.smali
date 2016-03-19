.class public final Lcom/adobe/mobile/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/mobile/j$a;
    }
.end annotation


# direct methods
.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/adobe/mobile/j$3;

    invoke-direct {v1}, Lcom/adobe/mobile/j$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 108
    invoke-static {}, Lcom/adobe/mobile/am;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 111
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v1, "Analytics - Unable to get UserIdentifier (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Lcom/adobe/mobile/am;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "Analytics - Method collectLifecycleData is not available for Wearable"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-static {}, Lcom/adobe/mobile/am;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/mobile/j$4;

    invoke-direct {v1, p0}, Lcom/adobe/mobile/j$4;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/adobe/mobile/j$a;)V
    .locals 2

    .prologue
    .line 56
    invoke-static {p0}, Lcom/adobe/mobile/am;->a(Landroid/content/Context;)V

    .line 1134
    invoke-static {p1}, Lcom/adobe/mobile/am;->a(Lcom/adobe/mobile/j$a;)V

    .line 58
    sget-object v0, Lcom/adobe/mobile/j$a;->b:Lcom/adobe/mobile/j$a;

    if-ne p1, v0, :cond_0

    .line 59
    invoke-static {}, Lcom/adobe/mobile/am;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/mobile/j$1;

    invoke-direct {v1}, Lcom/adobe/mobile/j$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 65
    :cond_0
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Lcom/adobe/mobile/am;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "Analytics - Method pauseCollectingLifecycleData is not available for Wearable"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {}, Lcom/adobe/mobile/n;->h()V

    .line 213
    invoke-static {}, Lcom/adobe/mobile/am;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/mobile/j$2;

    invoke-direct {v1}, Lcom/adobe/mobile/j$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
