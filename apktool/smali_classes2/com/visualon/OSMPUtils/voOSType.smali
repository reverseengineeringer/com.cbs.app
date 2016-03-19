.class public Lcom/visualon/OSMPUtils/voOSType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;,
        Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voOSType"

.field public static final VOOMXAL_PID_AUDIO_STREAM_ONOFF:I = 0x9

.field public static final VOOMXAL_PID_VIDEO_STREAM_ONOFF:I = 0xa

.field public static final VOOSMB_CB_VideoOriginalAspectRatio:I = 0x5000003

.field public static final VOOSMP_AVAILABLE_AUDIOVIDEO:I = 0x2

.field public static final VOOSMP_AVAILABLE_PUREAUDIO:I = 0x0

.field public static final VOOSMP_AVAILABLE_PUREVIDEO:I = 0x1

.field public static final VOOSMP_CB_AUTHENTICATION_RESPONSE:I = 0x14

.field public static final VOOSMP_CB_Analytics_Display_Data:I = 0x2d

.field public static final VOOSMP_CB_AudioPlayedoutPosition:I = 0x2c

.field public static final VOOSMP_CB_AudioRenderStart:I = 0x21

.field public static final VOOSMP_CB_AudioStartBuff:I = 0x5

.field public static final VOOSMP_CB_AudioStopBuff:I = 0x6

.field public static final VOOSMP_CB_Audio_Render_Failed:I = -0x7fffffe6

.field public static final VOOSMP_CB_BLUETOOTHHANDSET:I = 0x1011

.field public static final VOOSMP_CB_Block_Output:I = 0x25

.field public static final VOOSMP_CB_Block_Playback:I = 0x24

.field public static final VOOSMP_CB_BufferStatus:I = 0x2

.field public static final VOOSMP_CB_Capture_Software_Running:I = 0x2b

.field public static final VOOSMP_CB_ClosedCaptionData:I = 0x2001

.field public static final VOOSMP_CB_CodecNotSupport:I = -0x7ffffff0

.field public static final VOOSMP_CB_Deblock:I = 0x11

.field public static final VOOSMP_CB_Downgrade_Resolution:I = 0x26

.field public static final VOOSMP_CB_Error:I = -0x7ffffff4

.field public static final VOOSMP_CB_HWDecoderStatus:I = 0x13

.field public static final VOOSMP_CB_LanguageInfoAvailable:I = 0x15

.field public static final VOOSMP_CB_LicenseFailed:I = -0x7fffffe3

.field public static final VOOSMP_CB_License_Display:I = 0x2e

.field public static final VOOSMP_CB_MULTIPLE_INSTANCES_NOT_SUPPORTED:I = 0x29

.field public static final VOOSMP_CB_MediaTypeChanged:I = 0x12

.field public static final VOOSMP_CB_Metadata_Arrive:I = 0x18

.field public static final VOOSMP_CB_OpenSource:I = 0x17

.field public static final VOOSMP_CB_Output_Control_Change_Resolution:I = 0x26

.field public static final VOOSMP_CB_PCM_OUTPUT:I = 0x1c

.field public static final VOOSMP_CB_PlayComplete:I = 0x1

.field public static final VOOSMP_CB_Query_Output_Control_Capacity:I = 0x27

.field public static final VOOSMP_CB_RESUME:I = 0x2002

.field public static final VOOSMP_CB_SEI_INFO:I = 0x19

.field public static final VOOSMP_CB_SURFACE_EXCHANGED:I = 0x2a

.field public static final VOOSMP_CB_SeekComplete:I = 0xd

.field public static final VOOSMP_CB_SourceBuffTime:I = 0x7

.field public static final VOOSMP_CB_Track_Changed:I = 0x28

.field public static final VOOSMP_CB_VideoAspectRatio:I = 0xe

.field public static final VOOSMP_CB_VideoDelayTime:I = 0x8

.field public static final VOOSMP_CB_VideoDropFrames:I = 0xa

.field public static final VOOSMP_CB_VideoFrameRate:I = 0xb

.field public static final VOOSMP_CB_VideoLastTime:I = 0x9

.field public static final VOOSMP_CB_VideoRenderStart:I = 0x16

.field public static final VOOSMP_CB_VideoSizeChanged:I = 0xf

.field public static final VOOSMP_CB_VideoStartBuff:I = 0x3

.field public static final VOOSMP_CB_VideoStopBuff:I = 0x4

.field public static final VOOSMP_CB_Whole_PlayComplete:I = 0x2f

.field public static final VOOSMP_COLOR_ARGB32_PACKED:I = 0x1a

.field public static final VOOSMP_COLOR_RGB32_PACKED:I = 0x17

.field public static final VOOSMP_COLOR_RGB565_PACKED:I = 0x14

.field public static final VOOSMP_ERR_Args:I = -0x7fffffed

.field public static final VOOSMP_ERR_Audio:I = -0x7ffffffb

.field public static final VOOSMP_ERR_Audio_No_Now:I = 0x10

.field public static final VOOSMP_ERR_EOS:I = 0x1

.field public static final VOOSMP_ERR_FLush_Buffer:I = 0x12

.field public static final VOOSMP_ERR_FormatChange:I = 0x3

.field public static final VOOSMP_ERR_HTTPS_CA_FAIL:I = -0x7fffffee

.field public static final VOOSMP_ERR_Implement:I = -0x7ffffff6

