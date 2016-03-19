.class public final Landroid/support/v7/media/MediaRouter$RouteInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteInfo"
.end annotation


# static fields
.field static final CHANGE_GENERAL:I = 0x1

.field static final CHANGE_PRESENTATION_DISPLAY:I = 0x4

.field static final CHANGE_VOLUME:I = 0x2

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1


# instance fields
.field private mCanDisconnect:Z

.field private mConnecting:Z

.field private final mControlFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;

.field private mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

.field private final mDescriptorId:Ljava/lang/String;

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mName:Ljava/lang/String;

.field private mPlaybackStream:I

.field private mPlaybackType:I

.field private mPresentationDisplay:Landroid/view/Display;

.field private mPresentationDisplayId:I

.field private final mProvider:Landroid/support/v7/media/MediaRouter$ProviderInfo;

.field private mSettingsIntent:Landroid/content/IntentSender;

.field private final mUniqueId:Ljava/lang/String;

.field private mVolume:I

.field private mVolumeHandling:I

.field private mVolumeMax:I


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    .line 781
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 836
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mProvider:Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 837
    iput-object p2, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 838
    iput-object p3, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 839
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 1

    .prologue
    .line 765
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    return v0
.end method

.method static synthetic access$800(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/support/v7/media/MediaRouteDescriptor;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    return-object v0
.end method


# virtual methods
.method public final canDisconnect()Z
    .locals 1

    .prologue
    .line 1154
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    return v0
.end method

.method public final getControlFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 947
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method final getDescriptorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaybackStream()I
    .locals 1

    .prologue
    .line 1112
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    return v0
.end method

.method public final getPlaybackType()I
    .locals 1

    .prologue
    .line 1103
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackType:I

    return v0
.end method

.method public final getPresentationDisplay()Landroid/view/Display;
    .locals 2

    .prologue
    .line 1218
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1219
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 1220
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    .line 1222
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public final getProvider()Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mProvider:Landroid/support/v7/media/MediaRouter$ProviderInfo;

    return-object v0
.end method

.method final getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;
    .locals 1

    .prologue
    .line 1344
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mProvider:Landroid/support/v7/media/MediaRouter$ProviderInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    return-object v0
.end method

.method public final getSettingsIntent()Landroid/content/IntentSender;
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    return-object v0
.end method

.method public final getVolume()I
    .locals 1

    .prologue
    .line 1133
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolume:I

    return v0
.end method

.method public final getVolumeHandling()I
    .locals 1

    .prologue
    .line 1123
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    return v0
.end method

.method public final getVolumeMax()I
    .locals 1

    .prologue
    .line 1143
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeMax:I

    return v0
.end method

.method public final isConnecting()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnecting:Z

    return v0
.end method

.method public final isDefault()Z
    .locals 1

    .prologue
    .line 930
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 931
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 897
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    return v0
.end method

.method public final isSelected()Z
    .locals 1

    .prologue
    .line 918
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 919
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z
    .locals 2

    .prologue
    .line 959
    if-nez p1, :cond_0

    .line 960
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_0
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 963
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouteSelector;->matchesControlFilters(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public final requestSetVolume(I)V
    .locals 3

    .prologue
    .line 1167
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1168
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeMax:I

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->requestSetVolume(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 1169
    return-void
.end method

.method public final requestUpdateVolume(I)V
    .locals 1

    .prologue
    .line 1181
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1182
    if-eqz p1, :cond_0

    .line 1183
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->requestUpdateVolume(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 1185
    :cond_0
    return-void
.end method

.method public final select()V
    .locals 1

    .prologue
    .line 1247
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1248
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 1249
    return-void
.end method

.method public final sendControlRequest(Landroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)V
    .locals 2

    .prologue
    .line 1087
    if-nez p1, :cond_0

    .line 1088
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intent must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_0
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1092
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->sendControlRequest(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)V

    .line 1093
    return-void
.end method

.method public final supportsControlAction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1020
    if-nez p1, :cond_0

    .line 1021
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_0
    if-nez p2, :cond_1

    .line 1024
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1026
    :cond_1
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1028
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 1029
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1030
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 1031
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1032
    const/4 v0, 0x1

    .line 1035
    :goto_1
    return v0

    .line 1029
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1035
    goto :goto_1
.end method

.method public final supportsControlCategory(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 985
    if-nez p1, :cond_0

    .line 986
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_0
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 990
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 991
    :goto_0
    if-ge v2, v3, :cond_2

    .line 992
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    const/4 v0, 0x1

    .line 996
    :goto_1
    return v0

    .line 991
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 996
    goto :goto_1
.end method

.method public final supportsControlRequest(Landroid/content/Intent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1053
    if-nez p1, :cond_0

    .line 1054
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intent must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1056
    :cond_0
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1058
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1059
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 1060
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1061
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    const-string v6, "MediaRouter"

    invoke-virtual {v0, v4, p1, v1, v6}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    move v0, v1

    .line 1065
    :goto_1
    return v0

    .line 1060
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1065
    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaRouter.RouteInfo{ uniqueId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connecting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnecting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canDisconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playbackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playbackStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settingsIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", providerPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mProvider:Landroid/support/v7/media/MediaRouter$ProviderInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final updateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1272
    const/4 v0, 0x0

    .line 1273
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    if-eq v2, p1, :cond_c

    .line 1274
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    .line 1275
    if-eqz p1, :cond_c

    .line 1276
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v7/media/MediaRouter;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1277
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    move v0, v1

    .line 1280
    :cond_0
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v7/media/MediaRouter;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1281
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    move v0, v1

    .line 1284
    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->isEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_e

    .line 1285
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 1288
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnecting:Z

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->isConnecting()Z

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1289
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->isConnecting()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnecting:Z

    .line 1290
    or-int/lit8 v1, v1, 0x1

    .line 1292
    :cond_2
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getControlFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1293
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1294
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getControlFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1295
    or-int/lit8 v1, v1, 0x1

    .line 1297
    :cond_3
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackType:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPlaybackType()I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 1298
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPlaybackType()I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 1299
    or-int/lit8 v1, v1, 0x1

    .line 1301
    :cond_4
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPlaybackStream()I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 1302
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPlaybackStream()I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 1303
    or-int/lit8 v1, v1, 0x1

    .line 1305
    :cond_5
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolumeHandling()I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 1306
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolumeHandling()I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 1307
    or-int/lit8 v1, v1, 0x3

    .line 1309
    :cond_6
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolume:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolume()I

    move-result v2

    if-eq v0, v2, :cond_7

    .line 1310
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolume()I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolume:I

    .line 1311
    or-int/lit8 v1, v1, 0x3

    .line 1313
    :cond_7
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeMax:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolumeMax()I

    move-result v2

    if-eq v0, v2, :cond_8

    .line 1314
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolumeMax()I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 1315
    or-int/lit8 v1, v1, 0x3

    .line 1317
    :cond_8
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPresentationDisplayId()I

    move-result v2

    if-eq v0, v2, :cond_9

    .line 1318
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPresentationDisplayId()I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 1319
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    .line 1320
    or-int/lit8 v1, v1, 0x5

    .line 1322
    :cond_9
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v7/media/MediaRouter;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1323
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    .line 1324
    or-int/lit8 v1, v1, 0x1

    .line 1326
    :cond_a
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getSettingsActivity()Landroid/content/IntentSender;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v7/media/MediaRouter;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1327
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getSettingsActivity()Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    .line 1328
    or-int/lit8 v1, v1, 0x1

    .line 1330
    :cond_b
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->canDisconnectAndKeepPlaying()Z

    move-result v2

    if-eq v0, v2, :cond_d

    .line 1331
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->canDisconnectAndKeepPlaying()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    .line 1332
    or-int/lit8 v0, v1, 0x5

    .line 1336
    :cond_c
    :goto_1
    return v0

    :cond_d
    move v0, v1

    goto :goto_1

    :cond_e
    move v1, v0

    goto/16 :goto_0
.end method
