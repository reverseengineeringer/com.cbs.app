.class final Lcom/urbanairship/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/i;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/i;


# direct methods
.method constructor <init>(Lcom/urbanairship/i;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/urbanairship/i$1;->a:Lcom/urbanairship/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/urbanairship/i$1;->a:Lcom/urbanairship/i;

    invoke-virtual {v0, p1}, Lcom/urbanairship/i;->c(Landroid/app/Activity;)V

    .line 52
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/urbanairship/i$1;->a:Lcom/urbanairship/i;

    invoke-virtual {v0, p1}, Lcom/urbanairship/i;->d(Landroid/app/Activity;)V

    .line 57
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/urbanairship/i$1;->a:Lcom/urbanairship/i;

    invoke-virtual {v0, p1}, Lcom/urbanairship/i;->b(Landroid/app/Activity;)V

    .line 71
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/urbanairship/i$1;->a:Lcom/urbanairship/i;

    invoke-virtual {v0, p1}, Lcom/urbanairship/i;->a(Landroid/app/Activity;)V

    .line 76
    return-void
.end method
