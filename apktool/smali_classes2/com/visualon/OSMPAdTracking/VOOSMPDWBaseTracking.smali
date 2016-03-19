.class public Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;
.super Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;
.source "SourceFile"


# static fields
.field protected static final DW_ADASTID:Ljava/lang/String; = "&adastid="

.field protected static DW_ADASTID_VALUE:Ljava/lang/String; = null

.field protected static final DW_ADBREAK:Ljava/lang/String; = "&adbreak="

.field protected static final DW_ADID:Ljava/lang/String; = "&adid="

.field protected static final DW_ADLENGTH:Ljava/lang/String; = "&adlength="

.field protected static final DW_ADNUM:Ljava/lang/String; = "&adnum="

.field protected static final DW_ADPOD:Ljava/lang/String; = "&adpod="

.field protected static final DW_ADPODPOS:Ljava/lang/String; = "&adpodpos="

.field protected static final DW_ADPOS:Ljava/lang/String; = "&adpos="

.field protected static final DW_ADTIME:Ljava/lang/String; = "&adtime="

.field protected static final DW_ADTITLE:Ljava/lang/String; = "&adtitle="

.field protected static final DW_ADTYPE:Ljava/lang/String; = "&adtype="

.field protected static final DW_BITRATE:Ljava/lang/String; = "&bitrate="

.field protected static final DW_BLOCKCNTRY:Ljava/lang/String; = "&blockcntry="

.field protected static final DW_CODEC:Ljava/lang/String; = "&codec="

.field protected static final DW_COMPONENTID:Ljava/lang/String; = "&componentid="

.field protected static DW_COMPONENTID_VALUE:Ljava/lang/String; = null

.field protected static final DW_DEVICE:Ljava/lang/String; = "&device="

.field protected static final DW_DISTNTWRK:Ljava/lang/String; = "&distntwrk="

.field protected static final DW_ENCODEPRFL:Ljava/lang/String; = "&encodeprfl="

.field protected static final DW_EVENT:Ljava/lang/String; = "&event="

.field protected static final DW_EVENTDUR:Ljava/lang/String; = "&eventdur="

.field protected static final DW_GESTVAL:Ljava/lang/String; = "&gestval="

.field protected static final DW_HTTPHeader:Ljava/lang/String; = "http://dw.cbsi.com/levt/video/e.gif?"

.field protected static final DW_MAPP:Ljava/lang/String; = "&mapp="

.field protected static final DW_MEDASTID:Ljava/lang/String; = "&medastid="

.field protected static final DW_MEDID:Ljava/lang/String; = "&medid="

.field protected static final DW_MEDLENGTH:Ljava/lang/String; = "&medlength="

.field protected static final DW_MEDNUM:Ljava/lang/String; = "&mednum="

.field protected static final DW_MEDRLS:Ljava/lang/String; = "&medrls="

.field protected static final DW_MEDTIME:Ljava/lang/String; = "&medtime="

.field protected static final DW_MEDTITLE:Ljava/lang/String; = "&medtitle="

.field protected static final DW_MEDTYPE:Ljava/lang/String; = "&medtype="

.field protected static final DW_MSO:Ljava/lang/String; = "&mso="

.field protected static final DW_PAGEURL:Ljava/lang/String; = "&pageurl="

.field protected static final DW_PART:Ljava/lang/String; = "&part="

.field protected static final DW_PLAYEREMBED:Ljava/lang/String; = "&playerembed="

.field protected static final DW_PLAYERLOC:Ljava/lang/String; = "&playerloc="

.field protected static final DW_PLAYERSZ:Ljava/lang/String; = "&playersz="

.field protected static final DW_PLAYERTIME:Ljava/lang/String; = "&playertime="

.field protected static final DW_QOSNUM:Ljava/lang/String; = "&qosnum="

.field protected static final DW_RECOMMEND:Ljava/lang/String; = "&recommend="

.field protected static final DW_RELSESSID:Ljava/lang/String; = "&relsessid="

.field protected static final DW_SDLVRYTYPE:Ljava/lang/String; = "&sdlvrytype="

.field protected static final DW_SITEID:Ljava/lang/String; = "&siteid="

.field protected static DW_SITEID_VALUE:Ljava/lang/String; = null

.field protected static final DW_SPONSORED:Ljava/lang/String; = "&sponsored="

.field protected static final DW_SRCHOST:Ljava/lang/String; = "&srchost="

.field protected static final DW_SUBJ:Ljava/lang/String; = "&subj="

.field protected static final DW_TS:Ljava/lang/String; = "&ts="

.field protected static final DW_URSUID:Ljava/lang/String; = "&ursuid="

.field protected static final DW_USRBNDWDTH:Ljava/lang/String; = "&usrbndwdth="

.field protected static final DW_V21:Ljava/lang/String; = "&v21="

.field protected static final DW_V25:Ljava/lang/String; = "&v25="

