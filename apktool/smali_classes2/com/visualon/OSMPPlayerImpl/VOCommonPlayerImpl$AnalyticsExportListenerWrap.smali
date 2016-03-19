.class Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$AnalyticsExportListenerWrap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnalyticsExportListenerWrap"
.end annotation


# instance fields
.field private m_listener:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;)V
    .locals 1

    .prologue
    .line 1975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$AnalyticsExportListenerWrap;->m_listener:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    .line 1976
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$AnalyticsExportListenerWrap;->m_listener:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    .line 1977
    return-void
.end method


# virtual methods
.method public onVOAnalyticsEvent()V
    .locals 1

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$AnalyticsExportListenerWrap;->m_listener:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$AnalyticsExportListenerWrap;->m_listener:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;->onVOAnalyticsEvent()V

    .line 1981
    :cond_0
    return-void
.end method
