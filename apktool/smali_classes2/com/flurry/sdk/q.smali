.class public final Lcom/flurry/sdk/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/q;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/q;
    .locals 2

    .prologue
    .line 13
    const-class v1, Lcom/flurry/sdk/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/q;->a:Lcom/flurry/sdk/q;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/flurry/sdk/q;

    invoke-direct {v0}, Lcom/flurry/sdk/q;-><init>()V

    sput-object v0, Lcom/flurry/sdk/q;->a:Lcom/flurry/sdk/q;

    .line 16
    :cond_0
    sget-object v0, Lcom/flurry/sdk/q;->a:Lcom/flurry/sdk/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
