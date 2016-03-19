.class public Lcom/flurry/sdk/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/ac;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/flurry/sdk/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ac;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/flurry/sdk/ac;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1055
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v0

    .line 1056
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 1060
    new-instance v1, Lcom/flurry/sdk/ac$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ac$1;-><init>(Lcom/flurry/sdk/ac;)V

    iput-object v1, p0, Lcom/flurry/sdk/ac;->c:Ljava/lang/Object;

    .line 1111
    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/flurry/sdk/ac;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 42
    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/ac;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/flurry/sdk/ac;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ac;->a:Lcom/flurry/sdk/ac;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/flurry/sdk/ac;

    invoke-direct {v0}, Lcom/flurry/sdk/ac;-><init>()V

    sput-object v0, Lcom/flurry/sdk/ac;->a:Lcom/flurry/sdk/ac;

    .line 25
    :cond_0
    sget-object v0, Lcom/flurry/sdk/ac;->a:Lcom/flurry/sdk/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/flurry/sdk/ac;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/ac;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
