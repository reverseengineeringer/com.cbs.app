.class final Lcom/google/android/gms/b/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/e;->a(Lcom/google/android/gms/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/b;

.field final synthetic b:Lcom/google/android/gms/b/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/e;Lcom/google/android/gms/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/e$1;->b:Lcom/google/android/gms/b/e;

    iput-object p2, p0, Lcom/google/android/gms/b/e$1;->a:Lcom/google/android/gms/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/e$1;->a:Lcom/google/android/gms/b/b;

    invoke-virtual {v0}, Lcom/google/android/gms/b/b;->h()Lcom/google/android/gms/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/e$1;->a:Lcom/google/android/gms/b/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/d;->a(Lcom/google/android/gms/b/b;)V

    iget-object v0, p0, Lcom/google/android/gms/b/e$1;->b:Lcom/google/android/gms/b/e;

    invoke-static {v0}, Lcom/google/android/gms/b/e;->a(Lcom/google/android/gms/b/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/e$1;->a:Lcom/google/android/gms/b/b;

    invoke-static {v0}, Lcom/google/android/gms/b/e;->b(Lcom/google/android/gms/b/b;)V

    return-void
.end method
