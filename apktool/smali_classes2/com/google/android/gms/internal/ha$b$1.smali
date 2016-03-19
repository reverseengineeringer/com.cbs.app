.class final Lcom/google/android/gms/internal/ha$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/jk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ha$b;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ha$a;Lcom/google/android/gms/internal/jk$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jk$b;

.field final synthetic b:Lcom/google/android/gms/internal/ha$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jk$b;Lcom/google/android/gms/internal/ha$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ha$b$1;->a:Lcom/google/android/gms/internal/jk$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/ha$b$1;->b:Lcom/google/android/gms/internal/ha$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/lc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ha$b$1;->a:Lcom/google/android/gms/internal/jk$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/ha$b$1;->b:Lcom/google/android/gms/internal/ha$a;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ha$a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/jk$b;->a(Ljava/lang/Object;)V

    return-void
.end method
