.class final Lcom/google/android/gms/location/internal/c$3;
.super Lcom/google/android/gms/location/internal/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/c;->a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/location/f;)Lcom/google/android/gms/common/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/f;

.field final synthetic b:Lcom/google/android/gms/location/internal/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/c;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/location/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/c$3;->b:Lcom/google/android/gms/location/internal/c;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/c$3;->a:Lcom/google/android/gms/location/f;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/c$a;-><init>(Lcom/google/android/gms/common/api/b;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/a$c;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/location/internal/k;

    .line 1000
    new-instance v0, Lcom/google/android/gms/location/internal/c$3$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/internal/c$3$1;-><init>(Lcom/google/android/gms/location/internal/c$3;)V

    iget-object v1, p0, Lcom/google/android/gms/location/internal/c$3;->a:Lcom/google/android/gms/location/f;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/f;Lcom/google/android/gms/location/internal/f;)V

    .line 0
    return-void
.end method
