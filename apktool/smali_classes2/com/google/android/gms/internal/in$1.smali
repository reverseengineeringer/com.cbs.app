.class final Lcom/google/android/gms/internal/in$1;
.super Lcom/google/android/gms/internal/in$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/in;->a(Lcom/google/android/gms/common/api/b;[Lcom/google/android/gms/appdatasearch/UsageInfo;)Lcom/google/android/gms/common/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/in$b",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Lcom/google/android/gms/appdatasearch/UsageInfo;

.field final synthetic c:Lcom/google/android/gms/internal/in;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/in;Lcom/google/android/gms/common/api/b;Ljava/lang/String;[Lcom/google/android/gms/appdatasearch/UsageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/in$1;->c:Lcom/google/android/gms/internal/in;

    iput-object p3, p0, Lcom/google/android/gms/internal/in$1;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/in$1;->b:[Lcom/google/android/gms/appdatasearch/UsageInfo;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/in$b;-><init>(Lcom/google/android/gms/common/api/b;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ij;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/in$c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/in$c;-><init>(Lcom/google/android/gms/internal/iw$b;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/in$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/in$1;->b:[Lcom/google/android/gms/appdatasearch/UsageInfo;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ij;->a(Lcom/google/android/gms/internal/ik;Ljava/lang/String;[Lcom/google/android/gms/appdatasearch/UsageInfo;)V

    return-void
.end method