.field public static final VOOSMP_ERR_JNI:I = -0x7ffffff1

.field public static final VOOSMP_ERR_LicenseFailed:I = -0x7fffffef

.field public static final VOOSMP_ERR_MultipleInstancesNotSupport:I = -0x7fffffec

.field public static final VOOSMP_ERR_None:I = 0x0

.field public static final VOOSMP_ERR_OutMemory:I = -0x7ffffffa

.field public static final VOOSMP_ERR_OutOfTime:I = -0x7ffffff4

.field public static final VOOSMP_ERR_ParamID:I = -0x7ffffff8

.field public static final VOOSMP_ERR_Pointer:I = -0x7ffffff9

.field public static final VOOSMP_ERR_Retry:I = 0x2

.field public static final VOOSMP_ERR_SeekFailed:I = -0x7ffffff0

.field public static final VOOSMP_ERR_SmallSize:I = -0x7ffffff5

.field public static final VOOSMP_ERR_Status:I = -0x7ffffff7

.field public static final VOOSMP_ERR_Uninitialize:I = -0x7ffffeff

.field public static final VOOSMP_ERR_Unknown:I = -0x7ffffff2

.field public static final VOOSMP_ERR_Video:I = -0x7ffffffc

.field public static final VOOSMP_ERR_Video_No_Now:I = 0x11

.field public static final VOOSMP_ERR_WaitTime:I = -0x7ffffff3

.field public static final VOOSMP_FLAG_INIT_ACTUAL_FILE_SIZE:I = 0x8

.field public static final VOOSMP_FLAG_INIT_DURATION:I = 0x20

.field public static final VOOSMP_FLAG_INIT_IO_API_NAME:I = 0x4

.field public static final VOOSMP_FLAG_INIT_IO_FILE_NAME:I = 0x2

.field public static final VOOSMP_FLAG_INIT_LIBOP:I = 0x1

.field public static final VOOSMP_FLAG_INIT_NOUSE:I = 0x0

.field public static final VOOSMP_FLAG_INIT_WORKING_PATH:I = 0x10

.field public static final VOOSMP_FLAG_SOURCE_HANDLE:I = 0x8

.field public static final VOOSMP_FLAG_SOURCE_OPEN_ASYNC:I = 0x20

.field public static final VOOSMP_FLAG_SOURCE_OPEN_SYNC:I = 0x10

.field public static final VOOSMP_FLAG_SOURCE_PUSH_BUFFER_FUNC:I = 0x40

.field public static final VOOSMP_FLAG_SOURCE_READBUFFER:I = 0x2

.field public static final VOOSMP_FLAG_SOURCE_SENDBUFFER:I = 0x4

.field public static final VOOSMP_FLAG_SOURCE_URL:I = 0x1

.field public static final VOOSMP_OMXAL_PLAYER:I = 0x1

.field public static final VOOSMP_PID_ADAPTIVE_PACKBLAK:I = 0x102c

.field public static final VOOSMP_PID_ANALYTICS_AGENT:I = 0x90

.field public static final VOOSMP_PID_ANALYTICS_AGENT_APPID:I = 0x92

.field public static final VOOSMP_PID_ANALYTICS_AGENT_CUID:I = 0x91

.field public static final VOOSMP_PID_ANALYTICS_DISPLAY:I = 0x6b

.field public static final VOOSMP_PID_ANALYTICS_DISPLAY_TYPE:I = 0x6d

.field public static final VOOSMP_PID_ANALYTICS_EXPORT:I = 0x8b

.field public static final VOOSMP_PID_ANALYTICS_EXPORT_GET_PACKET:I = 0x8c

.field public static final VOOSMP_PID_ANALYTICS_EXPORT_LISTENER:I = 0x8d

.field public static final VOOSMP_PID_ANALYTICS_FOUNDATION:I = 0x82

.field public static final VOOSMP_PID_ANALYTICS_FOUNDATION_CUID:I = 0x83

.field public static final VOOSMP_PID_ANALYTICS_FOUNDATION_LOCATION:I = 0x84

.field public static final VOOSMP_PID_ANALYTICS_FPS:I = 0x70

.field public static final VOOSMP_PID_ANALYTICS_FUNCTION_SET:I = 0x5f

.field public static final VOOSMP_PID_ANALYTICS_OBJECT:I = 0x69

.field public static final VOOSMP_PID_APPLICATION_RESUME:I = 0x3b

.field public static final VOOSMP_PID_APPLICATION_SUSPEND:I = 0x3a

.field public static final VOOSMP_PID_AUDIO_6CHANNEL_SUPPORT:I = 0x10022

.field public static final VOOSMP_PID_AUDIO_DECODER_API_NAME:I = 0x230000

.field public static final VOOSMP_PID_AUDIO_DECODER_FILE_NAME:I = 0x180000

.field public static final VOOSMP_PID_AUDIO_DECODER_TYPE:I = 0x48

.field public static final VOOSMP_PID_AUDIO_DEC_BITRATE:I = 0x20

.field public static final VOOSMP_PID_AUDIO_DSP_CLOCK:I = 0x59

.field public static final VOOSMP_PID_AUDIO_EFFECT_ENABLE:I = 0x8

.field public static final VOOSMP_PID_AUDIO_EFFECT_ENDPOINT_TYPE:I = 0x81

.field public static final VOOSMP_PID_AUDIO_FORMAT:I = 0x14

