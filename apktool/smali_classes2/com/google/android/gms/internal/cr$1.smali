.class final Lcom/google/android/gms/internal/cr$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cr;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cr$1;->a:Lcom/google/android/gms/internal/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->r()Lcom/google/android/gms/internal/cs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cr$1;->a:Lcom/google/android/gms/internal/cr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cs;->b(Lcom/google/android/gms/internal/cr;)V

    return-void
.end method
