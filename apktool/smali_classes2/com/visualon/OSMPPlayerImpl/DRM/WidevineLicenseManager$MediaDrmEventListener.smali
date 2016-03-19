.class Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager$MediaDrmEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager$MediaDrmEventListener;->this$0:Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager$1;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager$MediaDrmEventListener;-><init>(Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method
