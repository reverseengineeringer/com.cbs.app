.class public Lcom/cbs/app/androiddata/model/LiveTvItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/androiddata/model/LiveTvItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/cbs/app/androiddata/model/SyncbakChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/cbs/app/androiddata/model/LiveTvItem$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/LiveTvItem$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/LiveTvItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/LiveTvItem;->a:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/LiveTvItem;->b:Ljava/lang/String;

    .line 48
    const-class v0, Lcom/cbs/app/androiddata/model/SyncbakChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/androiddata/model/SyncbakChannel;

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/LiveTvItem;->c:Lcom/cbs/app/androiddata/model/SyncbakChannel;

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getChannel()Lcom/cbs/app/androiddata/model/SyncbakChannel;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/LiveTvItem;->c:Lcom/cbs/app/androiddata/model/SyncbakChannel;

    return-object v0
.end method

.method public getmIconurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/LiveTvItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getmTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/LiveTvItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/LiveTvItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/LiveTvItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/LiveTvItem;->c:Lcom/cbs/app/androiddata/model/SyncbakChannel;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    return-void
.end method
