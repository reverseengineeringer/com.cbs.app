.class public final Lcom/google/android/gms/appdatasearch/GetRecentContextCall$a;
.super Lcom/google/android/gms/internal/iw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appdatasearch/GetRecentContextCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/iw$a",
        "<",
        "Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;",
        "Lcom/google/android/gms/internal/im;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;Lcom/google/android/gms/common/api/b;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/a;->a:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/iw$a;-><init>(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b;)V

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$a;->a:Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/e;
    .locals 1

    .prologue
    .line 3000
    new-instance v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;->a:Lcom/google/android/gms/common/api/Status;

    .line 0
    return-object v0
.end method

.method protected final synthetic a(Lcom/google/android/gms/common/api/a$c;)V
    .locals 3

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/im;

    .line 2000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/im;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ij;

    .line 1000
    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$a;->a:Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;

    new-instance v2, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$a$1;

    invoke-direct {v2, p0, p0}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$a$1;-><init>(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$a;Lcom/google/android/gms/internal/iw$b;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ij;->a(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;Lcom/google/android/gms/internal/ik;)V

    .line 0
    return-void
.end method
