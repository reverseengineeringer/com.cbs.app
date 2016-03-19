.class final Lcom/google/android/gms/internal/jh$4;
.super Lcom/google/android/gms/internal/jh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jh;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/internal/jh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/jh",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/jh;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1000
    invoke-static {}, Lcom/google/android/gms/internal/jh;->f()Lcom/google/android/gms/internal/jh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/jh$a;->d()Ljava/lang/Float;

    move-result-object v0

    .line 0
    return-object v0
.end method
