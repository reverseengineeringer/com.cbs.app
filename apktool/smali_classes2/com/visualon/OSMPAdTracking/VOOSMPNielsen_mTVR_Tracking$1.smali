.class Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetID3Infor(IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .prologue
    .line 34
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 58
    :goto_0
    return-object v0

    .line 37
    :cond_0
    check-cast p3, Lcom/visualon/OSMPUtils/voOSTimedTag;

    .line 39
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-interface {p3}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Data()[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;

    invoke-virtual {v1}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimedTagList  timestamp is %d, %s length:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->bID3:Z

    .line 42
    sget-boolean v1, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->isAppSdkInitied:Z

    if-nez v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;

    invoke-virtual {v1}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->initConfig()V

    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf9

    if-lt v1, v2, :cond_2

    .line 46
    const-string v1, "www.nielsen.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 47
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    add-int/lit16 v2, v1, 0xf9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 49
    add-int/lit16 v2, v1, 0xf9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;

    invoke-virtual {v1}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ID3 tag sent, timestamp is %d, %s "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->sendID3(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_2
    :goto_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method
