.class public Lcom/cbs/app/pid/CBSAd;
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
            "Lcom/cbs/app/pid/CBSAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/cbs/app/pid/CBSAd$1;

    invoke-direct {v0}, Lcom/cbs/app/pid/CBSAd$1;-><init>()V

    sput-object v0, Lcom/cbs/app/pid/CBSAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/pid/CBSAd;->a:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/pid/CBSAd;->b:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/pid/CBSAd;->c:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/pid/CBSAd;->d:Z

    .line 91
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/cbs/app/pid/CBSAd;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/cbs/app/pid/CBSAd;->a:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/cbs/app/pid/CBSAd;->b:I

    .line 35
    iput p3, p0, Lcom/cbs/app/pid/CBSAd;->c:I

    .line 36
    iput-boolean p4, p0, Lcom/cbs/app/pid/CBSAd;->d:Z

    .line 37
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/cbs/app/pid/CBSAd;->d:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/cbs/app/pid/CBSAd;->c:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cbs/app/pid/CBSAd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/cbs/app/pid/CBSAd;->b:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/cbs/app/pid/CBSAd;->c:I

    .line 62
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cbs/app/pid/CBSAd;->a:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setStartTime(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/cbs/app/pid/CBSAd;->b:I

    .line 54
    return-void
.end method

.method public setWatched(Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/cbs/app/pid/CBSAd;->d:Z

    .line 70
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cbs/app/pid/CBSAd;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lcom/cbs/app/pid/CBSAd;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/cbs/app/pid/CBSAd;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-boolean v0, p0, Lcom/cbs/app/pid/CBSAd;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 84
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