.field public static final VOOSMP_PID_AUDIO_MUTE:I = 0x102b

.field public static final VOOSMP_PID_AUDIO_PCM_OUTPUT:I = 0x47

.field public static final VOOSMP_PID_AUDIO_PLAYBACK_SPEED:I = 0x50

.field public static final VOOSMP_PID_AUDIO_RENDER_DATA_FORMAT:I = 0x58

.field public static final VOOSMP_PID_AUDIO_RENDER_FORMAT:I = 0x5c

.field public static final VOOSMP_PID_AUDIO_RENDER_LATENCY:I = 0x5b

.field public static final VOOSMP_PID_AUDIO_REND_ADJUST_TIME:I = 0xd

.field public static final VOOSMP_PID_AUDIO_REND_BUFFER_TIME:I = 0x12

.field public static final VOOSMP_PID_AUDIO_SINK:I = 0x3d

.field public static final VOOSMP_PID_AUDIO_SINK_BUFFTIME:I = 0x1d

.field public static final VOOSMP_PID_AUDIO_STEP_BUFFTIME:I = 0x1c

.field public static final VOOSMP_PID_AUDIO_STREAM_ONOFF:I = 0x1e

.field public static final VOOSMP_PID_AUDIO_VOLUME:I = 0x1

.field public static final VOOSMP_PID_AUTHENTICATION_INFO:I = 0x28

.field public static final VOOSMP_PID_BITMAP_HANDLE:I = 0x3e

.field public static final VOOSMP_PID_BLUETOOTH_HANDSET:I = 0x1026

.field public static final VOOSMP_PID_CHECK_LICENSE_DISPLAY:I = 0x72

.field public static final VOOSMP_PID_CLEAR_VIDEO_AREA:I = 0x52

.field public static final VOOSMP_PID_CLOSED_CAPTION_OUTPUT:I = 0x2900

.field public static final VOOSMP_PID_CLOSED_CAPTION_SETTINGS:I = 0x2901

.field public static final VOOSMP_PID_COMMAND_STRING:I = 0x2f

.field public static final VOOSMP_PID_COMMON_CCPARSER:I = 0x2a

.field public static final VOOSMP_PID_CPU_INFO:I = 0x26

.field public static final VOOSMP_PID_CPU_NUMBER:I = 0x10

.field public static final VOOSMP_PID_DEBLOCK_ONOFF:I = 0x25

.field public static final VOOSMP_PID_DRAW_COLOR:I = 0x3

.field public static final VOOSMP_PID_DRAW_RECT:I = 0x2

.field public static final VOOSMP_PID_DRM_UNIQUE_IDENTIFIER:I = 0x54

.field public static final VOOSMP_PID_FIXEDSIZE_THRESHOLD:I = 0x102a

.field public static final VOOSMP_PID_FUNC_DRM:I = 0xc

.field public static final VOOSMP_PID_FUNC_LIB:I = 0x4

.field public static final VOOSMP_PID_FUNC_READ_IO:I = 0x1b

.field public static final VOOSMP_PID_HDMI_DISPLAY:I = 0x1028

.field public static final VOOSMP_PID_IOMX_PROBE:I = 0x45

.field public static final VOOSMP_PID_KEEP_ASPECT_RATIO:I = 0x2902

.field public static final VOOSMP_PID_LIB_NAME_PREFIX:I = 0x2d

.field public static final VOOSMP_PID_LIB_NAME_SUFFIX:I = 0x2e

.field public static final VOOSMP_PID_LICENSE_CONTENT:I = 0x2b

.field public static final VOOSMP_PID_LICENSE_FILE_PATH:I = 0xa

.field public static final VOOSMP_PID_LICENSE_TEXT:I = 0x9

.field public static final VOOSMP_PID_LISTENER:I = 0x11

.field public static final VOOSMP_PID_LOAD_AUDIO_DECODER_MODULE:I = 0x67

.field public static final VOOSMP_PID_LOAD_AUDIO_EFFECT_MODULE:I = 0x27

.field public static final VOOSMP_PID_LOAD_DOLBY_DECODER_MODULE:I = 0x5d

.field public static final VOOSMP_PID_LOW_LATENCY:I = 0x32

.field public static final VOOSMP_PID_MAX_BUFFTIME:I = 0x5

.field public static final VOOSMP_PID_MEDIACODEC_AUDIO_DECODER:I = 0x48

.field public static final VOOSMP_PID_MFW_CFG_FILE:I = 0x22

.field public static final VOOSMP_PID_MIN_BUFFTIME:I = 0x6

.field public static final VOOSMP_PID_MODULE_VERSION:I = 0x49

.field public static final VOOSMP_PID_OMX_AUDIO_COMP_NAME:I = 0x200000

.field public static final VOOSMP_PID_OUTPUT_CONTROL_ACTIVE:I = 0x64

.field public static final VOOSMP_PID_OUTPUT_CONTROL_ENFORCE:I = 0x65

.field public static final VOOSMP_PID_OUTPUT_CONTROL_SETTINGS:I = 0x60

.field public static final VOOSMP_PID_OUTPUT_CONTROL_UPDATE_CONNECT_STATUS:I = 0x63

.field public static final VOOSMP_PID_PAUSE_REFERENCE_COLOCK:I = 0x5a

.field public static final VOOSMP_PID_PERFORMANCE_DATA:I = 0x1a

.field public static final VOOSMP_PID_PLAYER_PATH:I = 0xb

