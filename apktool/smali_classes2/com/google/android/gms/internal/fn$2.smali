.class final Lcom/google/android/gms/internal/fn$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hg;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/fn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fn;Lcom/google/android/gms/internal/hg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fn$2;->c:Lcom/google/android/gms/internal/fn;

    iput-object p2, p0, Lcom/google/android/gms/internal/fn$2;->a:Lcom/google/android/gms/internal/hg;

    iput-object p3, p0, Lcom/google/android/gms/internal/fn$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fn$2;->a:Lcom/google/android/gms/internal/hg;

    iget-object v1, p0, Lcom/google/android/gms/internal/fn$2;->c:Lcom/google/android/gms/internal/fn;

    invoke-static {v1}, Lcom/google/android/gms/internal/fn;->a(Lcom/google/android/gms/internal/fn;)Lcom/google/android/gms/ads/internal/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/m;->x()Lcom/google/android/gms/internal/jp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fn$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hg;->b(Ljava/lang/Object;)V

    return-void
.end method
