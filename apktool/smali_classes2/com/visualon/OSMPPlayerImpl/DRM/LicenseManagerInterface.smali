.class public interface abstract Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final RIGHTS_EXPIRED:I = 0x2

.field public static final RIGHTS_INVALID:I = 0x1

.field public static final RIGHTS_NOT_ACQUIRED:I = 0x3

.field public static final RIGHTS_VALID:I


# virtual methods
.method public abstract deleteAllLicenses()I
.end method

.method public abstract deleteExpiredLicenses()I
.end method

.method public abstract deleteLicense(Ljava/lang/String;)I
.end method

.method public abstract getCustomData()Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;
.end method

.method public abstract getLicenseDetails(Ljava/lang/String;)Landroid/content/ContentValues;
.end method

.method public abstract initDrmStack()Z
.end method

.method public abstract onSyncDrmEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setLicenseRetriever(Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract uninitDrmStack()I
.end method