.field public static final VOOSMP_PID_PLAYER_TYPE:I = 0x17

.field public static final VOOSMP_PID_PREFERENCE:I = 0x89

.field public static final VOOSMP_PID_PREVIEW_SUBTITLE:I = 0x5e

.field public static final VOOSMP_PID_READ_SUBTITLE_CALLBACK:I = 0x3c

.field public static final VOOSMP_PID_RETRIEVE_SEI_INFO:I = 0x3f

.field public static final VOOSMP_PID_SECOND_SURFACE:I = 0x66

.field public static final VOOSMP_PID_SEI_EVENT_INTERVAL:I = 0x40

.field public static final VOOSMP_PID_SEI_POST_VIDEO_PROCESS:I = 0x80

.field public static final VOOSMP_PID_SENDBUFFERFUNC:I = 0x13

.field public static final VOOSMP_PID_SET_I_FRAME_ONLY_MODE:I = 0x8f

.field public static final VOOSMP_PID_SET_UI_MGR:I = 0x71

.field public static final VOOSMP_PID_SOURCE_FILENAME:I = 0x2c

.field public static final VOOSMP_PID_STATUS:I = 0xe

.field public static final VOOSMP_PID_SUBTITLE_FILE_NAME:I = 0x37

.field public static final VOOSMP_PID_SUBTITLE_IN_ENGINE:I = 0x1029

.field public static final VOOSMP_PID_SUBTITLE_SETTINGS:I = 0x36

.field public static final VOOSMP_PID_SUBTITLE_SETTINGS_ONOFF:I = 0x39

.field public static final VOOSMP_PID_SUBTITLE_TIME_OFFSET:I = 0x56

.field public static final VOOSMP_PID_SUBTITLE_URL:I = 0x6f

.field public static final VOOSMP_PID_SURFACE_CHANGED:I = 0x1027

.field public static final VOOSMP_PID_USING_API3:I = 0x2903

.field public static final VOOSMP_PID_UTC_POSITION:I = 0x6c

.field public static final VOOSMP_PID_VIDEO_ASPECT_RATIO:I = 0x30

.field public static final VOOSMP_PID_VIDEO_DECODER_API_NAME:I = 0x240000

.field public static final VOOSMP_PID_VIDEO_DECODER_FILE_NAME:I = 0x190000

.field public static final VOOSMP_PID_VIDEO_DEC_BITRATE:I = 0x21

.field public static final VOOSMP_PID_VIDEO_FORMAT:I = 0x15

.field public static final VOOSMP_PID_VIDEO_OUTPUT_RESOLUTION:I = 0x10009

.field public static final VOOSMP_PID_VIDEO_PERFORMANCE_CACHE:I = 0x34

.field public static final VOOSMP_PID_VIDEO_PERFORMANCE_ONOFF:I = 0x38

.field public static final VOOSMP_PID_VIDEO_PERFORMANCE_OPTION:I = 0x35

.field public static final VOOSMP_PID_VIDEO_REDRAW:I = 0x7

.field public static final VOOSMP_PID_VIDEO_RENDER_TYPE:I = 0x16

.field public static final VOOSMP_PID_VIDEO_STREAM_ONOFF:I = 0x1f

.field public static final VOOSMP_PID_VIEW_ACTIVE:I = 0x33

.field public static final VOOSMP_PID_WRITEABLE_PATH:I = 0x6e

.field public static final VOOSMP_PID_ZOOM_MODE:I = 0xf

.field public static final VOOSMP_RATIO_00:I = 0x0

.field public static final VOOSMP_RATIO_11:I = 0x1

.field public static final VOOSMP_RATIO_169:I = 0x3

.field public static final VOOSMP_RATIO_21:I = 0x4

.field public static final VOOSMP_RATIO_2331:I = 0x5

.field public static final VOOSMP_RATIO_43:I = 0x2

.field public static final VOOSMP_RATIO_AUTO:I = 0x6

.field public static final VOOSMP_RATIO_ORIGINAL:I = 0x0

.field public static final VOOSMP_RENDER_TYPE_AUTO_SELECTED_HARDWARE:I = 0x100

.field public static final VOOSMP_RENDER_TYPE_BITMAP:I = 0x2

.field public static final VOOSMP_RENDER_TYPE_HW_RENDER:I = 0x5

.field public static final VOOSMP_RENDER_TYPE_JAVA:I = 0x0

.field public static final VOOSMP_RENDER_TYPE_JMHW_RENDER:I = 0x6

.field public static final VOOSMP_RENDER_TYPE_NATIVE:I = 0x1

.field public static final VOOSMP_RENDER_TYPE_NATIVE_C:I = 0x4

.field public static final VOOSMP_RENDER_TYPE_OPENGLES:I = 0x3

.field public static final VOOSMP_RENDER_TYPE_OpenMAXAL:I = 0x9

.field public static final VOOSMP_SCREEN_BRIGHTNESS_MODE_AUTOMATIC:I = 0x1

