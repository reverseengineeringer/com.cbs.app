.class synthetic Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ASPECT_RATIO:[I

.field static final synthetic $SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_PREFERENCE:[I

.field static final synthetic $SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE:[I

.field static final synthetic $SwitchMap$com$visualon$OSMPPlayerImpl$VOCommonPlayerImpl$PLAY_STATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5053
    invoke-static {}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->values()[Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayerImpl$VOCommonPlayerImpl$PLAY_STATE:[I

    :try_start_0
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayerImpl$VOCommonPlayerImpl$PLAY_STATE:[I

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_START:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_17

    :goto_0
    :try_start_1
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayerImpl$VOCommonPlayerImpl$PLAY_STATE:[I

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_OPEN:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_16

    :goto_1
    :try_start_2
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayerImpl$VOCommonPlayerImpl$PLAY_STATE:[I

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_MY_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_15

    :goto_2
    :try_start_3
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayerImpl$VOCommonPlayerImpl$PLAY_STATE:[I

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_14

    :goto_3
    :try_start_4
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayerImpl$VOCommonPlayerImpl$PLAY_STATE:[I

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_STOP:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_13

    .line 4879
    :goto_4
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_PREFERENCE:[I

    :try_start_5
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_PREFERENCE:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_SEEK_PRECISE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_12

    :goto_5
    :try_start_6
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_PREFERENCE:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_NO_SEEK_PRECISE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_11

    :goto_6
    :try_start_7
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_PREFERENCE:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_NO_SELECT_AUDIO_SWITCH_IMMEDIATELY:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_10

    :goto_7
    :try_start_8
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_PREFERENCE:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_SELECT_AUDIO_SWITCH_IMMEDIATELY:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_f

    :goto_8
    :try_start_9
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_PREFERENCE:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_e

    :goto_9
    :try_start_a
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_PREFERENCE:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_NO_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_d

    :goto_a
    :try_start_b
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_PREFERENCE:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_BA_START_DEFAULT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_c

    :goto_b
    :try_start_c
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_PREFERENCE:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_BA_START_FAST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_b

    .line 3048
    :goto_c
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE:[I

    :try_start_d
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE;->VO_OSMP_RTSP_CONNECTION_AUTOMATIC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_a

    :goto_d
    :try_start_e
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE;->VO_OSMP_RTSP_CONNECTION_TCP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_9

    :goto_e
    :try_start_f
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE;->VO_OSMP_RTSP_CONNECTION_UDP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_8

    .line 1173
    :goto_f
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ASPECT_RATIO:[I

    :try_start_10
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ASPECT_RATIO:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->VO_OSMP_RATIO_00:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_7

    :goto_10
    :try_start_11
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ASPECT_RATIO:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->VO_OSMP_RATIO_ORIGINAL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_6

    :goto_11
    :try_start_12
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ASPECT_RATIO:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->VO_OSMP_RATIO_11:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_5

    :goto_12
    :try_start_13
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ASPECT_RATIO:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->VO_OSMP_RATIO_43:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_4

    :goto_13
    :try_start_14
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ASPECT_RATIO:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->VO_OSMP_RATIO_169:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_3

    :goto_14
    :try_start_15
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ASPECT_RATIO:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->VO_OSMP_RATIO_21:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_2

    :goto_15
    :try_start_16
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ASPECT_RATIO:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->VO_OSMP_RATIO_2331:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_1

    :goto_16
    :try_start_17
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ASPECT_RATIO:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->VO_OSMP_RATIO_AUTO:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_0

    :goto_17
    return-void

    :catch_0
    move-exception v0

    goto :goto_17

    :catch_1
    move-exception v0

    goto :goto_16

    :catch_2
    move-exception v0

    goto :goto_15

    :catch_3
    move-exception v0

    goto :goto_14

    :catch_4
    move-exception v0

    goto :goto_13

    :catch_5
    move-exception v0

    goto :goto_12

    :catch_6
    move-exception v0

    goto :goto_11

    :catch_7
    move-exception v0

    goto :goto_10

    :catch_8
    move-exception v0

    goto :goto_f

    :catch_9
    move-exception v0

    goto/16 :goto_e

    :catch_a
    move-exception v0

    goto/16 :goto_d

    :catch_b
    move-exception v0

    goto/16 :goto_c

    :catch_c
    move-exception v0

    goto/16 :goto_b

    :catch_d
    move-exception v0

    goto/16 :goto_a

    :catch_e
    move-exception v0

    goto/16 :goto_9

    :catch_f
    move-exception v0

    goto/16 :goto_8

    :catch_10
    move-exception v0

    goto/16 :goto_7

    :catch_11
    move-exception v0

    goto/16 :goto_6

    :catch_12
    move-exception v0

    goto/16 :goto_5

    :catch_13
    move-exception v0

    goto/16 :goto_4

    :catch_14
    move-exception v0

    goto/16 :goto_3

    :catch_15
    move-exception v0

    goto/16 :goto_2

    :catch_16
    move-exception v0

    goto/16 :goto_1

    :catch_17
    move-exception v0

    goto/16 :goto_0
.end method
