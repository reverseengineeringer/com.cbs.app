.class final Lcom/urbanairship/g$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/g;-><init>(Landroid/content/Context;Lcom/urbanairship/a;Lcom/urbanairship/push/j;Landroid/support/v4/app/NotificationManagerCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/g;


# direct methods
.method constructor <init>(Lcom/urbanairship/g;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/urbanairship/g$1;->a:Lcom/urbanairship/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/urbanairship/g$1;->a:Lcom/urbanairship/g;

    iget-object v0, v0, Lcom/urbanairship/g;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/urbanairship/g$1$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/g$1$1;-><init>(Lcom/urbanairship/g$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method
