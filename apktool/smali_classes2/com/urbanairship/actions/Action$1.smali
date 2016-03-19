.class Lcom/urbanairship/actions/Action$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/actions/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/actions/a$a;


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 152
    iget-object v1, p0, Lcom/urbanairship/actions/Action$1;->a:Lcom/urbanairship/actions/a$a;

    const-string v0, "com.urbanairship.actions.actionactivity.RESULT_INTENT_EXTRA"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, p1, v0}, Lcom/urbanairship/actions/a$a;->a(Lcom/urbanairship/actions/a$a;ILandroid/content/Intent;)V

    .line 153
    iget-object v1, p0, Lcom/urbanairship/actions/Action$1;->a:Lcom/urbanairship/actions/a$a;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/actions/Action$1;->a:Lcom/urbanairship/actions/a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 155
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
