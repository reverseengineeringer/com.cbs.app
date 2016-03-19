.class final Lcom/urbanairship/analytics/c$1;
.super Lcom/urbanairship/analytics/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/c;-><init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/a;Lcom/urbanairship/analytics/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/urbanairship/analytics/c;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/c;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/urbanairship/analytics/c$1;->b:Lcom/urbanairship/analytics/c;

    iput-object p2, p0, Lcom/urbanairship/analytics/c$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/urbanairship/analytics/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/urbanairship/analytics/c$1;->b:Lcom/urbanairship/analytics/c;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/c;->e()V

    .line 116
    iget-object v0, p0, Lcom/urbanairship/analytics/c$1;->b:Lcom/urbanairship/analytics/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/c;Z)Z

    .line 119
    iget-object v0, p0, Lcom/urbanairship/analytics/c$1;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.analytics.APP_FOREGROUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 122
    iget-object v0, p0, Lcom/urbanairship/analytics/c$1;->b:Lcom/urbanairship/analytics/c;

    new-instance v1, Lcom/urbanairship/analytics/f;

    invoke-direct {v1, p1, p2}, Lcom/urbanairship/analytics/f;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    .line 123
    return-void
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/urbanairship/analytics/c$1;->b:Lcom/urbanairship/analytics/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/c;Z)Z

    .line 128
    iget-object v0, p0, Lcom/urbanairship/analytics/c$1;->b:Lcom/urbanairship/analytics/c;

    new-instance v1, Lcom/urbanairship/analytics/e;

    invoke-direct {v1, p1, p2}, Lcom/urbanairship/analytics/e;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    .line 131
    iget-object v0, p0, Lcom/urbanairship/analytics/c$1;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.analytics.APP_BACKGROUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 134
    iget-object v0, p0, Lcom/urbanairship/analytics/c$1;->b:Lcom/urbanairship/analytics/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/c;->a(Ljava/lang/String;)V

    .line 135
    return-void
.end method