.field protected static final DW_VIDEOSZ:Ljava/lang/String; = "&videosz="

.field protected static final DW_VOLOME:Ljava/lang/String; = "&volume="

.field protected static final TAG:Ljava/lang/String; = "@@@VOOSMPDWBaseTracking"


# instance fields
.field protected eventCurrent:Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;

.field protected isFirstTimePass:Z

.field protected mADSStart:Z

.field protected mClosedCaptionTime:J

.field protected mContentStart:Z

.field protected mFullScreenTime:J

.field protected mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPartner:Ljava/lang/String;

.field protected mPauseTime:J

.field protected platformName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "244"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->DW_SITEID_VALUE:Ljava/lang/String;

    .line 77
    const-string v0, "43"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->DW_ADASTID_VALUE:Ljava/lang/String;

    .line 78
    const-string v0, ""

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->DW_COMPONENTID_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;-><init>(Landroid/content/Context;)V

    .line 80
    iput-wide v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mPauseTime:J

    .line 81
    iput-wide v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mFullScreenTime:J

    .line 82
    iput-wide v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mClosedCaptionTime:J

    .line 83
    iput-boolean v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mADSStart:Z

    .line 84
    iput-boolean v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mContentStart:Z

    .line 85
    iput-boolean v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->isFirstTimePass:Z

    .line 86
    const-string v0, "cbs"

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mPartner:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->platformName:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->eventCurrent:Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mHashMap:Ljava/util/HashMap;

    .line 105
    invoke-virtual {p0, p6}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->handlePropertyHashMap(Ljava/util/HashMap;)V

    .line 107
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->DW_COMPONENTID_VALUE:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mTrackingServer:Ljava/lang/String;

    .line 110
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    iput-object p4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mPartner:Ljava/lang/String;

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VOOSMPDWBaseTracking construct mTrackingServer is"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mTrackingServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected GetMedTime(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Ljava/lang/String;
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 169
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_SEEKS:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v0, v1, :cond_0

    .line 171
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->getCurrentContentPosition(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected GetTagString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "@@@VOOSMPDWBaseTracking"

    return-object v0
.end method

.method protected addHashMapV21()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method protected addV21()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mHashMap:Ljava/util/HashMap;

    const-string v1, "&v21="

    const-string v2, "native%20app"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VOOSMPDWBaseTracking handlePropertyHashMap: &v21=native%20app"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_0
    return-void
.end method

.method protected appendStringFromHashMap(Ljava/lang/StringBuffer;Z)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 181
    .line 182
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 185
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    .line 186
    :goto_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    const-string v6, "medtitle"

    if-ne v0, v6, :cond_0

    if-nez p2, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[TRACKING] medtitle, is not live, so skip it!"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 197
    :cond_0
    if-eqz v2, :cond_3

    .line 198
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[TRACKING], DW "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v4

    .line 205
    goto :goto_0

    :cond_1
    move v0, v2

    .line 208
    :goto_2
    if-nez v0, :cond_2

    move v0, v3

    :goto_3
    return v0

    :cond_2
    move v0, v4

    goto :goto_3

    :cond_3
    move-object v2, v0

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method protected appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 223
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->ALL:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, p2, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->getValueFromProperty(Ljava/lang/String;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)Ljava/lang/String;

    move-result-object v1

    .line 225
    const-string v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    if-nez v2, :cond_0

    .line 231
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    invoke-virtual {p0, p2}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->isNotContainKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const-string v1, "@@@VOOSMPDWBaseTracking"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---HSMAP(old)--- append to buffer, -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_1
    return-void

    .line 227
    :cond_2
    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v1, p3

    .line 236
    goto :goto_1

    :cond_4
    move-object v0, p2

    goto :goto_0
.end method

.method protected appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0, p2}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->isNotContainKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    if-eqz p4, :cond_0

    .line 216
    const-string v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    :cond_1
    return-void
.end method

.method protected handleOtherProperty(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method protected handlePropertyHashMap(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->addV21()V

    .line 135
    if-nez p1, :cond_1

    .line 150
    :cond_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 140
    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    const-string v3, "v21"

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->addHashMapV21()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    :cond_3
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->handleOtherProperty(Ljava/util/Map$Entry;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mHashMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected isNotContainKey(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 245
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mHashMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 248
    goto :goto_0
.end method

.method public notifyPlayNewVideo()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-super {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->notifyPlayNewVideo()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 98
    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mADSStart:Z

    .line 99
    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->mContentStart:Z

    .line 100
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method protected sendHTTPRequest(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 263
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;

    invoke-direct {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;-><init>()V

    .line 264
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->executeMultiThread([Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 258
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setDeviceType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)V
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->VO_OSMP_LAYOUT_PHONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    if-ne p1, v0, :cond_0

    .line 118
    const-string v0, "Android%20Phone"

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->platformName:Ljava/lang/String;

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v0, "Android%20Tablet"

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->platformName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method
