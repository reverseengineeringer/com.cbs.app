.class public final Lcom/flurry/sdk/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:Lcom/flurry/sdk/bn;


# instance fields
.field private final c:Lcom/flurry/sdk/bo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/flurry/sdk/bn;->a:J

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/bn;->b:Lcom/flurry/sdk/bn;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/flurry/sdk/bo;

    invoke-direct {v0}, Lcom/flurry/sdk/bo;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bn;->c:Lcom/flurry/sdk/bo;

    .line 31
    iget-object v0, p0, Lcom/flurry/sdk/bn;->c:Lcom/flurry/sdk/bo;

    sget-wide v2, Lcom/flurry/sdk/bn;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/bo;->a(J)V

    .line 32
    iget-object v0, p0, Lcom/flurry/sdk/bn;->c:Lcom/flurry/sdk/bo;

    invoke-virtual {v0}, Lcom/flurry/sdk/bo;->a()V

    .line 33
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/bn;
    .locals 2

    .prologue
    .line 16
    const-class v1, Lcom/flurry/sdk/bn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/bn;->b:Lcom/flurry/sdk/bn;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/flurry/sdk/bn;

    invoke-direct {v0}, Lcom/flurry/sdk/bn;-><init>()V

    sput-object v0, Lcom/flurry/sdk/bn;->b:Lcom/flurry/sdk/bn;

    .line 20
    :cond_0
    sget-object v0, Lcom/flurry/sdk/bn;->b:Lcom/flurry/sdk/bn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/flurry/sdk/ah;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ah",
            "<",
            "Lcom/flurry/sdk/bm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Lcom/flurry/sdk/ai;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/ai;->a(Ljava/lang/String;Lcom/flurry/sdk/ah;)V

    .line 37
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Lcom/flurry/sdk/ai;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ai;->a(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/flurry/sdk/bn;->c:Lcom/flurry/sdk/bo;

    invoke-virtual {v0}, Lcom/flurry/sdk/bo;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/ah;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ah",
            "<",
            "Lcom/flurry/sdk/bm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Lcom/flurry/sdk/ai;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/ai;->b(Ljava/lang/String;Lcom/flurry/sdk/ah;)V

    .line 44
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Lcom/flurry/sdk/ai;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ai;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/bn;->c:Lcom/flurry/sdk/bo;

    invoke-virtual {v0}, Lcom/flurry/sdk/bo;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
