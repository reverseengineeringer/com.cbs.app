.class final Lcom/google/android/gms/analytics/internal/m$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/m;->a(Lcom/google/android/gms/analytics/internal/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/ah;

.field final synthetic b:Lcom/google/android/gms/analytics/internal/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/m;Lcom/google/android/gms/analytics/internal/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/m$4;->b:Lcom/google/android/gms/analytics/internal/m;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/m$4;->a:Lcom/google/android/gms/analytics/internal/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/m$4;->b:Lcom/google/android/gms/analytics/internal/m;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/m;->a(Lcom/google/android/gms/analytics/internal/m;)Lcom/google/android/gms/analytics/internal/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/m$4;->a:Lcom/google/android/gms/analytics/internal/ah;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/w;->a(Lcom/google/android/gms/analytics/internal/ah;)V

    return-void
.end method
