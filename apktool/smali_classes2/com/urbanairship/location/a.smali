.class final Lcom/urbanairship/location/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/location/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/location/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/common/api/b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/urbanairship/location/a;->a:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/location/a;)Lcom/google/android/gms/common/api/b;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/urbanairship/location/a;->b:Lcom/google/android/gms/common/api/b;

    return-object v0
.end method

.method static synthetic b(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/google/android/gms/location/LocationRequest;
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/urbanairship/location/a;->c(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/google/android/gms/location/LocationRequest;
    .locals 4

    .prologue
    .line 136
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationRequestOptions;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationRequestOptions;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(F)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lcom/urbanairship/location/LocationRequestOptions;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 157
    :goto_0
    return-object v0

    .line 144
    :pswitch_0
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    goto :goto_0

    .line 147
    :pswitch_1
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    goto :goto_0

    .line 150
    :pswitch_2
    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    goto :goto_0

    .line 153
    :pswitch_3
    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/urbanairship/location/LocationRequestOptions;",
            ")",
            "Lcom/urbanairship/k",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/urbanairship/location/a;->b:Lcom/google/android/gms/common/api/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/a;->b:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/urbanairship/location/a$a;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/location/a$a;-><init>(Lcom/urbanairship/location/a;Lcom/urbanairship/location/LocationRequestOptions;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/urbanairship/location/a;->b:Lcom/google/android/gms/common/api/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/a;->b:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    sget-object v0, Lcom/google/android/gms/location/h;->b:Lcom/google/android/gms/location/c;

    iget-object v1, p0, Lcom/urbanairship/location/a;->b:Lcom/google/android/gms/common/api/b;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/c;->a(Lcom/google/android/gms/common/api/b;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/c;

    goto :goto_0
.end method

.method public final a(Lcom/urbanairship/location/LocationRequestOptions;Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/urbanairship/location/a;->b:Lcom/google/android/gms/common/api/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/a;->b:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-static {p1}, Lcom/urbanairship/location/a;->c(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/google/android/gms/location/h;->b:Lcom/google/android/gms/location/c;

    iget-object v2, p0, Lcom/urbanairship/location/a;->b:Lcom/google/android/gms/common/api/b;

    invoke-interface {v1, v2, v0, p2}, Lcom/google/android/gms/location/c;->a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/c;

    goto :goto_0
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 71
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/location/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 75
    if-eqz v2, :cond_0

    .line 118
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v1

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FusedLocationAdapter - Google Play services is currently unavailable, unable to connect for fused location. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 85
    :cond_0
    new-instance v2, Lcom/google/android/gms/common/api/b$a;

    iget-object v3, p0, Lcom/urbanairship/location/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/b$a;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/google/android/gms/location/h;->a:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/location/a$2;

    invoke-direct {v3, p0, v1}, Lcom/urbanairship/location/a$2;-><init>(Lcom/urbanairship/location/a;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/b$b;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/location/a$1;

    invoke-direct {v3, p0, v1}, Lcom/urbanairship/location/a$1;-><init>(Lcom/urbanairship/location/a;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/b$c;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/b$a;->b()Lcom/google/android/gms/common/api/b;

    move-result-object v2

    iput-object v2, p0, Lcom/urbanairship/location/a;->b:Lcom/google/android/gms/common/api/b;

    .line 108
    iget-object v2, p0, Lcom/urbanairship/location/a;->b:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/b;->c()V

    .line 111
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    iget-object v0, p0, Lcom/urbanairship/location/a;->b:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->e()Z

    move-result v0

    goto :goto_0

    .line 112
    :catch_1
    move-exception v1

    .line 113
    const-string v2, "FusedLocationAdapter - Exception while connecting to fused location"

    invoke-static {v2, v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    iget-object v1, p0, Lcom/urbanairship/location/a;->b:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/b;->d()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/urbanairship/location/a;->b:Lcom/google/android/gms/common/api/b;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/urbanairship/location/a;->b:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->d()V

    .line 126
    :cond_0
    return-void
.end method
