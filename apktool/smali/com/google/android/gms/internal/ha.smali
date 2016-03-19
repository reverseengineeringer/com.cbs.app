.class public final Lcom/google/android/gms/internal/ha;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ha$c;,
        Lcom/google/android/gms/internal/ha$b;,
        Lcom/google/android/gms/internal/ha$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/ha$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ha$a",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/google/android/gms/internal/iu;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ha;->c:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ha$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ha$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ha;->a:Lcom/google/android/gms/internal/ha$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ha;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ha;->b:Lcom/google/android/gms/internal/iu;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/gms/internal/iu;
    .locals 2

    .prologue
    .line 0
    sget-object v1, Lcom/google/android/gms/internal/ha;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ha;->b:Lcom/google/android/gms/internal/iu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1000
    invoke-static {v0}, Lcom/google/android/gms/internal/d;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    .line 0
    sput-object v0, Lcom/google/android/gms/internal/ha;->b:Lcom/google/android/gms/internal/iu;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ha;->b:Lcom/google/android/gms/internal/iu;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ha$a;)Lcom/google/android/gms/internal/hj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ha$a",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/hj",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ha$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ha$c;-><init>(Lcom/google/android/gms/internal/ha;B)V

    sget-object v1, Lcom/google/android/gms/internal/ha;->b:Lcom/google/android/gms/internal/iu;

    new-instance v2, Lcom/google/android/gms/internal/ha$b;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/internal/ha$b;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ha$a;Lcom/google/android/gms/internal/jk$b;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/io;)Lcom/google/android/gms/internal/io;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/hj;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/hj",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/google/android/gms/internal/ha$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ha$c;-><init>(Lcom/google/android/gms/internal/ha;B)V

    new-instance v4, Lcom/google/android/gms/internal/ha$2;

    invoke-direct {v4, p0, p1, v3}, Lcom/google/android/gms/internal/ha$2;-><init>(Lcom/google/android/gms/internal/ha;Ljava/lang/String;Lcom/google/android/gms/internal/ha$c;)V

    new-instance v0, Lcom/google/android/gms/internal/ha$3;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ha$3;-><init>(Lcom/google/android/gms/internal/ha;Ljava/lang/String;Lcom/google/android/gms/internal/jk$b;Lcom/google/android/gms/internal/jk$a;Ljava/util/Map;)V

    sget-object v1, Lcom/google/android/gms/internal/ha;->b:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/io;)Lcom/google/android/gms/internal/io;

    return-object v3
.end method
