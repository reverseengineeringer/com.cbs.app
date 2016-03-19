.class final Lcom/google/android/gms/internal/dg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dg;->a(JJ)Lcom/google/android/gms/internal/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/df;

.field final synthetic b:Lcom/google/android/gms/internal/dg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dg;Lcom/google/android/gms/internal/df;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dg$1;->b:Lcom/google/android/gms/internal/dg;

    iput-object p2, p0, Lcom/google/android/gms/internal/dg$1;->a:Lcom/google/android/gms/internal/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->b:Lcom/google/android/gms/internal/dg;

    invoke-static {v0}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/dg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->b:Lcom/google/android/gms/internal/dg;

    invoke-static {v0}, Lcom/google/android/gms/internal/dg;->b(Lcom/google/android/gms/internal/dg;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->b:Lcom/google/android/gms/internal/dg;

    iget-object v2, p0, Lcom/google/android/gms/internal/dg$1;->b:Lcom/google/android/gms/internal/dg;

    invoke-static {v2}, Lcom/google/android/gms/internal/dg;->c(Lcom/google/android/gms/internal/dg;)Lcom/google/android/gms/internal/dm;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/dg;Lcom/google/android/gms/internal/dm;)Lcom/google/android/gms/internal/dm;

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->b:Lcom/google/android/gms/internal/dg;

    invoke-static {v0}, Lcom/google/android/gms/internal/dg;->d(Lcom/google/android/gms/internal/dg;)Lcom/google/android/gms/internal/dm;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->b:Lcom/google/android/gms/internal/dg;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/dg;->a(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->a:Lcom/google/android/gms/internal/df;

    iget-object v2, p0, Lcom/google/android/gms/internal/dg$1;->b:Lcom/google/android/gms/internal/dg;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/internal/dh$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->b:Lcom/google/android/gms/internal/dg;

    iget-object v2, p0, Lcom/google/android/gms/internal/dg$1;->a:Lcom/google/android/gms/internal/df;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/dg;Lcom/google/android/gms/internal/df;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
