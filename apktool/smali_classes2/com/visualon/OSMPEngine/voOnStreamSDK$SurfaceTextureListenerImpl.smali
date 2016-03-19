.class Lcom/visualon/OSMPEngine/voOnStreamSDK$SurfaceTextureListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPEngine/voOnStreamSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceTextureListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$SurfaceTextureListenerImpl;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .prologue
    .line 632
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "onSurfaceTextureAvailable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 634
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$SurfaceTextureListenerImpl;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/16 v2, 0x66

    invoke-virtual {v1, v2, v3, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 635
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 639
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "onSurfaceTextureDestroyed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    return v3
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .prologue
    .line 646
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "onSurfaceTextureSizeChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 653
    return-void
.end method
