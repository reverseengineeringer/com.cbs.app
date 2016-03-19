.class final Lcom/google/android/gms/internal/iz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/iz;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/iz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iz$1;->a:Lcom/google/android/gms/internal/iz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iz$1;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/internal/iz;->a(Lcom/google/android/gms/internal/iz;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/b;->b(Landroid/content/Context;)V

    return-void
.end method
