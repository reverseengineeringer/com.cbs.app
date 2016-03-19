.class final Lcom/google/android/gms/internal/iq$2;
.super Lcom/google/android/gms/internal/iq$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/iq;->a(Lcom/google/android/gms/common/api/b;)Lcom/google/android/gms/common/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/iq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iq;Lcom/google/android/gms/common/api/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iq$2;->a:Lcom/google/android/gms/internal/iq;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/iq$b;-><init>(Lcom/google/android/gms/internal/iq;Lcom/google/android/gms/common/api/b;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/a$c;)V
    .locals 1

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/ir;

    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/iq$b$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/iq$b$a;-><init>(Lcom/google/android/gms/internal/iq$b;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ir;->a(Lcom/google/android/gms/internal/is;)V

    .line 0
    return-void
.end method
