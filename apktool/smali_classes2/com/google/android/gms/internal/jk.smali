.class public final Lcom/google/android/gms/internal/jk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jk$a;,
        Lcom/google/android/gms/internal/jk$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/y$a;

.field public final c:Lcom/google/android/gms/internal/lc;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/lc;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jk;->d:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/jk;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/jk;->b:Lcom/google/android/gms/internal/y$a;

    iput-object p1, p0, Lcom/google/android/gms/internal/jk;->c:Lcom/google/android/gms/internal/lc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/y$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/y$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jk;->d:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/jk;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/jk;->b:Lcom/google/android/gms/internal/y$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->c:Lcom/google/android/gms/internal/lc;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/lc;)Lcom/google/android/gms/internal/jk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/lc;",
            ")",
            "Lcom/google/android/gms/internal/jk",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jk;-><init>(Lcom/google/android/gms/internal/lc;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/google/android/gms/internal/y$a;)Lcom/google/android/gms/internal/jk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/y$a;",
            ")",
            "Lcom/google/android/gms/internal/jk",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/jk;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/y$a;)V

    return-object v0
.end method
