.class public interface abstract Lcom/conviva/ConvivaStreamerProxy;
.super Ljava/lang/Object;


# static fields
.field public static final BOOLEAN_FALSE:I = -0x1

.field public static final BOOLEAN_TRUE:I = 0x1

.field public static final BOOLEAN_UNAVAILABLE:I = 0x0

.field public static final BUFFERING:Ljava/lang/String; = "BUFFERING"

.field public static final CAPABILITY_BITRATE_EXTERNAL:I = 0x10

.field public static final CAPABILITY_BITRATE_METRICS:I = 0x4

.field public static final CAPABILITY_QUALITY_METRICS:I = 0x2

.field public static final CAPABILITY_VIDEO:I = 0x1

.field public static final ERROR:Ljava/lang/String; = "ERROR"

.field public static final METADATA_DURATION:Ljava/lang/String; = "duration"

.field public static final METADATA_ENCODED_FRAMERATE:Ljava/lang/String; = "framerate"

.field public static final PAUSED:Ljava/lang/String; = "PAUSED"

.field public static final PLAYING:Ljava/lang/String; = "PLAYING"

.field public static final STOPPED:Ljava/lang/String; = "STOPPED"

.field public static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# virtual methods
.method public abstract Cleanup()V
.end method

.method public abstract GetBufferLengthMs()I
.end method

.method public abstract GetCapabilities()I
.end method

.method public abstract GetDroppedFrames()I
.end method

.method public abstract GetIsLive()I
.end method

.method public abstract GetMinBufferLengthMs()I
.end method

.method public abstract GetPlayheadTimeMs()I
.end method

.method public abstract GetRenderedFrameRate()D
.end method

.method public abstract GetServerAddress()Ljava/lang/String;
.end method

.method public abstract GetStartingBufferLengthMs()I
.end method

.method public abstract GetStreamerType()Ljava/lang/String;
.end method

.method public abstract GetStreamerVersion()Ljava/lang/String;
.end method

.method public abstract setMonitoringNotifier(Lcom/conviva/monitor/IMonitorNotifier;)V
.end method
