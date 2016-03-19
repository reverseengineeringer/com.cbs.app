.class final Lcom/google/android/gms/internal/ha$c;
.super Lcom/google/android/gms/internal/hg;

# interfaces
.implements Lcom/google/android/gms/internal/jk$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/hg",
        "<TT;>;",
        "Lcom/google/android/gms/internal/jk$b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ha;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ha;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ha$c;->a:Lcom/google/android/gms/internal/ha;

    invoke-direct {p0}, Lcom/google/android/gms/internal/hg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ha;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ha$c;-><init>(Lcom/google/android/gms/internal/ha;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/hg;->b(Ljava/lang/Object;)V

    return-void
.end method
