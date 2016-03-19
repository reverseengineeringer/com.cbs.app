.class public final Lcom/google/android/gms/internal/ld;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ld$b;,
        Lcom/google/android/gms/internal/ld$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;
    .locals 2

    new-instance v1, Lcom/google/android/gms/internal/f$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/f$a;-><init>()V

    iget v0, p0, Lcom/google/android/gms/internal/f$a;->a:I

    iput v0, v1, Lcom/google/android/gms/internal/f$a;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/f$a;->k:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/google/android/gms/internal/f$a;->k:[I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/f$a;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/f$a;->l:Z

    iput-boolean v0, v1, Lcom/google/android/gms/internal/f$a;->l:Z

    :cond_0
    return-object v1
.end method
