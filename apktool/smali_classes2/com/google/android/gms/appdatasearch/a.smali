.class public final Lcom/google/android/gms/appdatasearch/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/internal/im;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/appdatasearch/k;

.field private static final d:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/internal/im;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$d;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$d;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/a;->a:Lcom/google/android/gms/common/api/a$d;

    new-instance v0, Lcom/google/android/gms/appdatasearch/a$1;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/a$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/a;->d:Lcom/google/android/gms/common/api/a$b;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "AppDataSearch.LIGHTWEIGHT_API"

    sget-object v2, Lcom/google/android/gms/appdatasearch/a;->d:Lcom/google/android/gms/common/api/a$b;

    sget-object v3, Lcom/google/android/gms/appdatasearch/a;->a:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/common/api/a$d;)V

    sput-object v0, Lcom/google/android/gms/appdatasearch/a;->b:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/in;

    invoke-direct {v0}, Lcom/google/android/gms/internal/in;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/a;->c:Lcom/google/android/gms/appdatasearch/k;

    return-void
.end method
