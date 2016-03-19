.class final Lcom/google/android/gms/internal/ab$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hg;

.field final synthetic b:Lcom/google/android/gms/internal/aa;

.field final synthetic c:Lcom/google/android/gms/internal/ab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/hg;Lcom/google/android/gms/internal/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ab$2;->c:Lcom/google/android/gms/internal/ab;

    iput-object p2, p0, Lcom/google/android/gms/internal/ab$2;->a:Lcom/google/android/gms/internal/hg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ab$2;->b:Lcom/google/android/gms/internal/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ab$2;->a:Lcom/google/android/gms/internal/hg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ab$2;->b:Lcom/google/android/gms/internal/aa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hg;->b(Ljava/lang/Object;)V

    return-void
.end method
