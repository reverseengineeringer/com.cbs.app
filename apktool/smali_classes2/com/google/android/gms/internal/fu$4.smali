.class final Lcom/google/android/gms/internal/fu$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/bg;

.field final synthetic b:Lcom/google/android/gms/internal/be;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/be;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fu$4;->a:Lcom/google/android/gms/internal/bg;

    iput-object p2, p0, Lcom/google/android/gms/internal/fu$4;->b:Lcom/google/android/gms/internal/be;

    iput-object p3, p0, Lcom/google/android/gms/internal/fu$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/hs;Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$4;->a:Lcom/google/android/gms/internal/bg;

    iget-object v1, p0, Lcom/google/android/gms/internal/fu$4;->b:Lcom/google/android/gms/internal/be;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/bg;->a(Lcom/google/android/gms/internal/be;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$4;->a:Lcom/google/android/gms/internal/bg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bg;->b()V

    const-string v0, "AFMA_buildAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/fu$4;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