.field public static final VOOSMP_SCREEN_BRIGHTNESS_MODE_MANUAL:I = 0x0

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_BA_MODE_AUTO:I = 0x0

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_BA_MODE_MANUAL:I = 0x1

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_PLAYLIST_PARSEFAIL:I = 0x1

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_PLAYLIST_UNSUPPORTED:I = 0x2

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_DOWNLOADFAIL:I = 0x4

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_DRMLICENSEERROR:I = 0x5

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_UNSUPPORTED:I = 0x3

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_VOLIBLICENSEERROR:I = 0x6

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_BITRATE_CHANGE:I = 0x1

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_CHUNK_BEGINDOWNLOAD:I = 0x4

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_CHUNK_DOWNLOADOK:I = 0x6

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_CHUNK_DROPPED:I = 0x5

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_DISCONTINUE_SAMPLE:I = 0xb

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_FILE_FORMATSUPPORTED:I = 0x9

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_LIVESEEKABLE:I = 0xa

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_MEDIATYPE_CHANGE:I = 0x2

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_PLAYLIST_DOWNLOADOK:I = 0x7

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_PROGRAM_CHANGE:I = 0x8

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_PROGRAM_TYPE:I = 0x3

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_WARNING_EVENT_CHUNK_DOWNLOADERROR:I = 0x1

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_WARNING_EVENT_CHUNK_DRMERROR:I = 0x3

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_WARNING_EVENT_CHUNK_FILEFORMATUNSUPPORTED:I = 0x2

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_WARNING_EVENT_PLAYLIST_DOWNLOADERROR:I = 0x4

.field public static final VOOSMP_SRC_AUTO_DETECT:I = 0x0

.field public static final VOOSMP_SRC_CB_Adaptive_Stream_SEEK2LASTCHUNK:I = 0x2000073

.field public static final VOOSMP_SRC_CB_Adaptive_Stream_Warning:I = 0x2000050

.field public static final VOOSMP_SRC_CB_Adaptive_Streaming_Error:I = 0x2000040

.field public static final VOOSMP_SRC_CB_Adaptive_Streaming_Info:I = 0x2000030

.field public static final VOOSMP_SRC_CB_Authentication_Request:I = 0x3000001

.field public static final VOOSMP_SRC_CB_BA_Happened:I = 0x200000b

.field public static final VOOSMP_SRC_CB_Connecting:I = 0x2000001

.field public static final VOOSMP_SRC_CB_Connection_Fail:I = -0x7dfffffa

.field public static final VOOSMP_SRC_CB_Connection_Finished:I = 0x2000002

.field public static final VOOSMP_SRC_CB_Connection_Loss:I = -0x7dfffffc

.field public static final VOOSMP_SRC_CB_Connection_Rejected:I = -0x7dfffff6

.field public static final VOOSMP_SRC_CB_Connection_Timeout:I = -0x7dfffffd

.field public static final VOOSMP_SRC_CB_Customer_Tag:I = 0x2000020

.field public static final VOOSMP_SRC_CB_DRM_AV_Out_Fail:I = -0x7dfffff3

.field public static final VOOSMP_SRC_CB_DRM_Fail:I = -0x7dfffff8

.field public static final VOOSMP_SRC_CB_DRM_Init_Data:I = 0x3000004

.field public static final VOOSMP_SRC_CB_DRM_Not_Secure:I = 0x200000c

.field public static final VOOSMP_SRC_CB_Download_Fail:I = -0x7dfffff9

.field public static final VOOSMP_SRC_CB_Download_Fail_Recover_Success:I = 0x200000f

.field public static final VOOSMP_SRC_CB_Download_Fail_Waiting_Recover:I = -0x7dfffff2

.field public static final VOOSMP_SRC_CB_Download_Status:I = 0x2000005

.field public static final VOOSMP_SRC_CB_IO_HTTP_Download_Failed:I = 0x3000003

.field public static final VOOSMP_SRC_CB_IO_HTTP_Start_Download:I = 0x3000002

.field public static final VOOSMP_SRC_CB_Not_Applicable_Media:I = 0x2000074

.field public static final VOOSMP_SRC_CB_Open_Finished:I = 0x2000010

.field public static final VOOSMP_SRC_CB_Output_Control_Settings:I = 0x3000005

.field public static final VOOSMP_SRC_CB_PD_BUFFERING_PERCENT:I = 0x2000076

.field public static final VOOSMP_SRC_CB_PD_DOWNLOAD_POSITION:I = 0x2000075

.field public static final VOOSMP_SRC_CB_Playlist_Parse_Err:I = -0x7dfffff7

.field public static final VOOSMP_SRC_CB_Preferred_Audio_Language:I = 0x2000078

.field public static final VOOSMP_SRC_CB_Preferred_Subtitle_Language:I = 0x2000079

.field public static final VOOSMP_SRC_CB_Program_Changed:I = 0x2000071

.field public static final VOOSMP_SRC_CB_Program_Reset:I = 0x2000072

.field public static final VOOSMP_SRC_CB_RTSP_Error:I = 0x2000060

.field public static final VOOSMP_SRC_CB_Seek_Complete:I = 0x2000070

.field public static final VOOSMP_SRC_CB_UPDATE_URL_COMPLETE:I = 0x2000077

.field public static final VOOSMP_SRC_CHUNK_AUDIO:I = 0x0

.field public static final VOOSMP_SRC_CHUNK_AUDIOVIDEO:I = 0x2

.field public static final VOOSMP_SRC_CHUNK_HEADDATA:I = 0x3

.field public static final VOOSMP_SRC_CHUNK_SUBTITLE:I = 0x4

.field public static final VOOSMP_SRC_CHUNK_UNKNOWN:I = 0xff

.field public static final VOOSMP_SRC_CHUNK_VIDEO:I = 0x1

