.class public final Lcom/google/android/gms/internal/la$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/la;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/common/api/b$d;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/la;
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/la;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/la$a;->a:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/la$a;->b:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/la$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/la$a;->d:Lcom/google/android/gms/common/api/b$d;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/la$a;->e:Z

    iget-boolean v6, p0, Lcom/google/android/gms/internal/la$a;->f:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/la;-><init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/b$d;ZZB)V

    return-object v0
.end method
