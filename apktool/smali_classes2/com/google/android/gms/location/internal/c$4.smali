.class final Lcom/google/android/gms/location/internal/c$4;
.super Lcom/google/android/gms/location/internal/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/c;->a(Lcom/google/android/gms/common/api/b;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/PendingIntent;

.field final synthetic b:Lcom/google/android/gms/location/internal/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/c;Lcom/google/android/gms/common/api/b;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/c$4;->b:Lcom/google/android/gms/location/internal/c;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/c$4;->a:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/c$a;-><init>(Lcom/google/android/gms/common/api/b;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/a$c;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/location/internal/k;

    .line 1000
    new-instance v0, Lcom/google/android/gms/location/internal/c$4$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/internal/c$4$1;-><init>(Lcom/google/android/gms/location/internal/c$4;)V

    iget-object v1, p0, Lcom/google/android/gms/location/internal/c$4;->a:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/location/internal/k;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/f;)V

    .line 0
    return-void
.end method
