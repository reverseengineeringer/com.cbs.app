.class final Lcom/google/android/gms/cast/i$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/internal/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/i$d$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/cast/i;

.field private b:Lcom/google/android/gms/common/api/b;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/i;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/cast/i$d;->a:Lcom/google/android/gms/cast/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/cast/i$d;->c:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/cast/i$d;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/cast/i$d;->c:J

    return-wide v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/i$d;->b:Lcom/google/android/gms/common/api/b;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/i$d;->b:Lcom/google/android/gms/common/api/b;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "No GoogleApiClient available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    iget-object v1, p0, Lcom/google/android/gms/cast/i$d;->b:Lcom/google/android/gms/common/api/b;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/cast/a$b;->a(Lcom/google/android/gms/common/api/b;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/i$d$a;

    invoke-direct {v1, p0, p3, p4}, Lcom/google/android/gms/cast/i$d$a;-><init>(Lcom/google/android/gms/cast/i$d;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method
