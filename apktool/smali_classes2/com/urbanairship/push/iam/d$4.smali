.class final Lcom/urbanairship/push/iam/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/push/iam/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/iam/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/push/iam/d;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/d;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/urbanairship/push/iam/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InAppMessageManager - InAppMessageFragment resumed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->d(Lcom/urbanairship/push/iam/d;)Lcom/urbanairship/push/iam/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->d(Lcom/urbanairship/push/iam/d;)Lcom/urbanairship/push/iam/b;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InAppMessageManager - Dismissing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because it is no longer the current fragment."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {p1, v2}, Lcom/urbanairship/push/iam/b;->a(Z)V

    .line 600
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->e(Lcom/urbanairship/push/iam/d;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->e(Lcom/urbanairship/push/iam/d;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/iam/b;->b()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 595
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InAppMessageManager - Dismissing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because its message is no longer current."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {p1, v2}, Lcom/urbanairship/push/iam/b;->a(Z)V

    goto :goto_0

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v0, p1}, Lcom/urbanairship/push/iam/d;->a(Lcom/urbanairship/push/iam/d;Lcom/urbanairship/push/iam/b;)Lcom/urbanairship/push/iam/b;

    goto :goto_0
.end method

.method public final b(Lcom/urbanairship/push/iam/b;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InAppMessageManager - InAppMessageFragment paused: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 606
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->d(Lcom/urbanairship/push/iam/d;)Lcom/urbanairship/push/iam/b;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/d;->a(Lcom/urbanairship/push/iam/d;Lcom/urbanairship/push/iam/b;)Lcom/urbanairship/push/iam/b;

    .line 611
    invoke-virtual {p1}, Lcom/urbanairship/push/iam/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/urbanairship/push/iam/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InAppMessageManager - InAppMessageFragment\'s activity is finishing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 619
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/d;->a(Lcom/urbanairship/push/iam/d;Z)Z

    goto :goto_0
.end method

.method public final c(Lcom/urbanairship/push/iam/b;)V
    .locals 4

    .prologue
    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InAppMessageManager - InAppMessageFragment finished: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {p1}, Lcom/urbanairship/push/iam/b;->b()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v1}, Lcom/urbanairship/push/iam/d;->f(Lcom/urbanairship/push/iam/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 630
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/d;->d()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    iget-object v2, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/iam/d;->a(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 633
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v1}, Lcom/urbanairship/push/iam/d;->e(Lcom/urbanairship/push/iam/d;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->g(Lcom/urbanairship/push/iam/d;)Lcom/urbanairship/push/iam/InAppMessage;

    .line 638
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->b(Lcom/urbanairship/push/iam/d;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/d;->a(Lcom/urbanairship/push/iam/d;Z)Z

    .line 640
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->i(Lcom/urbanairship/push/iam/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v1}, Lcom/urbanairship/push/iam/d;->h(Lcom/urbanairship/push/iam/d;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 641
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->i(Lcom/urbanairship/push/iam/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v1}, Lcom/urbanairship/push/iam/d;->h(Lcom/urbanairship/push/iam/d;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/push/iam/d$4;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v2}, Lcom/urbanairship/push/iam/d;->j(Lcom/urbanairship/push/iam/d;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 644
    :cond_1
    return-void

    .line 633
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
