.class final Lcom/google/android/gms/internal/zzlp$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/common/api/b;

.field public final c:Lcom/google/android/gms/common/api/b$c;

.field final synthetic d:Lcom/google/android/gms/internal/zzlp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlp;ILcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp$a;->d:Lcom/google/android/gms/internal/zzlp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/zzlp$a;->a:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlp$a;->b:Lcom/google/android/gms/common/api/b;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlp$a;->c:Lcom/google/android/gms/common/api/b$c;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b$c;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$a;->d:Lcom/google/android/gms/internal/zzlp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlp;->e(Lcom/google/android/gms/internal/zzlp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzlp$b;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp$a;->d:Lcom/google/android/gms/internal/zzlp;

    iget v3, p0, Lcom/google/android/gms/internal/zzlp$a;->a:I

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzlp$b;-><init>(Lcom/google/android/gms/internal/zzlp;ILcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
