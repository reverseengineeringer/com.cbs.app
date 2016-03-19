.class public final Lcom/google/android/gms/analytics/internal/e;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile a:Lcom/google/android/gms/analytics/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/analytics/internal/ad;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/internal/ad;-><init>()V

    .line 4000
    sput-object v0, Lcom/google/android/gms/analytics/internal/e;->a:Lcom/google/android/gms/analytics/b;

    .line 0
    return-void
.end method

.method public static a()Lcom/google/android/gms/analytics/b;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/e;->a:Lcom/google/android/gms/analytics/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 0
    invoke-static {}, Lcom/google/android/gms/analytics/internal/f;->b()Lcom/google/android/gms/analytics/internal/f;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/f;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/analytics/internal/e;->a:Lcom/google/android/gms/analytics/b;

    return-void

    .line 2000
    :cond_1
    sget-object v1, Lcom/google/android/gms/analytics/internal/e;->a:Lcom/google/android/gms/analytics/b;

    .line 1000
    if-eqz v1, :cond_2

    .line 3000
    sget-object v1, Lcom/google/android/gms/analytics/internal/e;->a:Lcom/google/android/gms/analytics/b;

    .line 1000
    invoke-interface {v1}, Lcom/google/android/gms/analytics/b;->a()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 0
    :cond_2
    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    sget-object v0, Lcom/google/android/gms/analytics/internal/aj;->c:Lcom/google/android/gms/analytics/internal/aj$a;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/aj$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
