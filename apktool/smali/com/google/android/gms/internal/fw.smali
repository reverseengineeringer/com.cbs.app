.class public final Lcom/google/android/gms/internal/fw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/hs;

.field b:Lcom/google/android/gms/internal/cx$d;

.field public final c:Lcom/google/android/gms/internal/ci;

.field public final d:Lcom/google/android/gms/internal/ci;

.field private final e:Ljava/lang/Object;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/internal/hg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hg",
            "<",
            "Lcom/google/android/gms/internal/fy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fw;->e:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/hg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fw;->h:Lcom/google/android/gms/internal/hg;

    new-instance v0, Lcom/google/android/gms/internal/fw$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fw$1;-><init>(Lcom/google/android/gms/internal/fw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fw;->c:Lcom/google/android/gms/internal/ci;

    new-instance v0, Lcom/google/android/gms/internal/fw$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fw$2;-><init>(Lcom/google/android/gms/internal/fw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fw;->d:Lcom/google/android/gms/internal/ci;

    iput-object p2, p0, Lcom/google/android/gms/internal/fw;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/fw;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fw;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/fw;)Lcom/google/android/gms/internal/hg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->h:Lcom/google/android/gms/internal/hg;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/fw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/fw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/fy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->h:Lcom/google/android/gms/internal/hg;

    return-object v0
.end method
