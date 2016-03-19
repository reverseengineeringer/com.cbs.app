.class public Lcom/google/android/gms/location/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/h$a;
    }
.end annotation


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

.field public static final b:Lcom/google/android/gms/location/c;

.field public static final c:Lcom/google/android/gms/location/d;

.field public static final d:Lcom/google/android/gms/location/i;

.field private static final e:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/location/internal/k;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/location/internal/k;",
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

    sput-object v0, Lcom/google/android/gms/location/h;->e:Lcom/google/android/gms/common/api/a$d;

    new-instance v0, Lcom/google/android/gms/location/h$1;

    invoke-direct {v0}, Lcom/google/android/gms/location/h$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/h;->f:Lcom/google/android/gms/common/api/a$b;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "LocationServices.API"

    sget-object v2, Lcom/google/android/gms/location/h;->f:Lcom/google/android/gms/common/api/a$b;

    sget-object v3, Lcom/google/android/gms/location/h;->e:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/common/api/a$d;)V

    sput-object v0, Lcom/google/android/gms/location/h;->a:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/location/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/h;->b:Lcom/google/android/gms/location/c;

    new-instance v0, Lcom/google/android/gms/location/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/location/d;

    new-instance v0, Lcom/google/android/gms/location/internal/p;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/h;->d:Lcom/google/android/gms/location/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/common/api/a$d;
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/h;->e:Lcom/google/android/gms/common/api/a$d;

    return-object v0
.end method
