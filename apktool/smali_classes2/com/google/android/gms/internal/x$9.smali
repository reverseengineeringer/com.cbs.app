.class final Lcom/google/android/gms/internal/x$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hl$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/x;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/hl$c",
        "<",
        "Lcom/google/android/gms/internal/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/google/android/gms/internal/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/x;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/x$9;->b:Lcom/google/android/gms/internal/x;

    iput-object p2, p0, Lcom/google/android/gms/internal/x$9;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/ad;

    .line 1000
    const-string v0, "AFMA_updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/x$9;->a:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ad;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 0
    return-void
.end method
