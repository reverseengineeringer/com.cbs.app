.class final Lcom/flurry/sdk/ac$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ac;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ac;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flurry/sdk/ac$1;->a:Lcom/flurry/sdk/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/flurry/sdk/ab$a;)V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/flurry/sdk/ab;

    invoke-direct {v0}, Lcom/flurry/sdk/ab;-><init>()V

    .line 105
    iput-object p0, v0, Lcom/flurry/sdk/ab;->a:Landroid/app/Activity;

    .line 106
    iput-object p1, v0, Lcom/flurry/sdk/ab;->b:Lcom/flurry/sdk/ab$a;

    .line 1025
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Lcom/flurry/sdk/ai;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ai;->a(Lcom/flurry/sdk/ag;)V

    .line 108
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 63
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ac;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityCreated for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/flurry/sdk/ab$a;->a:Lcom/flurry/sdk/ab$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/ac$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/ab$a;)V

    .line 65
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 99
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ac;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityDestroyed for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/flurry/sdk/ab$a;->b:Lcom/flurry/sdk/ab$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/ac$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/ab$a;)V

    .line 101
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 81
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ac;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityPaused for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/flurry/sdk/ab$a;->c:Lcom/flurry/sdk/ab$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/ac$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/ab$a;)V

    .line 83
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 75
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ac;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResumed for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/flurry/sdk/ab$a;->d:Lcom/flurry/sdk/ab$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/ac$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/ab$a;)V

    .line 77
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 93
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ac;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivitySaveInstanceState for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/flurry/sdk/ab$a;->g:Lcom/flurry/sdk/ab$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/ac$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/ab$a;)V

    .line 95
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 69
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ac;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityStarted for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/flurry/sdk/ab$a;->e:Lcom/flurry/sdk/ab$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/ac$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/ab$a;)V

    .line 71
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ac;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityStopped for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/flurry/sdk/ab$a;->f:Lcom/flurry/sdk/ab$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/ac$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/ab$a;)V

    .line 89
    return-void
.end method
