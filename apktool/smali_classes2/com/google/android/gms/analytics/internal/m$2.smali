.class final Lcom/google/android/gms/analytics/internal/m$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/m;->a(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/google/android/gms/analytics/internal/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/m;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/m$2;->c:Lcom/google/android/gms/analytics/internal/m;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/m$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/analytics/internal/m$2;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/m$2;->c:Lcom/google/android/gms/analytics/internal/m;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/m;->a(Lcom/google/android/gms/analytics/internal/m;)Lcom/google/android/gms/analytics/internal/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/m$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/w;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/m$2;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/m$2;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
