.class final synthetic Lcom/cbs/app/visualon/player/CBSPlayer$7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/visualon/player/CBSPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 277
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    :try_start_0
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_VIDEO_ASPECT_RATIO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_33

    :goto_0
    :try_start_1
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_ADAPTIVE_STREAMING_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_32

    :goto_1
    :try_start_2
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_31

    :goto_2
    :try_start_3
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_CONNECTION_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_30

    :goto_3
    :try_start_4
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_DOWNLOAD_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2f

    :goto_4
    :try_start_5
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_DRM_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2e

    :goto_5
    :try_start_6
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_PLAYLIST_PARSE_ERR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2d

    :goto_6
    :try_start_7
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_CONNECTION_REJECTED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2c

    :goto_7
    :try_start_8
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_DRM_NOT_SECURE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2b

    :goto_8
    :try_start_9
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_DRM_AV_OUT_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2a

    :goto_9
    :try_start_a
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_LICENSE_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_29

    :goto_a
    :try_start_b
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_CODEC_NOT_SUPPORT:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_28

    :goto_b
    :try_start_c
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_PLAY_COMPLETE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_27

    :goto_c
    :try_start_d
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_SEEK_COMPLETE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_26

    :goto_d
    :try_start_e
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_SEEK_COMPLETE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_25

    :goto_e
    :try_start_f
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_VIDEO_RENDER_START:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_24

    :goto_f
    :try_start_10
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_VIDEO_SIZE_CHANGED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_23

    :goto_10
    :try_start_11
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_VIDEO_STOP_BUFFER:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_22

    :goto_11
    :try_start_12
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_VIDEO_START_BUFFER:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_21

    :goto_12
    :try_start_13
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_AUDIO_STOP_BUFFER:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_20

    :goto_13
    :try_start_14
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_AUDIO_START_BUFFER:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_1f

    :goto_14
    :try_start_15
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_BA_HAPPENED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_1e

    :goto_15
    :try_start_16
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_DOWNLOAD_FAIL_WAITING_RECOVER:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_1d

    :goto_16
    :try_start_17
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_DOWNLOAD_FAIL_RECOVER_SUCCESS:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_1c

    :goto_17
    :try_start_18
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_OPEN_FINISHED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_1b

    :goto_18
    :try_start_19
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_CONTENT_START:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_1a

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_CONTENT_END:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_19

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_AD_START:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_18

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_AD_END:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_17

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_VIDEO_PROGRESS:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_16

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_VIDEO_DONE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_15

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_STATE_CHANGE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_14

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_AD_LOAD_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_13

    :goto_20
    :try_start_21
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_VIDEO_NOT_AVAILABLE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_12

    :goto_21
    :try_start_22
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_DATA_LOAD_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_11

    :goto_22
    :try_start_23
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_VIDEO_GEO_BLOCKED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_10

    :goto_23
    :try_start_24
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_PLAYBACKINFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_f

    .line 597
    :goto_24
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->c:[I

    :try_start_25
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->c:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_UNSTARTED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_e

    :goto_25
    :try_start_26
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->c:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_STOPPED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_d

    :goto_26
    :try_start_27
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->c:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_PLAYING:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_c

    :goto_27
    :try_start_28
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->c:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_PAUSED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_b

    :goto_28
    :try_start_29
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->c:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_BUFFERING:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_a

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->c:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_DOMAIN_BLACKLISTED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_9

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->c:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_VIDEO_NOT_AVAILABLE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_8

    :goto_2b
    :try_start_2c
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->c:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_DATA_LOAD_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_7

    :goto_2c
    :try_start_2d
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->c:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_AD_LOAD_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_6

    .line 287
    :goto_2d
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->b:[I

    :try_start_2e
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->b:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_BITRATE_CHANGE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_5

    :goto_2e
    :try_start_2f
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->b:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_CHUNK_DOWNLOADOK:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_4

    :goto_2f
    :try_start_30
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->b:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_MEDIATYPE_CHANGE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_3

    .line 303
    :goto_30
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AVAILABLE_TRACK_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AVAILABLE_TRACK_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->a:[I

    :try_start_31
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->a:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AVAILABLE_TRACK_TYPE;->VO_OSMP_AVAILABLE_PUREAUDIO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AVAILABLE_TRACK_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AVAILABLE_TRACK_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_2

    :goto_31
    :try_start_32
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->a:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AVAILABLE_TRACK_TYPE;->VO_OSMP_AVAILABLE_PUREVIDEO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AVAILABLE_TRACK_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AVAILABLE_TRACK_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_1

    :goto_32
    :try_start_33
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->a:[I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AVAILABLE_TRACK_TYPE;->VO_OSMP_AVAILABLE_AUDIOVIDEO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AVAILABLE_TRACK_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AVAILABLE_TRACK_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_0

    :goto_33
    return-void

    :catch_0
    move-exception v0

    goto :goto_33

    :catch_1
    move-exception v0

    goto :goto_32

    :catch_2
    move-exception v0

    goto :goto_31

    :catch_3
    move-exception v0

    goto :goto_30

    :catch_4
    move-exception v0

    goto :goto_2f

    :catch_5
    move-exception v0

    goto :goto_2e

    :catch_6
    move-exception v0

    goto :goto_2d

    :catch_7
    move-exception v0

    goto :goto_2c

    :catch_8
    move-exception v0

    goto :goto_2b

    :catch_9
    move-exception v0

    goto/16 :goto_2a

    :catch_a
    move-exception v0

    goto/16 :goto_29

    :catch_b
    move-exception v0

    goto/16 :goto_28

    :catch_c
    move-exception v0

    goto/16 :goto_27

    :catch_d
    move-exception v0

    goto/16 :goto_26

    :catch_e
    move-exception v0

    goto/16 :goto_25

    :catch_f
    move-exception v0

    goto/16 :goto_24

    :catch_10
    move-exception v0

    goto/16 :goto_23

    :catch_11
    move-exception v0

    goto/16 :goto_22

    :catch_12
    move-exception v0

    goto/16 :goto_21

    :catch_13
    move-exception v0

    goto/16 :goto_20

    :catch_14
    move-exception v0

    goto/16 :goto_1f

    :catch_15
    move-exception v0

    goto/16 :goto_1e

    :catch_16
    move-exception v0

    goto/16 :goto_1d

    :catch_17
    move-exception v0

    goto/16 :goto_1c

    :catch_18
    move-exception v0

    goto/16 :goto_1b

    :catch_19
    move-exception v0

    goto/16 :goto_1a

    :catch_1a
    move-exception v0

    goto/16 :goto_19

    :catch_1b
    move-exception v0

    goto/16 :goto_18

    :catch_1c
    move-exception v0

    goto/16 :goto_17

    :catch_1d
    move-exception v0

    goto/16 :goto_16

    :catch_1e
    move-exception v0

    goto/16 :goto_15

    :catch_1f
    move-exception v0

    goto/16 :goto_14

    :catch_20
    move-exception v0

    goto/16 :goto_13

    :catch_21
    move-exception v0

    goto/16 :goto_12

    :catch_22
    move-exception v0

    goto/16 :goto_11

    :catch_23
    move-exception v0

    goto/16 :goto_10

    :catch_24
    move-exception v0

    goto/16 :goto_f

    :catch_25
    move-exception v0

    goto/16 :goto_e

    :catch_26
    move-exception v0

    goto/16 :goto_d

    :catch_27
    move-exception v0

    goto/16 :goto_c

    :catch_28
    move-exception v0

    goto/16 :goto_b

    :catch_29
    move-exception v0

    goto/16 :goto_a

    :catch_2a
    move-exception v0

    goto/16 :goto_9

    :catch_2b
    move-exception v0

    goto/16 :goto_8

    :catch_2c
    move-exception v0

    goto/16 :goto_7

    :catch_2d
    move-exception v0

    goto/16 :goto_6

    :catch_2e
    move-exception v0

    goto/16 :goto_5

    :catch_2f
    move-exception v0

    goto/16 :goto_4

    :catch_30
    move-exception v0

    goto/16 :goto_3

    :catch_31
    move-exception v0

    goto/16 :goto_2

    :catch_32
    move-exception v0

    goto/16 :goto_1

    :catch_33
    move-exception v0

    goto/16 :goto_0
.end method
