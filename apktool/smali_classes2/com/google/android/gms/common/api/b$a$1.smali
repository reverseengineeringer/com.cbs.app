.class final Lcom/google/android/gms/common/api/b$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/b;

.field final synthetic b:Lcom/google/android/gms/common/api/b$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/b$a;Lcom/google/android/gms/common/api/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/b$a$1;->b:Lcom/google/android/gms/common/api/b$a;

    iput-object p2, p0, Lcom/google/android/gms/common/api/b$a$1;->a:Lcom/google/android/gms/common/api/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/b$a$1;->b:Lcom/google/android/gms/common/api/b$a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/b$a;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/b$a$1;->b:Lcom/google/android/gms/common/api/b$a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/b$a;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/b$a$1;->b:Lcom/google/android/gms/common/api/b$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/b$a$1;->b:Lcom/google/android/gms/common/api/b$a;

    invoke-static {v1}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/b$a;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlp;->b(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/internal/zzlp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/b$a$1;->a:Lcom/google/android/gms/common/api/b;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/b$a;Lcom/google/android/gms/internal/zzlp;Lcom/google/android/gms/common/api/b;)V

    goto :goto_0
.end method
