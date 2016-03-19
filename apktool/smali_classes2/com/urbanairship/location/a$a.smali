.class final Lcom/urbanairship/location/a$a;
.super Lcom/urbanairship/location/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/location/a;

.field private final b:Lcom/google/android/gms/location/LocationRequest;

.field private final c:Lcom/google/android/gms/location/f;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/a;Lcom/urbanairship/location/LocationRequestOptions;)V
    .locals 5

    .prologue
    .line 174
    iput-object p1, p0, Lcom/urbanairship/location/a$a;->a:Lcom/urbanairship/location/a;

    invoke-direct {p0}, Lcom/urbanairship/location/c;-><init>()V

    .line 175
    invoke-static {p2}, Lcom/urbanairship/location/a;->b(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/a$a;->b:Lcom/google/android/gms/location/LocationRequest;

    .line 176
    iget-object v0, p0, Lcom/urbanairship/location/a$a;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->b()Lcom/google/android/gms/location/LocationRequest;

    .line 178
    new-instance v0, Lcom/urbanairship/location/a$a$1;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/location/a$a$1;-><init>(Lcom/urbanairship/location/a$a;Lcom/urbanairship/location/a;)V

    iput-object v0, p0, Lcom/urbanairship/location/a$a;->c:Lcom/google/android/gms/location/f;

    .line 186
    sget-object v0, Lcom/google/android/gms/location/h;->b:Lcom/google/android/gms/location/c;

    invoke-static {p1}, Lcom/urbanairship/location/a;->a(Lcom/urbanairship/location/a;)Lcom/google/android/gms/common/api/b;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/location/a$a;->b:Lcom/google/android/gms/location/LocationRequest;

    iget-object v3, p0, Lcom/urbanairship/location/a$a;->c:Lcom/google/android/gms/location/f;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/location/c;->a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/f;Landroid/os/Looper;)Lcom/google/android/gms/common/api/c;

    .line 187
    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 3

    .prologue
    .line 192
    sget-object v0, Lcom/google/android/gms/location/h;->b:Lcom/google/android/gms/location/c;

    iget-object v1, p0, Lcom/urbanairship/location/a$a;->a:Lcom/urbanairship/location/a;

    invoke-static {v1}, Lcom/urbanairship/location/a;->a(Lcom/urbanairship/location/a;)Lcom/google/android/gms/common/api/b;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/location/a$a;->c:Lcom/google/android/gms/location/f;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/c;->a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/location/f;)Lcom/google/android/gms/common/api/c;

    .line 193
    return-void
.end method
