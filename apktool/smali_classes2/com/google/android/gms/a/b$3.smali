.class final Lcom/google/android/gms/a/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/a/b;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/google/android/gms/a/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/a/b;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/a/b$3;->b:Lcom/google/android/gms/a/b;

    iput-object p2, p0, Lcom/google/android/gms/a/b$3;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/a/b$3;->b:Lcom/google/android/gms/a/b;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->b(Lcom/google/android/gms/a/b;)Lcom/google/android/gms/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/a/b$3;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/google/android/gms/a/a;->a(Landroid/os/Bundle;)V

    return-void
.end method
