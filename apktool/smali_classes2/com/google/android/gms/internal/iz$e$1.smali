.class final Lcom/google/android/gms/internal/iz$e$1;
.super Lcom/google/android/gms/internal/jb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/iz$e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic b:Lcom/google/android/gms/internal/iz$e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iz$e;Lcom/google/android/gms/internal/jc;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iz$e$1;->b:Lcom/google/android/gms/internal/iz$e;

    iput-object p3, p0, Lcom/google/android/gms/internal/iz$e$1;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/jb$b;-><init>(Lcom/google/android/gms/internal/jc;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/iz$e$1;->b:Lcom/google/android/gms/internal/iz$e;

    iget-object v0, v0, Lcom/google/android/gms/internal/iz$e;->a:Lcom/google/android/gms/internal/iz;

    iget-object v1, p0, Lcom/google/android/gms/internal/iz$e$1;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/iz;->a(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
