.class public Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;
.super Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking$1;
    }
.end annotation


# static fields
.field protected static final DW_V22:Ljava/lang/String; = "&v22="

.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPDW2Tracking"

.field protected static str_DW_DEVICE:Ljava/lang/String;

.field protected static str_DW_Gesture:Ljava/lang/String;

.field protected static str_DW_MApp:Ljava/lang/String;

.field protected static str_DW_MEDASTID:Ljava/lang/String;

.field protected static str_DW_Medid:Ljava/lang/String;

.field protected static str_DW_Medid_dvr:Ljava/lang/String;

.field protected static str_DW_Medid_live:Ljava/lang/String;

.field protected static str_DW_Medid_vod:Ljava/lang/String;

.field protected static str_DW_SDLVRYTYPE:Ljava/lang/String;

.field protected static str_DW_SRCHOST:Ljava/lang/String;

.field protected static str_V22_live:Ljava/lang/String;

.field protected static str_V22_other:Ljava/lang/String;


# instance fields
.field private mSegmentNo:I

.field protected mStartPlayTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "News_Live_APP;UVP;3.4.1"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_MApp:Ljava/lang/String;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_DEVICE:Ljava/lang/String;

    .line 29
    const-string v0, "60Minutes_allAccess_Android"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_SRCHOST:Ljava/lang/String;

    .line 30
    const-string v0, "595"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_MEDASTID:Ljava/lang/String;

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    .line 32
    const-string v0, "9mwStzqtXKyib_egzSUPPh4DldNaEjJ2"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_V22_live:Ljava/lang/String;

    .line 33
    const-string v0, "78eBaFekjDhTV_FhUjN_WA0joE9eelco"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_V22_other:Ljava/lang/String;

    .line 34
    const-string v0, "305276483626"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Medid_live:Ljava/lang/String;

    .line 35
    const-string v0, "320600643969"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Medid_vod:Ljava/lang/String;

    .line 36
    const-string v0, "320600643969"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Medid_dvr:Ljava/lang/String;

    .line 37
    const-string v0, "999999"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Medid:Ljava/lang/String;

    .line 38
    const-string v0, "1"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_SDLVRYTYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
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
    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mSegmentNo:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mStartPlayTime:J

    .line 49
    return-void
.end method

.method private GetDevice()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 141
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 142
    const-string v0, "type:mobile"

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";os:android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";ver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";cpu:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 148
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 150
    :cond_0
    const-string v1, "ARM"

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";screensz:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_DEVICE:Ljava/lang/String;

    .line 163
    :cond_1
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method private GetMedID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_GIMA:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mEngType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    if-ne v0, v1, :cond_0

    .line 127
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Medid:Ljava/lang/String;

    .line 138
    :goto_0
    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isDvr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Medid_dvr:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isLive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Medid_live:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_2
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Medid_vod:Ljava/lang/String;

    goto :goto_0
.end method

