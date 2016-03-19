.class final Lcom/google/android/gms/internal/hu$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ci;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/hu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hu$d;->a:Lcom/google/android/gms/internal/hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/hu;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/hu$d;-><init>(Lcom/google/android/gms/internal/hu;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/hs;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hs;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "start"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu$d;->a:Lcom/google/android/gms/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/internal/hu;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "stop"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/hu$d;->a:Lcom/google/android/gms/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/internal/hu;->b(Lcom/google/android/gms/internal/hu;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "cancel"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hu$d;->a:Lcom/google/android/gms/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/internal/hu;->c(Lcom/google/android/gms/internal/hu;)V

    goto :goto_0
.end method
