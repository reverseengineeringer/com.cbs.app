.class public final Lcom/google/android/gms/internal/dh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dh$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/dc;

.field public final c:Lcom/google/android/gms/internal/dm;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/android/gms/internal/df;

.field public final f:Lcom/google/android/gms/internal/do;


# direct methods
.method public constructor <init>(I)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/dh;-><init>(Lcom/google/android/gms/internal/dc;Lcom/google/android/gms/internal/dm;Ljava/lang/String;Lcom/google/android/gms/internal/df;ILcom/google/android/gms/internal/do;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/dc;Lcom/google/android/gms/internal/dm;Ljava/lang/String;Lcom/google/android/gms/internal/df;ILcom/google/android/gms/internal/do;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dc;

    iput-object p2, p0, Lcom/google/android/gms/internal/dh;->c:Lcom/google/android/gms/internal/dm;

    iput-object p3, p0, Lcom/google/android/gms/internal/dh;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/dh;->e:Lcom/google/android/gms/internal/df;

    iput p5, p0, Lcom/google/android/gms/internal/dh;->a:I

    iput-object p6, p0, Lcom/google/android/gms/internal/dh;->f:Lcom/google/android/gms/internal/do;

    return-void
.end method
