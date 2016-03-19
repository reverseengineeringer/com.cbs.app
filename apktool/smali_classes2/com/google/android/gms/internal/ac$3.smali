.class final Lcom/google/android/gms/internal/ac$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ac;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ac;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ac$3;->b:Lcom/google/android/gms/internal/ac;

    iput-object p2, p0, Lcom/google/android/gms/internal/ac$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ac$3;->b:Lcom/google/android/gms/internal/ac;

    invoke-static {v0}, Lcom/google/android/gms/internal/ac;->a(Lcom/google/android/gms/internal/ac;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ac$3;->a:Ljava/lang/String;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/hs;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