.field public static final VOOSMP_SRC_CUSTOMERTAGID_TIMEDTAG:I = 0x1

.field public static final VOOSMP_SRC_ERR_CB_CONTROL_WARNING_EVENT:I = -0x7fffeffe

.field public static final VOOSMP_SRC_ERR_CHUNK_SKIP:I = -0x7efffff5

.field public static final VOOSMP_SRC_ERR_CONTENT_ENCRYPT:I = -0x7efffffe

.field public static final VOOSMP_SRC_ERR_DIVXUNSUPPORTED:I = -0x7efffff3

.field public static final VOOSMP_SRC_ERR_ERROR_DATA:I = -0x7efffffc

.field public static final VOOSMP_SRC_ERR_FORCETIMESTAMP:I = -0x7efffff4

.field public static final VOOSMP_SRC_ERR_FORMAT_UNSUPPORT:I = -0x7efffffa

.field public static final VOOSMP_SRC_ERR_NO_DOWNLOAD_OP:I = -0x7efffff8

.field public static final VOOSMP_SRC_ERR_NO_LIB_OP:I = -0x7efffff7

.field public static final VOOSMP_SRC_ERR_OPEN_SRC_FAIL:I = -0x7effffff

.field public static final VOOSMP_SRC_ERR_OUTPUT_NOTFOUND:I = -0x7efffff6

.field public static final VOOSMP_SRC_ERR_PLAYMODE_UNSUPPORT:I = -0x7efffffd

.field public static final VOOSMP_SRC_ERR_SEEK_FAIL:I = -0x7efffffb

.field public static final VOOSMP_SRC_ERR_SOURCE_UNINITIALIZE:I = -0x7fffefff

.field public static final VOOSMP_SRC_ERR_TRACK_NOTFOUND:I = -0x7efffff9

.field public static final VOOSMP_SRC_FFAUDIO_AAC:I = 0x80000

.field public static final VOOSMP_SRC_FFAUDIO_AC3:I = 0x8000020

.field public static final VOOSMP_SRC_FFAUDIO_ALAC:I = 0x8000010

.field public static final VOOSMP_SRC_FFAUDIO_AMR:I = 0x100000

.field public static final VOOSMP_SRC_FFAUDIO_APE:I = 0x8000008

.field public static final VOOSMP_SRC_FFAUDIO_AU:I = 0x8000004

.field public static final VOOSMP_SRC_FFAUDIO_AWB:I = 0x200000

.field public static final VOOSMP_SRC_FFAUDIO_DTS:I = 0x8000080

.field public static final VOOSMP_SRC_FFAUDIO_FLAC:I = 0x8000002

.field public static final VOOSMP_SRC_FFAUDIO_MIDI:I = 0x4000000

.field public static final VOOSMP_SRC_FFAUDIO_MP3:I = 0x400000

.field public static final VOOSMP_SRC_FFAUDIO_OGG:I = 0x8000001

.field public static final VOOSMP_SRC_FFAUDIO_PCM:I = 0x8000040

.field public static final VOOSMP_SRC_FFAUDIO_QCP:I = 0x800000

.field public static final VOOSMP_SRC_FFAUDIO_WAV:I = 0x1000000

.field public static final VOOSMP_SRC_FFAUDIO_WMA:I = 0x2000000

.field public static final VOOSMP_SRC_FFMOVIE_ASF:I = 0x2

.field public static final VOOSMP_SRC_FFMOVIE_AVI:I = 0x4

.field public static final VOOSMP_SRC_FFMOVIE_CMMB:I = 0x200

.field public static final VOOSMP_SRC_FFMOVIE_DV:I = 0x80

.field public static final VOOSMP_SRC_FFMOVIE_FLV:I = 0x100

.field public static final VOOSMP_SRC_FFMOVIE_MKV:I = 0x400

.field public static final VOOSMP_SRC_FFMOVIE_MOV:I = 0x8

.field public static final VOOSMP_SRC_FFMOVIE_MP4:I = 0x1

.field public static final VOOSMP_SRC_FFMOVIE_MPG:I = 0x20

.field public static final VOOSMP_SRC_FFMOVIE_REAL:I = 0x10

.field public static final VOOSMP_SRC_FFMOVIE_TS:I = 0x40

.field public static final VOOSMP_SRC_FFSTREAMING_CMMB:I = 0x8004000

.field public static final VOOSMP_SRC_FFSTREAMING_DASH:I = 0x8001000

.field public static final VOOSMP_SRC_FFSTREAMING_HLS:I = 0x8000400

.field public static final VOOSMP_SRC_FFSTREAMING_HTTPPD:I = 0x8002000

.field public static final VOOSMP_SRC_FFSTREAMING_PUSHPD:I = 0x8010000

.field public static final VOOSMP_SRC_FFSTREAMING_RTSP:I = 0x8000100

.field public static final VOOSMP_SRC_FFSTREAMING_SSSTR:I = 0x8000800

.field public static final VOOSMP_SRC_FFSTREMAING_SDP:I = 0x8000200

.field public static final VOOSMP_SRC_FFVIDEO_H261:I = 0x2000

.field public static final VOOSMP_SRC_FFVIDEO_H263:I = 0x1000

.field public static final VOOSMP_SRC_FFVIDEO_H264:I = 0x800

.field public static final VOOSMP_SRC_FFVIDEO_H265:I = 0x8008000

.field public static final VOOSMP_SRC_FFVIDEO_MJPEG:I = 0x20000

