.class final Lcom/urbanairship/b$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/b;


# direct methods
.method constructor <init>(Lcom/urbanairship/b;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/urbanairship/b$1;->a:Lcom/urbanairship/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/urbanairship/b$1;->a:Lcom/urbanairship/b;

    invoke-static {v0}, Lcom/urbanairship/b;->a(Lcom/urbanairship/b;)Lcom/urbanairship/l;

    move-result-object v0

    const-string v1, "com.urbanairship.application.metrics.LAST_OPEN"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/urbanairship/l;->b(Ljava/lang/String;J)V

    .line 60
    return-void
.end method
