.class final Lcom/google/android/gms/internal/cj$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cj$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/google/android/gms/internal/cj$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cj$1;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cj$1$1;->b:Lcom/google/android/gms/internal/cj$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/cj$1$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cj$1$1;->b:Lcom/google/android/gms/internal/cj$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/cj$1;->b:Lcom/google/android/gms/internal/hs;

    const-string v1, "fetchHttpRequestCompleted"

    iget-object v2, p0, Lcom/google/android/gms/internal/cj$1$1;->a:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1000
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    return-void
.end method
