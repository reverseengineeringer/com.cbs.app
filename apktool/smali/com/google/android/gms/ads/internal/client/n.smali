.class public final Lcom/google/android/gms/ads/internal/client/n;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/ads/internal/client/n;


# instance fields
.field private final c:Lcom/google/android/gms/ads/internal/util/client/a;

.field private final d:Lcom/google/android/gms/ads/internal/client/h;

.field private final e:Lcom/google/android/gms/ads/internal/client/o;

.field private final f:Lcom/google/android/gms/ads/internal/client/c;

.field private final g:Lcom/google/android/gms/internal/ca;

.field private final h:Lcom/google/android/gms/ads/internal/reward/client/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/n;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/n;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/n;-><init>()V

    .line 1000
    sget-object v1, Lcom/google/android/gms/ads/internal/client/n;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/ads/internal/client/n;->b:Lcom/google/android/gms/ads/internal/client/n;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/client/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/n;->c:Lcom/google/android/gms/ads/internal/util/client/a;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/h;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/n;->d:Lcom/google/android/gms/ads/internal/client/h;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/o;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/o;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/n;->e:Lcom/google/android/gms/ads/internal/client/o;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/c;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/n;->f:Lcom/google/android/gms/ads/internal/client/c;

    new-instance v0, Lcom/google/android/gms/internal/ca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ca;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/n;->g:Lcom/google/android/gms/internal/ca;

    new-instance v0, Lcom/google/android/gms/ads/internal/reward/client/b;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/reward/client/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/n;->h:Lcom/google/android/gms/ads/internal/reward/client/b;

    return-void
.end method

.method public static a()Lcom/google/android/gms/ads/internal/util/client/a;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->e()Lcom/google/android/gms/ads/internal/client/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/n;->c:Lcom/google/android/gms/ads/internal/util/client/a;

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/ads/internal/client/h;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->e()Lcom/google/android/gms/ads/internal/client/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/n;->d:Lcom/google/android/gms/ads/internal/client/h;

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/ads/internal/client/o;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->e()Lcom/google/android/gms/ads/internal/client/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/n;->e:Lcom/google/android/gms/ads/internal/client/o;

    return-object v0
.end method

.method public static d()Lcom/google/android/gms/internal/ca;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->e()Lcom/google/android/gms/ads/internal/client/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/n;->g:Lcom/google/android/gms/internal/ca;

    return-object v0
.end method

.method private static e()Lcom/google/android/gms/ads/internal/client/n;
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/client/n;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/internal/client/n;->b:Lcom/google/android/gms/ads/internal/client/n;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
