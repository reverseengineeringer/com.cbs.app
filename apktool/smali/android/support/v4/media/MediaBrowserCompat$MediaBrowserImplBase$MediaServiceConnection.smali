.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$1;)V
    .locals 0

    .prologue
    .line 830
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V

    return-void
.end method

.method private isCurrent(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$200(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 902
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1400(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with mServiceConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$200(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 907
    :cond_0
    const/4 v0, 0x0

    .line 909
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 841
    const-string v0, "onServiceConnected"

    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->isCurrent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {p2}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaBrowserServiceCompat;

    move-result-object v1

    # setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1302(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompat;)Landroid/support/v4/media/IMediaBrowserServiceCompat;

    .line 850
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # invokes: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getNewServiceCallbacks()Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1500(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;

    move-result-object v1

    # setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1202(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    .line 851
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    const/4 v1, 0x1

    # setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$602(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;I)I

    .line 860
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1300(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/IMediaBrowserServiceCompat;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootHints:Landroid/os/Bundle;
    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1700(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1200(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 866
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteException during connect for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1400(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 884
    const-string v0, "onServiceDisconnected"

    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->isCurrent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1302(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompat;)Landroid/support/v4/media/IMediaBrowserServiceCompat;

    .line 890
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1202(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    .line 893
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    const/4 v1, 0x3

    # setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$602(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;I)I

    .line 894
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$400(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionSuspended()V

    goto :goto_0
.end method
