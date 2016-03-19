.class public final Lcom/google/android/gms/appindexing/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<",
            "Ljava/lang/Object;",
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

.field public static final c:Lcom/google/android/gms/appindexing/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/a;->b:Lcom/google/android/gms/common/api/a;

    sput-object v0, Lcom/google/android/gms/appindexing/b;->a:Lcom/google/android/gms/common/api/a;

    sget-object v0, Lcom/google/android/gms/appdatasearch/a;->b:Lcom/google/android/gms/common/api/a;

    sput-object v0, Lcom/google/android/gms/appindexing/b;->b:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/in;

    invoke-direct {v0}, Lcom/google/android/gms/internal/in;-><init>()V

    sput-object v0, Lcom/google/android/gms/appindexing/b;->c:Lcom/google/android/gms/appindexing/c;

    return-void
.end method
