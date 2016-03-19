.class public Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSSubtitleInfo;


# instance fields
.field private mAlign:Ljava/lang/String;

.field private mCodingType:I

.field private mLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Align()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mAlign:Ljava/lang/String;

    return-object v0
.end method

.method public CodingType()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mCodingType:I

    return v0
.end method

.method public Language()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 6

    .prologue
    const/16 v0, 0x100

    const/16 v5, 0x8

    .line 15
    new-array v0, v0, [B

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 18
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x100

    const-string v4, "utf-8"

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mLanguage:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mLanguage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mCodingType:I

    .line 27
    new-array v0, v5, [B

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 30
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-string v4, "utf-8"

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mAlign:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mAlign:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mAlign:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 22
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 34
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method
