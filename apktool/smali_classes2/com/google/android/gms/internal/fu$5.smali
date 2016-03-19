.class final Lcom/google/android/gms/internal/fu$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cx$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/aq;Lcom/google/android/gms/internal/ft;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/cx$b",
        "<",
        "Lcom/google/android/gms/internal/aa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fu$5;->a:Lcom/google/android/gms/internal/fu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/aa;

    .line 1000
    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/ch;->h:Lcom/google/android/gms/internal/ci;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/aa;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    .line 0
    return-void
.end method