.field public static final VOOSMP_SRC_FFVIDEO_MPEG1:I = 0x10000

.field public static final VOOSMP_SRC_FFVIDEO_MPEG2:I = 0x8000

.field public static final VOOSMP_SRC_FFVIDEO_MPEG4:I = 0x4000

.field public static final VOOSMP_SRC_FFVIDEO_RAWDATA:I = 0x40000

.field public static final VOOSMP_SRC_HTTP_BEGIN:I = 0x0

.field public static final VOOSMP_SRC_HTTP_REQUESTPREPARED:I = 0x2

.field public static final VOOSMP_SRC_HTTP_REQUESTSEND:I = 0x3

.field public static final VOOSMP_SRC_HTTP_RESPONSEANALYSED:I = 0x5

.field public static final VOOSMP_SRC_HTTP_RESPONSERECVED:I = 0x4

.field public static final VOOSMP_SRC_HTTP_SOCKETCONNECTED:I = 0x1

.field public static final VOOSMP_SRC_PID_ANALYTICS_FUNCTION_SET:I = 0x300002f

.field public static final VOOSMP_SRC_PID_ANALYTICS_OBJECT:I = 0x3000035

.field public static final VOOSMP_SRC_PID_APPLICATION_RESUME:I = 0x3000025

.field public static final VOOSMP_SRC_PID_APPLICATION_SUSPEND:I = 0x3000024

.field public static final VOOSMP_SRC_PID_BA_STARTCAP:I = 0x300000d

.field public static final VOOSMP_SRC_PID_BA_WORKMODE:I = 0x3000016

.field public static final VOOSMP_SRC_PID_BITRATE_THRESHOLD:I = 0x3000026

.field public static final VOOSMP_SRC_PID_BUFFER_BUFFERING_TIME:I = 0x3000014

.field public static final VOOSMP_SRC_PID_BUFFER_MAX_SIZE:I = 0x3000019

.field public static final VOOSMP_SRC_PID_BUFFER_START_BUFFERING_TIME:I = 0x3000013

.field public static final VOOSMP_SRC_PID_CAN_PLAYBACK_I_FRAME_ONLY:I = 0x3000046

.field public static final VOOSMP_SRC_PID_CAP_TABLE_PATH:I = 0x300000c

.field public static final VOOSMP_SRC_PID_CC_AUTO_SWITCH_DURATION:I = 0x3000005

.field public static final VOOSMP_SRC_PID_COMMAND_STRING:I = 0x300000b

.field public static final VOOSMP_SRC_PID_DEFAULT_AUDIO_LANGUAGE:I = 0x300002c

.field public static final VOOSMP_SRC_PID_DEFAULT_SUBTITLE_LANGUAGE:I = 0x300002d

.field public static final VOOSMP_SRC_PID_DISABLE_CPU_ADAPTION:I = 0x3000011

.field public static final VOOSMP_SRC_PID_DODRMVERIFICATION:I = 0x300000e

.field public static final VOOSMP_SRC_PID_DOHTTPVERIFICATION:I = 0x3000009

.field public static final VOOSMP_SRC_PID_DOWNLOAD_FAIL_MAX_TOLERANT_COUNT:I = 0x3000010

.field public static final VOOSMP_SRC_PID_DRM_ADAPTER_OBJECT:I = 0x300001f

.field public static final VOOSMP_SRC_PID_DRM_API_NAME:I = 0x3000002

.field public static final VOOSMP_SRC_PID_DRM_CALLBACK_FUNC:I = 0x3000007

.field public static final VOOSMP_SRC_PID_DRM_FILE_NAME:I = 0x3000001

.field public static final VOOSMP_SRC_PID_DRM_FILE_PATH:I = 0x3000038

.field public static final VOOSMP_SRC_PID_DRM_FUNC_SET:I = 0x3000012

.field public static final VOOSMP_SRC_PID_DRM_INIT_DATA_RESPONSE:I = 0x3000023

.field public static final VOOSMP_SRC_PID_DRM_OFFLINE_MODE:I = 0x3000047

.field public static final VOOSMP_SRC_PID_DRM_THIRDPARTY_FUNC_SET:I = 0x3000006

.field public static final VOOSMP_SRC_PID_DRM_UNIQUE_IDENTIFIER:I = 0x300000f

.field public static final VOOSMP_SRC_PID_DVRINFO:I = 0x3000015

.field public static final VOOSMP_SRC_PID_ENABLE_GZIP_IN_REQUEST:I = 0x3000039

.field public static final VOOSMP_SRC_PID_ENABLE_RTSP_HTTP_TUNNELING:I = 0x3000028

.field public static final VOOSMP_SRC_PID_FUNC_IO:I = 0x3000003

.field public static final VOOSMP_SRC_PID_FUNC_READ_BUF:I = 0x3000004

.field public static final VOOSMP_SRC_PID_GET_EFFECTIVE_DURATION:I = 0x3000041

.field public static final VOOSMP_SRC_PID_GET_IO_STATUS:I = 0x3000040

.field public static final VOOSMP_SRC_PID_HTTP_HEADER:I = 0x300001a

.field public static final VOOSMP_SRC_PID_HTTP_PROXY_INFO:I = 0x300001c

.field public static final VOOSMP_SRC_PID_HTTP_RETRY_TIMEOUT:I = 0x300002b

.field public static final VOOSMP_SRC_PID_INIT_PARAM_ACTUAL_FILE_SIZE:I = 0x3010012

