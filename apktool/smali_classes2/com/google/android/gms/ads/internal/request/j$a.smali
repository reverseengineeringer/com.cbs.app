.class public abstract Lcom/google/android/gms/ads/internal/request/j$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/ads/internal/request/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/j$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/ads/internal/request/j$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/request/j;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/ads/internal/request/j;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/ads/internal/request/j;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/request/j$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/request/j$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 0
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "com.google.android.gms.ads.internal.request.IAdRequestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->CREATOR:Lcom/google/android/gms/ads/internal/request/f;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/request/f;->a(Landroid/os/Parcel;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/request/j$a;->a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :sswitch_2
    const-string v1, "com.google.android.gms.ads.internal.request.IAdRequestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->CREATOR:Lcom/google/android/gms/ads/internal/request/f;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/request/f;->a(Landroid/os/Parcel;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    move-result-object v1

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1000
    if-nez v3, :cond_3

    .line 0
    :goto_3
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/internal/request/j$a;->a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/k;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_2

    .line 1000
    :cond_3
    const-string v0, "com.google.android.gms.ads.internal.request.IAdResponseListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v4, v0, Lcom/google/android/gms/ads/internal/request/k;

    if-eqz v4, :cond_4

    check-cast v0, Lcom/google/android/gms/ads/internal/request/k;

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/google/android/gms/ads/internal/request/k$a$a;

    invoke-direct {v0, v3}, Lcom/google/android/gms/ads/internal/request/k$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    .line 0
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