.method private GetMedLength(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x3e8

    .line 185
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isLive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string v2, "-1"

    .line 214
    :goto_0
    return-object v2

    .line 191
    :cond_0
    const-wide/16 v0, 0x0

    .line 192
    const/4 v2, 0x1

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 194
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    .line 195
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lwc test ad n:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", str:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v2, :cond_3

    .line 202
    iget-wide v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mContentTime:J

    div-long/2addr v0, v4

    .line 203
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 204
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getDuration()J

    move-result-wide v0

    div-long/2addr v0, v4

    .line 205
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 211
    :goto_1
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lwc test content n:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", str:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    :cond_3
    iget-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mContentTime:J

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private GetSDLVRYTYPE()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_GIMA:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mEngType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    if-ne v0, v1, :cond_0

    .line 221
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_SDLVRYTYPE:Ljava/lang/String;

    .line 234
    :goto_0
    return-object v0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isDvr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    const-string v0, "7"

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isLive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    const-string v0, "6"

    goto :goto_0

    .line 230
    :cond_2
    const-string v0, "4"

    goto :goto_0
.end method

.method private GetV22(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_GIMA:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mEngType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    if-ne v0, v1, :cond_0

    .line 113
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getVideoGuid()Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isDvr()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isLive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    :cond_1
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_V22_other:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_2
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_V22_live:Ljava/lang/String;

    goto :goto_0
.end method

.method private getDW_GESTVAL(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 167
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventText()[Ljava/lang/String;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    array-length v1, v0

    if-lez v1, :cond_0

    .line 171
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_GIMA:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mEngType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    if-eq v1, v2, :cond_0

    .line 173
    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    .line 179
    :cond_0
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected GetMedTime2(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;J)Ljava/lang/String;
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 252
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isLive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide p2

    .line 256
    :cond_0
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_SEEKS:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v0, v1, :cond_1

    .line 258
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    .line 261
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->getCurrentContentPosition(J)J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected GetTagString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "@@@VOOSMPDW2Tracking"

    return-object v0
.end method

.method protected addHashMapV21()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method protected addV21()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method protected getPlayerSize([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 245
    const-string v0, "640x360"

    .line 246
    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v2, :cond_0

    .line 247
    aget-object v0, p1, v2

    .line 248
    :cond_0
    return-object v0
.end method

.method protected handleOtherProperty(Ljava/util/Map$Entry;)Z
    .locals 4
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
    const/4 v0, 0x0

    .line 53
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    const/4 v1, 0x1

    .line 55
    const-string v3, "mapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_MApp:Ljava/lang/String;

    .line 105
    :goto_0
    return v0

    .line 60
    :cond_0
    const-string v3, "medid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Medid:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_1
    const-string v3, "medastid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_MEDASTID:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_2
    const-string v3, "sdlvrytype"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_SDLVRYTYPE:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_3
    const-string v3, "gestval"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 77
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_4
    const-string v3, "live_medid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 82
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Medid_live:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_5
    const-string v3, "vod_medid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 87
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Medid_vod:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_6
    const-string v3, "dvr_medid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 92
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Medid_dvr:Ljava/lang/String;

    goto/16 :goto_0

    .line 95
    :cond_7
    const-string v3, "srchost"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 97
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_SRCHOST:Ljava/lang/String;

    goto/16 :goto_0

    .line 100
    :cond_8
    const-string v3, "adastid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 102
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->DW_ADASTID_VALUE:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 14

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 271
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_INITIALIZATION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v0, v1, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[TRACKING] VOOSMPTrackingEvent or ADSInfo is null, don\'t sendTrackingEvent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 677
    :goto_0
    return-object v0

    .line 278
    :cond_1
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->getADSPeriod(I)Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v4

    .line 280
    if-nez v4, :cond_2

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_INITIALIZATION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v0, v1, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[TRACKING] Don\'t find action.mPeriodID on ADSInfo. , don\'t sendSegmentEvent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 286
    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 287
    const-string v0, "http://dw.cbsi.com/levt/video/e.gif?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isLive()Z

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendStringFromHashMap(Ljava/lang/StringBuffer;Z)Z

    move-result v0

    .line 290
    const-wide/16 v2, 0x0

    .line 292
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy.MM.dd.HH.mm.ss"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 293
    const-string v6, "&ts="

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v5, v6, v1, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 295
    const-string v0, "&componentid="

    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->DW_COMPONENTID_VALUE:Ljava/lang/String;

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "&part="

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mPartner:Ljava/lang/String;

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "&siteid="

    const-string v1, "431"

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_INITIALIZATION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v0, v1, :cond_5

    .line 301
    const-string v0, "&playertime="

    const-string v1, "0"

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mTime:J

    .line 303
    const-string v0, "&event="

    const-string v1, "init"

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "&srchost="

    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_SRCHOST:Ljava/lang/String;

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "&playersz="

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventText()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->getPlayerSize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mHashMap:Ljava/util/HashMap;

    const-string v1, "mapp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 308
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 315
    :goto_2
    const-string v1, "&mapp="

    invoke-virtual {p0, v5, v1, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "&device="

    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] DW event text: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->sendHTTPRequest(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 319
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 293
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 312
    :cond_4
    const-string v0, "@@@VOOSMPDW2Tracking"

    const-string v1, "[TRACKING] DW2 , mapp is null or empty. Use default value."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_MApp:Ljava/lang/String;

    goto :goto_2

    .line 324
    :cond_5
    const-string v0, "&playertime="

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v1, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v0, "&v22="

    invoke-direct {p0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetV22(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v0, "&medtime="

    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetMedTime(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v0, "&medid="

    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetMedID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    .line 333
    :goto_3
    const/4 v1, 0x0

    .line 334
    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking$1;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE:[I

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v7

    invoke-virtual {v7}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 629
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] DW don\'t support this event, event type is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , event value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 332
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 338
    :pswitch_0
    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 340
    const-string v1, "&gestval="

    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_7
    const-string v1, "&medastid="

    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_MEDASTID:Ljava/lang/String;

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    if-eqz v0, :cond_f

    .line 346
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isDvr()Z

    move-result v1

    if-nez v1, :cond_8

    .line 348
    const-string v1, "&medlength="

    invoke-direct {p0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetMedLength(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_8
    const-string v1, "&sdlvrytype="

    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetSDLVRYTYPE()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v1, "&distntwrk="

    const-string v6, "can"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "&srchost="

    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_SRCHOST:Ljava/lang/String;

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v1, "&event="

    const-string v6, "start"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :goto_4
    const/4 v1, 0x1

    .line 635
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isDvr()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isLive()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_a
    if-eqz v0, :cond_d

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYBACKSTART:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v0, v6, :cond_b

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYBACKCOMPLETE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v0, v6, :cond_b

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PERCENTAGE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v0, v6, :cond_b

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_TIMEPASSED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v0, v6, :cond_d

    .line 641
    :cond_b
    const-string v0, "&adid="

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v0, "&adastid="

    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->DW_ADASTID_VALUE:Ljava/lang/String;

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYBACKSTART:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v0, v1, :cond_37

    .line 645
    const-string v0, "&adpos="

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v1

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->getADPos(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v0, "&adtitle="

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v0, "&adtime="

    const-string v1, "0"

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_c
    :goto_6
    const-string v0, "&adtype="

    const-string v1, "1"

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v1, "&adpod="

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    if-nez v0, :cond_3a

    const/4 v0, -0x1

    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v1, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v1, "&adpodpos="

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    if-nez v0, :cond_3b

    const/4 v0, -0x1

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v1, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v0, "&adnum="

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->getADNum(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const/4 v1, 0x1

    .line 670
    :cond_d
    const-string v0, "&mednum="

    iget v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mSegmentNo:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v0, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    if-eqz v1, :cond_e

    .line 673
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] DW event text: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->sendHTTPRequest(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 677
    :cond_e
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 355
    :cond_f
    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isFirstContent(I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mContentStart:Z

    if-nez v1, :cond_11

    .line 357
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isDvr()Z

    move-result v1

    if-nez v1, :cond_10

    .line 359
    const-string v1, "&medlength="

    invoke-direct {p0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetMedLength(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_10
    const-string v1, "&sdlvrytype="

    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetSDLVRYTYPE()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v1, "&distntwrk="

    const-string v6, "can"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v1, "&srchost="

    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_SRCHOST:Ljava/lang/String;

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, "&event="

    const-string v6, "start"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mContentStart:Z

    .line 366
    const-string v1, "&medtitle="

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 371
    :cond_11
    const-string v1, "&event="

    const-string v6, "play"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 379
    :pswitch_1
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isLive()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isDvr()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 381
    :cond_12
    if-nez v0, :cond_15

    .line 383
    const-string v1, "&srchost="

    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_SRCHOST:Ljava/lang/String;

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_13
    :goto_9
    const-string v1, "end"

    .line 398
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v6

    sget-object v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_FORCESTOP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v6, v7, :cond_17

    .line 400
    const-string v1, "stop"

    .line 407
    :cond_14
    :goto_a
    const-string v6, "&event="

    invoke-virtual {p0, v5, v6, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/4 v1, 0x1

    .line 410
    goto/16 :goto_5

    .line 387
    :cond_15
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isDvr()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 394
    :cond_16
    const-string v1, "&medastid="

    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_MEDASTID:Ljava/lang/String;

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 402
    :cond_17
    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_14

    .line 404
    const-string v6, "&gestval="

    sget-object v7, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 414
    :pswitch_2
    const-string v6, "&srchost="

    sget-object v7, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_SRCHOST:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_18

    .line 418
    const-string v6, "&gestval="

    sget-object v7, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_18
    const-string v6, "&event="

    const-string v7, "seg_start"

    invoke-virtual {p0, v5, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isLive()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isDvr()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 422
    :cond_19
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 427
    :pswitch_3
    const-string v6, "&srchost="

    sget-object v7, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_SRCHOST:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1a

    .line 431
    const-string v6, "&gestval="

    sget-object v7, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_1a
    const-string v6, "&event="

    const-string v7, "end"

    invoke-virtual {p0, v5, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isLive()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isDvr()Z

    move-result v6

    if-nez v6, :cond_9

    .line 436
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 441
    :pswitch_4
    if-eqz v0, :cond_1b

    .line 442
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 443
    :cond_1b
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isLive()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isDvr()Z

    move-result v6

    if-nez v6, :cond_9

    .line 445
    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1c

    .line 447
    const-string v1, "&gestval="

    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_1c
    const-string v1, "&medastid="

    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_MEDASTID:Ljava/lang/String;

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v1, v6, v8

    if-nez v1, :cond_1d

    .line 452
    const-string v1, "&event="

    const-string v6, "pause"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mPauseTime:J

    .line 467
    :goto_b
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 454
    :cond_1d
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_1f

    .line 456
    const-string v1, "&event="

    const-string v6, "unpause"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mPauseTime:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_1e

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mPauseTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 459
    const-string v6, "&eventdur="

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v6, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_1e
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mPauseTime:J

    goto :goto_b

    .line 464
    :cond_1f
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] DW don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_PAUSE, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 473
    :pswitch_5
    const-string v1, "&medastid="

    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_MEDASTID:Ljava/lang/String;

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    if-eqz v0, :cond_21

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x19

    cmp-long v1, v6, v8

    if-eqz v1, :cond_20

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x32

    cmp-long v1, v6, v8

    if-eqz v1, :cond_20

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x4b

    cmp-long v1, v6, v8

    if-nez v1, :cond_21

    .line 476
    :cond_20
    const-string v1, "&event="

    const-string v6, "play"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v1, "&gestval="

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pct:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v1, 0x1

    .line 485
    goto/16 :goto_5

    .line 480
    :cond_21
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] DW don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_PERCENTAGE, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , Period type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 489
    :pswitch_6
    const-string v1, "&medastid="

    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_MEDASTID:Ljava/lang/String;

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    if-nez v0, :cond_23

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x19

    cmp-long v1, v6, v8

    if-eqz v1, :cond_22

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x32

    cmp-long v1, v6, v8

    if-eqz v1, :cond_22

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x4b

    cmp-long v1, v6, v8

    if-nez v1, :cond_23

    .line 492
    :cond_22
    const/4 v1, 0x0

    .line 493
    goto/16 :goto_5

    .line 494
    :cond_23
    if-nez v0, :cond_25

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->isEpisode()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0xa

    cmp-long v1, v6, v8

    if-eqz v1, :cond_24

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x14

    cmp-long v1, v6, v8

    if-eqz v1, :cond_24

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1e

    cmp-long v1, v6, v8

    if-eqz v1, :cond_24

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x28

    cmp-long v1, v6, v8

    if-eqz v1, :cond_24

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3c

    cmp-long v1, v6, v8

    if-eqz v1, :cond_24

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x46

    cmp-long v1, v6, v8

    if-eqz v1, :cond_24

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x50

    cmp-long v1, v6, v8

    if-eqz v1, :cond_24

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x5a

    cmp-long v1, v6, v8

    if-nez v1, :cond_25

    .line 498
    :cond_24
    const-string v1, "&gestval="

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pct:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v1, 0x1

    .line 506
    goto/16 :goto_5

    .line 501
    :cond_25
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] DW don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_PERCENTAGE, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , Period type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 510
    :pswitch_7
    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26

    .line 512
    const-string v1, "&gestval="

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    invoke-virtual {p0, v5, v1, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_26
    const-string v1, "&medastid="

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_MEDASTID:Ljava/lang/String;

    invoke-virtual {p0, v5, v1, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v1

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v1, v2, :cond_29

    const/4 v1, 0x1

    .line 517
    :goto_c
    iget-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mStartPlayTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_27

    if-eqz v1, :cond_27

    .line 518
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mStartPlayTime:J

    .line 521
    :cond_27
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    if-eqz v1, :cond_2a

    iget-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mStartPlayTime:J

    :goto_d
    sub-long v2, v6, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    .line 522
    const-string v6, "@@@VOOSMPDW2Tracking"

    const-string v7, "NEW_TIMEPASSED %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    const-wide/16 v6, 0x5

    cmp-long v6, v2, v6

    if-gez v6, :cond_2b

    iget-boolean v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isFirstTimePass:Z

    if-nez v6, :cond_2b

    .line 525
    const-string v6, "&event="

    const-string v7, "play"

    invoke-virtual {p0, v5, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    if-eqz v1, :cond_28

    .line 527
    iget-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mStartPlayTime:J

    const-wide/16 v8, 0x1388

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mStartPlayTime:J

    .line 528
    :cond_28
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isFirstTimePass:Z

    .line 550
    :goto_e
    const/4 v1, 0x1

    .line 551
    goto/16 :goto_5

    .line 516
    :cond_29
    const/4 v1, 0x0

    goto :goto_c

    .line 521
    :cond_2a
    const-wide/16 v2, 0x0

    goto :goto_d

    .line 530
    :cond_2b
    const-wide/16 v6, 0x5

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2c

    const-wide/16 v6, 0x3d

    cmp-long v6, v2, v6

    if-gez v6, :cond_2c

    if-nez v1, :cond_2c

    const-wide/16 v6, 0xf

    rem-long v6, v2, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2c

    .line 532
    const-string v1, "&event="

    const-string v6, "play"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isFirstTimePass:Z

    goto :goto_e

    .line 535
    :cond_2c
    const-wide/16 v6, 0x5

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2d

    const-wide/16 v6, 0x3d

    cmp-long v6, v2, v6

    if-gez v6, :cond_2d

    if-eqz v1, :cond_2d

    const-wide/16 v6, 0x5

    rem-long v6, v2, v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_2d

    .line 537
    const-string v1, "&event="

    const-string v6, "play"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isFirstTimePass:Z

    goto :goto_e

    .line 540
    :cond_2d
    const-wide/16 v6, 0x3d

    cmp-long v1, v2, v6

    if-ltz v1, :cond_2e

    const-wide/16 v6, 0x3c

    rem-long v6, v2, v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_2e

    .line 542
    const-string v1, "&event="

    const-string v6, "play"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isFirstTimePass:Z

    goto :goto_e

    .line 547
    :cond_2e
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] DW don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_TIMEPASSED, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 555
    :pswitch_8
    if-eqz v0, :cond_2f

    .line 556
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 557
    :cond_2f
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isLive()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->isDvr()Z

    move-result v6

    if-nez v6, :cond_9

    .line 559
    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 561
    const-string v1, "&gestval="

    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_Gesture:Ljava/lang/String;

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_30
    const-string v1, "&medastid="

    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->str_DW_MEDASTID:Ljava/lang/String;

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_32

    .line 566
    const-string v1, "&event="

    const-string v6, "unpause"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mPauseTime:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_31

    .line 568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mPauseTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 569
    const-string v6, "&eventdur="

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v6, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_31
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mPauseTime:J

    .line 577
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 574
    :cond_32
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] DW don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_PAUSE, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 583
    :pswitch_9
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v1, v6, v8

    if-nez v1, :cond_33

    .line 585
    const-string v1, "&event="

    const-string v6, "caption"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v1, "&gestval="

    const-string v6, "caption:on"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mClosedCaptionTime:J

    .line 604
    :goto_f
    const/4 v1, 0x1

    .line 605
    goto/16 :goto_5

    .line 588
    :cond_33
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_35

    .line 590
    const-string v1, "&event="

    const-string v6, "caption"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v1, "&gestval="

    const-string v6, "caption:off"

    invoke-virtual {p0, v5, v1, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const/4 v1, 0x0

    .line 593
    iget-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mClosedCaptionTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_34

    .line 595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mClosedCaptionTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 597
    :cond_34
    const-string v6, "&eventdur="

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v6, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mClosedCaptionTime:J

    goto :goto_f

    .line 601
    :cond_35
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] DW don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_PLAYER_CLOSEDCAPTION, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 609
    :pswitch_a
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->getPlaylistTime(J)J

    move-result-wide v6

    .line 610
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->getCurrentContentPosition(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)J

    move-result-wide v8

    .line 611
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v10

    cmp-long v1, v6, v10

    if-gez v1, :cond_36

    .line 613
    const-string v1, "&event="

    const-string v10, "rewind"

    invoke-virtual {p0, v5, v1, v10}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v1, "&eventdur="

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v10

    sub-long v10, v8, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v5, v1, v10}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :goto_10
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "VO_OSMP_ADS_TRACKING_EVENT_SEEKS, id is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , event value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , playingTime is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "seek pos is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , current Content pos is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    const/4 v1, 0x1

    .line 625
    goto/16 :goto_5

    .line 618
    :cond_36
    const-string v1, "&event="

    const-string v10, "forward"

    invoke-virtual {p0, v5, v1, v10}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v1, "&eventdur="

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v5, v1, v10}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 649
    :cond_37
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYBACKCOMPLETE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v0, v1, :cond_38

    .line 651
    const-string v0, "&adtime="

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->getADTime2(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 653
    :cond_38
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PERCENTAGE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v0, v1, :cond_39

    .line 655
    const-string v0, "&adtime="

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->getADTime2(I)J

    move-result-wide v2

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x64

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 657
    :cond_39
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_TIMEPASSED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v0, v1, :cond_c

    .line 659
    const-string v0, "&adtime="

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 663
    :cond_3a
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget v0, v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mPodIdx:I

    goto/16 :goto_7

    .line 664
    :cond_3b
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget v0, v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mAdPos:I

    goto/16 :goto_8

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
