.class final Lcom/google/android/gms/common/i$t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "t"
.end annotation


# static fields
.field static final a:[Lcom/google/android/gms/common/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/i$a;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/common/i$t$1;

    const-string v3, "0\u0082\u0003\u00bd0\u0082\u0002\u00a5\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00da\u00d7\u00fb\u00aa\\\u00af\u0019\u009b0"

    invoke-static {v3}, Lcom/google/android/gms/common/i$a;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/i$t$1;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/common/i$t$2;

    const-string v3, "0\u0082\u0003\u00bd0\u0082\u0002\u00a5\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00fa\u00c1\u00fb\u00b9^U\u00b6\u009f0"

    invoke-static {v3}, Lcom/google/android/gms/common/i$a;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/i$t$2;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/i$t;->a:[Lcom/google/android/gms/common/i$a;

    return-void
.end method
