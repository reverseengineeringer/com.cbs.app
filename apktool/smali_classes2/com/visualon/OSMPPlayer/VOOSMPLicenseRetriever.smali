.class public interface abstract Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VOOSMP_ERR_CLIENT:I = 0x3

.field public static final VOOSMP_ERR_CONNECTION:I = 0x1

.field public static final VOOSMP_ERR_NONE:I = 0x0

.field public static final VOOSMP_ERR_SERVER:I = 0x2

.field public static final VOOSMP_ERR_UNKNOWN:I = 0x10000000


# virtual methods
.method public abstract acquireLicense(Ljava/lang/String;[B)Ljava/lang/String;
.end method

.method public abstract getErrorCode()I
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract getHTTPStatusCode()I
.end method
