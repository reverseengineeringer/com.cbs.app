.class final Lcom/cbs/app/androiddata/model/VideoGroup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/androiddata/model/VideoGroup;
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
        "Lcom/cbs/app/androiddata/model/VideoGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2157
    new-instance v0, Lcom/cbs/app/androiddata/model/VideoGroup;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cbs/app/androiddata/model/VideoGroup;-><init>(Landroid/os/Parcel;B)V

    .line 155
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    .line 1161
    new-array v0, p1, [Lcom/cbs/app/androiddata/model/VideoGroup;

    .line 155
    return-object v0
.end method
