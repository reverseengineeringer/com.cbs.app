.class final Lcom/google/android/gms/internal/ga$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/fz;

.field final synthetic c:Lcom/google/android/gms/internal/ga;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ga;Lcom/google/android/gms/internal/fz;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ga$a;->c:Lcom/google/android/gms/internal/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->i()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ju;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ga$a;->a:J

    iput-object p2, p0, Lcom/google/android/gms/internal/ga$a;->b:Lcom/google/android/gms/internal/fz;

    return-void
.end method
