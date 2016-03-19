.class final Lcom/urbanairship/d/d$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Class;",
        "Landroid/content/pm/ComponentInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 349
    const-class v0, Lcom/urbanairship/analytics/EventService;

    const-class v1, Lcom/urbanairship/analytics/EventService;

    invoke-static {v1}, Lcom/urbanairship/d/d;->a(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/d/d$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-class v0, Lcom/urbanairship/push/PushService;

    const-class v1, Lcom/urbanairship/push/PushService;

    invoke-static {v1}, Lcom/urbanairship/d/d;->a(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/d/d$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-class v0, Lcom/urbanairship/richpush/RichPushUpdateService;

    const-class v1, Lcom/urbanairship/richpush/RichPushUpdateService;

    invoke-static {v1}, Lcom/urbanairship/d/d;->a(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/d/d$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-class v0, Lcom/urbanairship/actions/ActionService;

    const-class v1, Lcom/urbanairship/actions/ActionService;

    invoke-static {v1}, Lcom/urbanairship/d/d;->a(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/d/d$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-class v0, Lcom/urbanairship/location/LocationService;

    const-class v1, Lcom/urbanairship/location/LocationService;

    invoke-static {v1}, Lcom/urbanairship/d/d;->a(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/d/d$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-class v0, Lcom/urbanairship/CoreReceiver;

    const-class v1, Lcom/urbanairship/CoreReceiver;

    invoke-static {v1}, Lcom/urbanairship/d/d;->c(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/d/d$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-class v0, Lcom/urbanairship/UrbanAirshipProvider;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/d/d;->c(Ljava/lang/String;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/d/d$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-class v0, Lcom/urbanairship/actions/ActionActivity;

    const-class v1, Lcom/urbanairship/actions/ActionActivity;

    invoke-static {v1}, Lcom/urbanairship/d/d;->b(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/d/d$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-class v0, Lcom/urbanairship/CoreActivity;

    const-class v1, Lcom/urbanairship/CoreActivity;

    invoke-static {v1}, Lcom/urbanairship/d/d;->b(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/d/d$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    return-void
.end method
