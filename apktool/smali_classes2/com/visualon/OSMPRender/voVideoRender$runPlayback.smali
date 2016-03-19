.class Lcom/visualon/OSMPRender/voVideoRender$runPlayback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPRender/voVideoRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "runPlayback"
.end annotation


# instance fields
.field private mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

.field final synthetic this$0:Lcom/visualon/OSMPRender/voVideoRender;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPRender/voVideoRender;Lcom/visualon/OSMPRender/voVideoRender;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/visualon/OSMPRender/voVideoRender$runPlayback;->this$0:Lcom/visualon/OSMPRender/voVideoRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/visualon/OSMPRender/voVideoRender$runPlayback;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    .line 89
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender$runPlayback;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voVideoRender;->playback()V

    .line 94
    return-void
.end method
