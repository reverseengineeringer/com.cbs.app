.class final Lcom/google/android/gms/location/internal/c$2;
.super Lcom/google/android/gms/location/internal/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/c;->a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic b:Landroid/app/PendingIntent;

.field final synthetic c:Lcom/google/android/gms/location/internal/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/c;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/c$2;->c:Lcom/google/android/gms/location/internal/c;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/c$2;->a:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lcom/google/android/gms/location/internal/c$2;->b:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/c$a;-><init>(Lcom/google/android/gms/common/api/b;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/a$c;)V
    .locals 3

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/location/internal/k;

    .line 1000
    new-instance v0, Lcom/google/android/gms/location/internal/c$2$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/internal/c$2$1;-><init>(Lcom/google/android/gms/location/internal/c$2;)V

    iget-object v1, p0, Lcom/google/android/gms/location/internal/c$2;->a:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lcom/google/android/gms/location/internal/c$2;->b:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/f;)V

    .line 0
    return-void
.end method
