.class final Lcom/google/android/gms/internal/eb$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/eb;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/eb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/eb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/eb$1;->a:Lcom/google/android/gms/internal/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/eb$1;->a:Lcom/google/android/gms/internal/eb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eb;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v1, p0, Lcom/google/android/gms/internal/eb$1;->a:Lcom/google/android/gms/internal/eb;

    invoke-static {v1}, Lcom/google/android/gms/internal/eb;->a(Lcom/google/android/gms/internal/eb;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gw;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
