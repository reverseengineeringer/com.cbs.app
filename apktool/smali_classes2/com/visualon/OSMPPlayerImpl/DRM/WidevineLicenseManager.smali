.class public Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager$MediaDrmEventListener;
    }
.end annotation


# static fields
.field private static final MDTAG:Ljava/lang/String; = "WidevineLicenseManager"

.field private static final WIDEVINE_UUID:Ljava/lang/String; = "edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

.field private static final mMediaDRMMimeType:Ljava/lang/String; = "video/mp4"


# instance fields
.field private mCustomData:Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;

.field private mDRMUUID:Ljava/util/UUID;

.field private mLicenseOK:Z

.field private mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

.field private mMediaDRM:Landroid/media/MediaDrm;

.field private mMeidaDRMID:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mDRMUUID:Ljava/util/UUID;

    .line 45
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMeidaDRMID:[B

    .line 46
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMediaDRM:Landroid/media/MediaDrm;

    .line 47
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mCustomData:Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;

    .line 48
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mLicenseOK:Z

    .line 208
    return-void
.end method

.method private doProvision()V
    .locals 5

    .prologue
    const/16 v4, 0x400

    .line 217
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMediaDRM:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&signedRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    const/4 v1, 0x0

    .line 232
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "https"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-static {}, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->trustAllHosts()V

    .line 235
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 241
    :goto_0
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 242
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 243
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 244
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 245
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 250
    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 251
    new-array v2, v4, [B

    .line 254
    :goto_2
    const/4 v3, 0x0

    const/16 v4, 0x400

    :try_start_2
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 255
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 257
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 263
    :try_start_3
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMediaDRM:Landroid/media/MediaDrm;

    invoke-virtual {v1, v0}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V
    :try_end_3
    .catch Landroid/media/DeniedByServerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 268
    :goto_3
    return-void

    .line 225
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_3

    .line 239
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 247
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 265
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/media/DeniedByServerException;->printStackTrace()V

    goto :goto_3
.end method

.method private static trustAllHosts()V
    .locals 4

    .prologue
    .line 272
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager$1;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager$1;-><init>()V

    .line 288
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 292
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 293
    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 294
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public deleteAllLicenses()I
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public deleteExpiredLicenses()I
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public deleteLicense(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomData()Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mCustomData:Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;

    return-object v0
.end method

.method public getLicenseDetails(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public initDrmStack()Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    const-string v2, "edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mDRMUUID:Ljava/util/UUID;

    .line 61
    :try_start_0
    new-instance v2, Landroid/media/MediaDrm;

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mDRMUUID:Ljava/util/UUID;

    invoke-direct {v2, v3}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMediaDRM:Landroid/media/MediaDrm;
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMediaDRM:Landroid/media/MediaDrm;

    new-instance v3, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager$MediaDrmEventListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager$MediaDrmEventListener;-><init>(Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager$1;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 69
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mDRMUUID:Ljava/util/UUID;

    invoke-static {v2}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[INFO] isCryptoSchemeSupported : true:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mDRMUUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    :try_start_1
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMediaDRM:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMeidaDRMID:[B
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/media/ResourceBusyException; {:try_start_1 .. :try_end_1} :catch_4

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 63
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/media/UnsupportedSchemeException;->printStackTrace()V

    move v0, v1

    .line 64
    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[INFO] isCryptoSchemeSupported : false:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mDRMUUID:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 74
    goto :goto_0

    .line 81
    :catch_1
    move-exception v2

    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->doProvision()V

    .line 84
    :try_start_2
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMediaDRM:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMeidaDRMID:[B
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/media/ResourceBusyException; {:try_start_2 .. :try_end_2} :catch_3

    .line 93
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMeidaDRMID:[B

    if-nez v2, :cond_0

    move v0, v1

    .line 96
    goto :goto_0

    .line 86
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/media/NotProvisionedException;->printStackTrace()V

    move v0, v1

    .line 87
    goto :goto_0

    .line 89
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/media/ResourceBusyException;->printStackTrace()V

    move v0, v1

    .line 90
    goto :goto_0

    .line 99
    :catch_4
    move-exception v0

    const-string v0, "WidevineLicenseManager"

    const-string v2, "[ERROR] mMediaDrm.openSession() : ResourceBusyException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 100
    goto :goto_0
.end method

.method public onSyncDrmEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 134
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;->VO_OSMP_SRC_CB_DRM_INIT_DATA:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;

    if-ne p1, v0, :cond_3

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    check-cast p4, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;

    .line 137
    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->getDRMInitData()[B

    move-result-object v2

    .line 139
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mLicenseOK:Z

    if-ne v0, v1, :cond_0

    .line 140
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_MULTIPLE_INSTANCES_NOT_SUPPORTED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    return-object v0

    .line 145
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMediaDRM:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMeidaDRMID:[B

    const-string v3, "video/mp4"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 152
    if-nez v0, :cond_1

    .line 153
    :try_start_2
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    monitor-exit p0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 148
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/media/NotProvisionedException;->printStackTrace()V

    .line 149
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    monitor-exit p0

    goto :goto_0

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    if-nez v1, :cond_2

    .line 157
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    monitor-exit p0

    goto :goto_0

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;->acquireLicense(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 162
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 165
    :try_start_4
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMediaDRM:Landroid/media/MediaDrm;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMeidaDRMID:[B

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B
    :try_end_4
    .catch Landroid/media/NotProvisionedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/media/DeniedByServerException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    :try_start_5
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMeidaDRMID:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 176
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMeidaDRMID:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMeidaDRMID:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;

    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->getDRMInitDataHandle()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;-><init>(J[B)V

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mCustomData:Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mLicenseOK:Z

    .line 181
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 182
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Landroid/media/NotProvisionedException;->printStackTrace()V

    .line 168
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    monitor-exit p0

    goto :goto_0

    .line 170
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/media/DeniedByServerException;->printStackTrace()V

    .line 171
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 184
    :cond_3
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0
.end method

.method public setLicenseRetriever(Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 127
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    .line 128
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public uninitDrmStack()I
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMeidaDRMID:[B

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMediaDRM:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMeidaDRMID:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 111
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMeidaDRMID:[B

    .line 113
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMediaDRM:Landroid/media/MediaDrm;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;->mMediaDRM:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 117
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
