.class final Lcom/google/android/gms/internal/cy$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cy;

.field private final b:Lcom/google/android/gms/internal/io;

.field private final c:Lcom/google/android/gms/internal/jk;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cy;Lcom/google/android/gms/internal/io;Lcom/google/android/gms/internal/jk;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cy$a;->a:Lcom/google/android/gms/internal/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/cy$a;->b:Lcom/google/android/gms/internal/io;

    iput-object p3, p0, Lcom/google/android/gms/internal/cy$a;->c:Lcom/google/android/gms/internal/jk;

    iput-object p4, p0, Lcom/google/android/gms/internal/cy$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cy$a;->b:Lcom/google/android/gms/internal/io;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cy$a;->b:Lcom/google/android/gms/internal/io;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cy$a;->c:Lcom/google/android/gms/internal/jk;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/jk;->c:Lcom/google/android/gms/internal/lc;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 0
    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/cy$a;->b:Lcom/google/android/gms/internal/io;

    iget-object v1, p0, Lcom/google/android/gms/internal/cy$a;->c:Lcom/google/android/gms/internal/jk;

    iget-object v1, v1, Lcom/google/android/gms/internal/jk;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->a(Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cy$a;->c:Lcom/google/android/gms/internal/jk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/jk;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/cy$a;->b:Lcom/google/android/gms/internal/io;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->a(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cy$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cy$a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1000
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 0
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cy$a;->b:Lcom/google/android/gms/internal/io;

    iget-object v1, p0, Lcom/google/android/gms/internal/cy$a;->c:Lcom/google/android/gms/internal/jk;

    iget-object v1, v1, Lcom/google/android/gms/internal/jk;->c:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->b(Lcom/google/android/gms/internal/lc;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/cy$a;->b:Lcom/google/android/gms/internal/io;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->b(Ljava/lang/String;)V

    goto :goto_3
.end method