.field public static final VOOSMP_SRC_PID_INIT_PARAM_DURATION:I = 0x3010016

.field public static final VOOSMP_SRC_PID_INIT_PARAM_INIT_LIBOP:I = 0x3010013

.field public static final VOOSMP_SRC_PID_INIT_PARAM_IO_API_NAME:I = 0x3010015

.field public static final VOOSMP_SRC_PID_INIT_PARAM_IO_FILE_NAME:I = 0x3010014

.field public static final VOOSMP_SRC_PID_LOW_LATENCY_MODE:I = 0x3000018

.field public static final VOOSMP_SRC_PID_OUTPUT_TS_SAMPLE:I = 0x3000037

.field public static final VOOSMP_SRC_PID_PD_CONNECTION_RETRY_TIMES:I = 0x3000021

.field public static final VOOSMP_SRC_PID_PEEK_MORE_BUFFERS:I = 0x300002e

.field public static final VOOSMP_SRC_PID_PERIOD2TIME:I = 0x3000022

.field public static final VOOSMP_SRC_PID_PREFERRED_AUDIO_LANGUAGE:I = 0x3000031

.field public static final VOOSMP_SRC_PID_PREFERRED_SUBTITLE_LANGUAGE:I = 0x3000032

.field public static final VOOSMP_SRC_PID_PRESENTATION_DELAY:I = 0x3000020

.field public static final VOOSMP_SRC_PID_RTSP_CONNECTION_PORT:I = 0x300001b

.field public static final VOOSMP_SRC_PID_RTSP_CONNECTION_TIMEOUT:I = 0x3000033

.field public static final VOOSMP_SRC_PID_RTSP_MAX_SOCKET_ERROR_COUNT:I = 0x3000034

.field public static final VOOSMP_SRC_PID_RTSP_OVER_HTTP_CONNECTION_PORT:I = 0x3000029

.field public static final VOOSMP_SRC_PID_RTSP_STATUS:I = 0x3000017

.field public static final VOOSMP_SRC_PID_SEGMENT_DOWNLOAD_RETRY_COUNT:I = 0x3000027

.field public static final VOOSMP_SRC_PID_SOCKET_CONNECTION_TYPE:I = 0x300000a

.field public static final VOOSMP_SRC_PID_SOURCE_MODULE_OBJECT:I = 0x3010011

.field public static final VOOSMP_SRC_PID_SUBTITLE_AUTO_ADJUSTMENT:I = 0x3000043

.field public static final VOOSMP_SRC_PID_TRACK_CHANGED:I = 0x3000030

.field public static final VOOSMP_SRC_PID_Timed_Text_ClosedCaption:I = 0x3010010

.field public static final VOOSMP_SRC_PID_UPDATE_SOURCE_URL:I = 0x300002a

.field public static final VOOSMP_SRC_PID_URL_QUERY_STRING:I = 0x3000045

.field public static final VOOSMP_SRC_PID_UTC_POSITION:I = 0x3000036

.field public static final VOOSMP_SRC_RTSP_ERROR_CONNECT_FAIL:I = 0x1

.field public static final VOOSMP_SRC_RTSP_ERROR_DESCRIBE_FAIL:I = 0x2

.field public static final VOOSMP_SRC_RTSP_ERROR_HTTP_ERROR:I = 0x8

.field public static final VOOSMP_SRC_RTSP_ERROR_OPTION_FAIL:I = 0x6

.field public static final VOOSMP_SRC_RTSP_ERROR_PAUSE_FAIL:I = 0x5

.field public static final VOOSMP_SRC_RTSP_ERROR_PLAY_FAIL:I = 0x4

.field public static final VOOSMP_SRC_RTSP_ERROR_SETUP_FAIL:I = 0x3

.field public static final VOOSMP_SRC_RTSP_ERROR_SOCKET_ERROR:I = 0x7

.field public static final VOOSMP_SRC_RTSP_ERROR_URL_EXPIRED:I = 0x9

.field public static final VOOSMP_SRC_TRACK_SELECT_DEFAULT:I = 0x8

.field public static final VOOSMP_SRC_TRACK_SELECT_DISABLE:I = 0x4

.field public static final VOOSMP_SRC_TRACK_SELECT_FORCE:I = 0x10

.field public static final VOOSMP_SRC_TRACK_SELECT_RECOMMEND:I = 0x1

.field public static final VOOSMP_SRC_TRACK_SELECT_SELECTABLE:I = 0x0

.field public static final VOOSMP_SRC_TRACK_SELECT_SELECTED:I = 0x2

.field public static final VOOSMP_STATUS_INIT:I = 0x0

.field public static final VOOSMP_STATUS_LOADING:I = 0x1

.field public static final VOOSMP_STATUS_PAUSED:I = 0x3

.field public static final VOOSMP_STATUS_RUNNING:I = 0x2

.field public static final VOOSMP_STATUS_STOPPED:I = 0x4

.field public static final VOOSMP_VOME2_PLAYER:I = 0x0

.field public static final VOOSMP_ZM_FITWINDOW:I = 0x3

.field public static final VOOSMP_ZM_LETTERBOX:I = 0x1

.field public static final VOOSMP_ZM_ORIGINAL:I = 0x4

.field public static final VOOSMP_ZM_PANSCAN:I = 0x2

.field public static final VOOSMP_ZM_ZOOMIN:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
