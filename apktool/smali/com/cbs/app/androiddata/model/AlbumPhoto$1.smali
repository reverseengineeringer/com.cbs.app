.class final Lcom/cbs/app/androiddata/model/AlbumPhoto$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/androiddata/model/AlbumPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/cbs/app/androiddata/model/AlbumPhoto;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2137
    new-instance v0, Lcom/cbs/app/androiddata/model/AlbumPhoto;

    invoke-direct {v0, p1}, Lcom/cbs/app/androiddata/model/AlbumPhoto;-><init>(Landroid/os/Parcel;)V

    .line 134
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    .line 1142
    new-array v0, p1, [Lcom/cbs/app/androiddata/model/AlbumPhoto;

    .line 134
    return-object v0
.end method
