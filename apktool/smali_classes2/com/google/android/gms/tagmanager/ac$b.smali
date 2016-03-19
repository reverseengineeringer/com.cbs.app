.class final Lcom/google/android/gms/tagmanager/ac$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/tagmanager/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/v",
            "<",
            "Lcom/google/android/gms/internal/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/f$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/v;Lcom/google/android/gms/internal/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/v",
            "<",
            "Lcom/google/android/gms/internal/f$a;",
            ">;",
            "Lcom/google/android/gms/internal/f$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ac$b;->a:Lcom/google/android/gms/tagmanager/v;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/ac$b;->b:Lcom/google/android/gms/internal/f$a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/tagmanager/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tagmanager/v",
            "<",
            "Lcom/google/android/gms/internal/f$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ac$b;->a:Lcom/google/android/gms/tagmanager/v;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/f$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ac$b;->b:Lcom/google/android/gms/internal/f$a;

    return-object v0
.end method
