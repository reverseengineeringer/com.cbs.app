.class public final Lcom/flurry/sdk/w;
.super Lcom/flurry/sdk/al;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/al",
        "<",
        "Lcom/flurry/sdk/ar;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/flurry/sdk/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/w;->a:Lcom/flurry/sdk/w;

    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 39
    const-class v0, Lcom/flurry/sdk/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v3, 0xb

    new-instance v4, Lcom/flurry/sdk/aj;

    invoke-direct {v4}, Lcom/flurry/sdk/aj;-><init>()V

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/flurry/sdk/al;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 41
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/w;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcom/flurry/sdk/w;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/w;->a:Lcom/flurry/sdk/w;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/flurry/sdk/w;

    invoke-direct {v0}, Lcom/flurry/sdk/w;-><init>()V

    sput-object v0, Lcom/flurry/sdk/w;->a:Lcom/flurry/sdk/w;

    .line 23
    :cond_0
    sget-object v0, Lcom/flurry/sdk/w;->a:Lcom/flurry/sdk/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
