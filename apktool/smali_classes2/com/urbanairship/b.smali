.class public final Lcom/urbanairship/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/urbanairship/l;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/urbanairship/b;->a:Lcom/urbanairship/l;

    .line 1051
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1052
    const-string v1, "com.urbanairship.analytics.APP_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1054
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 1056
    new-instance v2, Lcom/urbanairship/b$1;

    invoke-direct {v2, p0}, Lcom/urbanairship/b$1;-><init>(Lcom/urbanairship/b;)V

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/b;)Lcom/urbanairship/l;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/urbanairship/b;->a:Lcom/urbanairship/l;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/urbanairship/b;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.application.metrics.LAST_OPEN"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/urbanairship/l;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
