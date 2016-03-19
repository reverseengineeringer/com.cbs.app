.class final Lcom/urbanairship/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/g;->a()V
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
    .line 136
    iput-object p1, p0, Lcom/urbanairship/g$2;->a:Lcom/urbanairship/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/urbanairship/g$2;->a:Lcom/urbanairship/g;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/urbanairship/g$c;

    iget-object v2, p0, Lcom/urbanairship/g$2;->a:Lcom/urbanairship/g;

    invoke-direct {v0, v2}, Lcom/urbanairship/g$c;-><init>(Lcom/urbanairship/g;)V

    :goto_0
    invoke-static {v1, v0}, Lcom/urbanairship/g;->a(Lcom/urbanairship/g;Lcom/urbanairship/g$a;)Lcom/urbanairship/g$a;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    const-string v1, "com.urbanairship.analytics.APP_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/urbanairship/g$2;->a:Lcom/urbanairship/g;

    invoke-static {v1}, Lcom/urbanairship/g;->b(Lcom/urbanairship/g;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/urbanairship/g$2;->a:Lcom/urbanairship/g;

    invoke-static {v2}, Lcom/urbanairship/g;->c(Lcom/urbanairship/g;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 146
    return-void

    .line 140
    :cond_0
    new-instance v0, Lcom/urbanairship/g$b;

    iget-object v2, p0, Lcom/urbanairship/g$2;->a:Lcom/urbanairship/g;

    invoke-direct {v0, v2}, Lcom/urbanairship/g$b;-><init>(Lcom/urbanairship/g;)V

    goto :goto_0
.end method
