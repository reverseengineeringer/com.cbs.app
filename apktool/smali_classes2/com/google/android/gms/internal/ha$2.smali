.class final Lcom/google/android/gms/internal/ha$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/jk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ha;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/hj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/ha$c;

.field final synthetic c:Lcom/google/android/gms/internal/ha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ha;Ljava/lang/String;Lcom/google/android/gms/internal/ha$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ha$2;->c:Lcom/google/android/gms/internal/ha;

    iput-object p2, p0, Lcom/google/android/gms/internal/ha$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ha$2;->b:Lcom/google/android/gms/internal/ha$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/lc;)V
    .locals 2

    .prologue
    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ha$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ha$2;->b:Lcom/google/android/gms/internal/ha$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ha$c;->a(Ljava/lang/Object;)V

    return-void
.end method
