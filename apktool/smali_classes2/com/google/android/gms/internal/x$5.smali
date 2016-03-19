.class final Lcom/google/android/gms/internal/x$5;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/x;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/x$5;->a:Lcom/google/android/gms/internal/x;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/x$5;->a:Lcom/google/android/gms/internal/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/x;->b(Z)V

    return-void
.end method
