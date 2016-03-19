.class public final Lcom/google/android/gms/internal/cr;
.super Lcom/google/android/gms/internal/gr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/hs;

.field final b:Lcom/google/android/gms/internal/ct;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/ct;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/hs;

    iput-object p2, p0, Lcom/google/android/gms/internal/cr;->b:Lcom/google/android/gms/internal/ct;

    iput-object p3, p0, Lcom/google/android/gms/internal/cr;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->r()Lcom/google/android/gms/internal/cs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/cs;->a(Lcom/google/android/gms/internal/cr;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->b:Lcom/google/android/gms/internal/ct;

    iget-object v1, p0, Lcom/google/android/gms/internal/cr;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ct;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cr$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cr$1;-><init>(Lcom/google/android/gms/internal/cr;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/cr$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/cr$1;-><init>(Lcom/google/android/gms/internal/cr;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->b:Lcom/google/android/gms/internal/ct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ct;->a()V

    return-void
.end method
