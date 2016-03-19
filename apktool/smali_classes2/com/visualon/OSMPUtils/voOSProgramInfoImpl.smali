.class public Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSProgramInfo;


# instance fields
.field ProgramID:I

.field ProgramName:Ljava/lang/String;

.field ProgramType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

.field SelInfo:I

.field StreamCount:I

.field StreamInfo:[Lcom/visualon/OSMPUtils/voOSStreamInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;I[Lcom/visualon/OSMPUtils/voOSStreamInfo;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramID:I

    .line 57
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->SelInfo:I

    .line 58
    iput-object p3, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramName:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    .line 60
    iput p5, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamCount:I

    .line 61
    iput-object p6, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamInfo:[Lcom/visualon/OSMPUtils/voOSStreamInfo;

    .line 62
    return-void
.end method


# virtual methods
.method public getProgramID()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramID:I

    return v0
.end method

.method public getProgramName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramName:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    return-object v0
.end method

.method public getSelInfo()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->SelInfo:I

    return v0
.end method

.method public getStreamCount()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamCount:I

    return v0
.end method

.method public getStreamInfo()[Lcom/visualon/OSMPUtils/voOSStreamInfo;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamInfo:[Lcom/visualon/OSMPUtils/voOSStreamInfo;

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 7

    .prologue
    const/16 v2, 0x100

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramID:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->SelInfo:I

    .line 71
    new-array v0, v2, [B

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 74
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x100

    const-string v5, "utf-8"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramName:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    if-gez v0, :cond_0

    move v0, v1

    .line 84
    :cond_0
    if-le v0, v6, :cond_1

    move v0, v1

    .line 86
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamCount:I

    .line 88
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamCount:I

    if-lez v0, :cond_2

    .line 89
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamCount:I

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSStreamInfo;

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamInfo:[Lcom/visualon/OSMPUtils/voOSStreamInfo;

    .line 90
    :cond_2
    :goto_1
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamCount:I

    if-ge v1, v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamInfo:[Lcom/visualon/OSMPUtils/voOSStreamInfo;

    new-instance v2, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;

    invoke-direct {v2}, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;-><init>()V

    aput-object v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamInfo:[Lcom/visualon/OSMPUtils/voOSStreamInfo;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/visualon/OSMPUtils/voOSStreamInfo;->parse(Landroid/os/Parcel;)Z

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 95
    :cond_3
    return v6
.end method
