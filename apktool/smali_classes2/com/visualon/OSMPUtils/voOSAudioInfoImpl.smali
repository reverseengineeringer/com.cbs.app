.class public Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSAudioInfo;


# instance fields
.field private mFormat:Lcom/visualon/OSMPUtils/voOSAudioFormat;

.field private mLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPUtils/voOSAudioFormat;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mFormat:Lcom/visualon/OSMPUtils/voOSAudioFormat;

    .line 47
    iput-object p2, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mLanguage:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public Format()Lcom/visualon/OSMPUtils/voOSAudioFormat;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mFormat:Lcom/visualon/OSMPUtils/voOSAudioFormat;

    return-object v0
.end method

.method public Language()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 5

    .prologue
    const/16 v1, 0x100

    .line 56
    new-instance v0, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mFormat:Lcom/visualon/OSMPUtils/voOSAudioFormat;

    .line 57
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mFormat:Lcom/visualon/OSMPUtils/voOSAudioFormat;

    invoke-interface {v0, p1}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->parse(Landroid/os/Parcel;)Z

    .line 58
    new-array v0, v1, [B

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 61
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x100

    const-string v4, "utf-8"

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mLanguage:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mLanguage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 65
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
