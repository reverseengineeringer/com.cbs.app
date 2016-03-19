.class public Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSSEIUserData;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voOSSEIUserDataImpl"


# instance fields
.field private nCount:I

.field private nSize:[I

.field private pBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataBuffer()[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->pBuffer:[B

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nCount:I

    return v0
.end method

.method public getFieldLength(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nSize:[I

    if-nez v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nSize:[I

    array-length v1, v1

    if-le v1, p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nSize:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public parse(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nCount:I

    .line 60
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nCount:I

    :goto_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nSize:[I

    .line 61
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nSize:[I

    aput v1, v0, v1

    move v0, v1

    .line 63
    :goto_1
    iget v2, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nCount:I

    if-ge v0, v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nSize:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 65
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nSize:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    if-lez v1, :cond_2

    .line 68
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->pBuffer:[B

    .line 69
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->pBuffer:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 71
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 72
    return-void
.end method
