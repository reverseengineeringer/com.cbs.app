.class final Lcom/google/android/gms/internal/ha$b;
.super Lcom/google/android/gms/internal/io;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/io",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ha$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ha$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/jk$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/jk$b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ha$a;Lcom/google/android/gms/internal/jk$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ha$a",
            "<TT;>;",
            "Lcom/google/android/gms/internal/jk$b",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/ha$b$1;

    invoke-direct {v1, p3, p2}, Lcom/google/android/gms/internal/ha$b$1;-><init>(Lcom/google/android/gms/internal/jk$b;Lcom/google/android/gms/internal/ha$a;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/io;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/jk$a;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ha$b;->a:Lcom/google/android/gms/internal/ha$a;

    iput-object p3, p0, Lcom/google/android/gms/internal/ha$b;->b:Lcom/google/android/gms/internal/jk$b;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/gs;)Lcom/google/android/gms/internal/jk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gs;",
            ")",
            "Lcom/google/android/gms/internal/jk",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lcom/google/android/gms/internal/gs;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1}, Lcom/google/android/gms/internal/lu;->a(Lcom/google/android/gms/internal/gs;)Lcom/google/android/gms/internal/y$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jk;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/y$a;)Lcom/google/android/gms/internal/jk;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Ljava/io/InputStream;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/ha$b;->b:Lcom/google/android/gms/internal/jk$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/ha$b;->a:Lcom/google/android/gms/internal/ha$a;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ha$a;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/jk$b;->a(Ljava/lang/Object;)V

    .line 0
    return-void
.end method
