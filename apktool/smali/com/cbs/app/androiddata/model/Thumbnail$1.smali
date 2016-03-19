.class final Lcom/cbs/app/androiddata/model/Thumbnail$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/androiddata/model/Thumbnail;
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
        "Lcom/cbs/app/androiddata/model/Thumbnail;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2017
    new-instance v0, Lcom/cbs/app/androiddata/model/Thumbnail;

    invoke-direct {v0, p1}, Lcom/cbs/app/androiddata/model/Thumbnail;-><init>(Landroid/os/Parcel;)V

    .line 14
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    .line 1022
    new-array v0, p1, [Lcom/cbs/app/androiddata/model/Thumbnail;

    .line 14
    return-object v0
.end method
