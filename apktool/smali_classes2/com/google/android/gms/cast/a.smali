.class public final Lcom/google/android/gms/cast/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/a$b;,
        Lcom/google/android/gms/cast/a$f;,
        Lcom/google/android/gms/cast/a$a;,
        Lcom/google/android/gms/cast/a$c;,
        Lcom/google/android/gms/cast/a$e;,
        Lcom/google/android/gms/cast/a$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<",
            "Lcom/google/android/gms/cast/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/cast/a$b;

.field private static final c:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/cast/internal/e;",
            "Lcom/google/android/gms/cast/a$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/cast/a$1;

    invoke-direct {v0}, Lcom/google/android/gms/cast/a$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/a;->c:Lcom/google/android/gms/common/api/a$b;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "Cast.API"

    sget-object v2, Lcom/google/android/gms/cast/a;->c:Lcom/google/android/gms/common/api/a$b;

    sget-object v3, Lcom/google/android/gms/cast/internal/k;->a:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/common/api/a$d;)V

    sput-object v0, Lcom/google/android/gms/cast/a;->a:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/cast/a$b$a;

    invoke-direct {v0}, Lcom/google/android/gms/cast/a$b$a;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    return-void
.end method
