.class public final Lcom/google/android/gms/internal/la;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/la$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/la;


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/common/api/b$d;

.field private final f:Z

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/la$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/la$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/la$a;->a()Lcom/google/android/gms/internal/la;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/la;->a:Lcom/google/android/gms/internal/la;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/b$d;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/la;->b:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/la;->c:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/la;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/la;->e:Lcom/google/android/gms/common/api/b$d;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/la;->f:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/la;->g:Z

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/b$d;ZZB)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/la;-><init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/b$d;ZZ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/la;->b:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/la;->c:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/common/api/b$d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->e:Lcom/google/android/gms/common/api/b$d;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/la;->f:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/la;->g:Z

    return v0
.end method
