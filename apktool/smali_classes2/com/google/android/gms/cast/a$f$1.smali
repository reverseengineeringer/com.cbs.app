.class final Lcom/google/android/gms/cast/a$f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/Status;

.field final synthetic b:Lcom/google/android/gms/cast/a$f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/a$f;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/a$f$1;->b:Lcom/google/android/gms/cast/a$f;

    iput-object p2, p0, Lcom/google/android/gms/cast/a$f$1;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/a$f$1;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
