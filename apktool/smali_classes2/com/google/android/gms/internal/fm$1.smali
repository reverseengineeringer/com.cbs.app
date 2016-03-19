.class final Lcom/google/android/gms/internal/fm$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fm;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/gk;

.field final synthetic b:Lcom/google/android/gms/internal/fm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fm;Lcom/google/android/gms/internal/gk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fm$1;->b:Lcom/google/android/gms/internal/fm;

    iput-object p2, p0, Lcom/google/android/gms/internal/fm$1;->a:Lcom/google/android/gms/internal/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1;->b:Lcom/google/android/gms/internal/fm;

    invoke-static {v0}, Lcom/google/android/gms/internal/fm;->a(Lcom/google/android/gms/internal/fm;)Lcom/google/android/gms/internal/fh$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fm$1;->a:Lcom/google/android/gms/internal/gk;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fh$a;->b(Lcom/google/android/gms/internal/gk;)V

    return-void
.end method
