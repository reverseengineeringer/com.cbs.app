.class public final Lcom/google/android/gms/cast/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/b$a;,
        Lcom/google/android/gms/cast/b$c;,
        Lcom/google/android/gms/cast/b$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<",
            "Lcom/google/android/gms/cast/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/cast/c;

.field private static final c:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/internal/ir;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/internal/ir;",
            "Lcom/google/android/gms/cast/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$d;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$d;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/b;->c:Lcom/google/android/gms/common/api/a$d;

    new-instance v0, Lcom/google/android/gms/cast/b$1;

    invoke-direct {v0}, Lcom/google/android/gms/cast/b$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/b;->d:Lcom/google/android/gms/common/api/a$b;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "CastRemoteDisplay.API"

    sget-object v2, Lcom/google/android/gms/cast/b;->d:Lcom/google/android/gms/common/api/a$b;

    sget-object v3, Lcom/google/android/gms/cast/b;->c:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/common/api/a$d;)V

    sput-object v0, Lcom/google/android/gms/cast/b;->a:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/iq;

    sget-object v1, Lcom/google/android/gms/cast/b;->c:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/iq;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    sput-object v0, Lcom/google/android/gms/cast/b;->b:Lcom/google/android/gms/cast/c;

    return-void
.end method
