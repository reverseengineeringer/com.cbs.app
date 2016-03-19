.class final Lcom/google/android/gms/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/a/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/a/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/a/b$1;->a:Lcom/google/android/gms/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/a/b$1;->a:Lcom/google/android/gms/a/b;

    invoke-static {v0, p1}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/b;Lcom/google/android/gms/a/a;)Lcom/google/android/gms/a/a;

    iget-object v0, p0, Lcom/google/android/gms/a/b$1;->a:Lcom/google/android/gms/a/b;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/a/b$a;

    invoke-interface {v0}, Lcom/google/android/gms/a/b$a;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/a/b$1;->a:Lcom/google/android/gms/a/b;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/a/b$1;->a:Lcom/google/android/gms/a/b;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->c(Lcom/google/android/gms/a/b;)Landroid/os/Bundle;

    return-void
.end method
