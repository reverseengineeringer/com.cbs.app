.class public Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSVideoFormat;


# instance fields
.field private mHeight:I

.field private mType:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;->mWidth:I

    .line 47
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;->mHeight:I

    .line 48
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;->mType:I

    .line 49
    return-void
.end method


# virtual methods
.method public Height()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;->mHeight:I

    return v0
.end method

.method public Type()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;->mType:I

    return v0
.end method

.method public Width()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;->mWidth:I

    return v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;->mWidth:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;->mHeight:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;->mType:I

    .line 60
    const/4 v0, 0x1

    return v0
.end method
