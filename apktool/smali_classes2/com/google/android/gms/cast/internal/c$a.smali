.class final Lcom/google/android/gms/cast/internal/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/cast/internal/c;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/internal/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/c$a;->a:Lcom/google/android/gms/cast/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/internal/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/internal/c$a;-><init>(Lcom/google/android/gms/cast/internal/c;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/c$a;->a:Lcom/google/android/gms/cast/internal/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/cast/internal/c;->e:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/c$a;->a:Lcom/google/android/gms/cast/internal/c;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/cast/internal/c;->a(J)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/c$a;->a:Lcom/google/android/gms/cast/internal/c;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/internal/c;->a(Z)V

    return-void
.end method
