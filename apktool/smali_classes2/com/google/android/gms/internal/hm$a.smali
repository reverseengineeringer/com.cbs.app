.class final Lcom/google/android/gms/internal/hm$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/hl$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hl$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/hl$a;

.field final synthetic c:Lcom/google/android/gms/internal/hm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hm;Lcom/google/android/gms/internal/hl$c;Lcom/google/android/gms/internal/hl$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hl$c",
            "<TT;>;",
            "Lcom/google/android/gms/internal/hl$a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/hm$a;->c:Lcom/google/android/gms/internal/hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/hm$a;->a:Lcom/google/android/gms/internal/hl$c;

    iput-object p3, p0, Lcom/google/android/gms/internal/hm$a;->b:Lcom/google/android/gms/internal/hl$a;

    return-void
.end method
