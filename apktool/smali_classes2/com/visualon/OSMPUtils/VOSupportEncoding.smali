.class public final Lcom/visualon/OSMPUtils/VOSupportEncoding;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AC3:Ljava/lang/String; = "AC3"

.field private static final DECODE:Ljava/lang/String; = "OMX.dolby.eac3.decoder"

.field private static final EAC3:Ljava/lang/String; = "EAC3"

.field private static final RAW:Ljava/lang/String; = "OMX.google.raw.decoder"


# instance fields
.field private final isPlugged:I

.field private final mCapableEncodings:[I


# direct methods
.method public constructor <init>([II)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p1, :cond_0

    .line 34
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->mCapableEncodings:[I

    .line 35
    iget-object v0, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->mCapableEncodings:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 39
    :goto_0
    iput p2, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->isPlugged:I

    .line 40
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->mCapableEncodings:[I

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    if-ne p0, p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    instance-of v2, p1, Lcom/visualon/OSMPUtils/VOSupportEncoding;

    if-nez v2, :cond_2

    move v0, v1

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    check-cast p1, Lcom/visualon/OSMPUtils/VOSupportEncoding;

    .line 74
    iget-object v2, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->mCapableEncodings:[I

    iget-object v3, p1, Lcom/visualon/OSMPUtils/VOSupportEncoding;->mCapableEncodings:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->isPlugged:I

    iget v3, p1, Lcom/visualon/OSMPUtils/VOSupportEncoding;->isPlugged:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getCapableEncodings()Ljava/util/HashMap;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    const/4 v3, 0x5

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    invoke-virtual {p0, v2}, Lcom/visualon/OSMPUtils/VOSupportEncoding;->supportsEncoding(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OMX.google.raw.decoder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_0
    invoke-virtual {p0, v3}, Lcom/visualon/OSMPUtils/VOSupportEncoding;->supportsEncoding(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OMX.google.raw.decoder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :goto_1
    return-object v0

    .line 53
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OMX.dolby.eac3.decoder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OMX.dolby.eac3.decoder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final getIsPlugged()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->isPlugged:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->mCapableEncodings:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x21

    return v0
.end method

.method public final supportsEncoding(I)Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->mCapableEncodings:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SupportEncoding : capable_encodings ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->mCapableEncodings:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPlugged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->isPlugged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
