.class public final Landroid/support/v7/media/MediaRouter$ProviderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderInfo"
.end annotation


# instance fields
.field private mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

.field private final mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

.field private final mProviderInstance:Landroid/support/v7/media/MediaRouteProvider;

.field private mResources:Landroid/content/res/Resources;

.field private mResourcesNotAvailable:Z

.field private final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouteProvider;)V
    .locals 1

    .prologue
    .line 1364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/ArrayList;

    .line 1365
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroid/support/v7/media/MediaRouteProvider;

    .line 1366
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteProvider;->getMetadata()Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    .line 1367
    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Landroid/support/v7/media/MediaRouteProvider;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroid/support/v7/media/MediaRouteProvider;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method final findRouteByDescriptorId(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1423
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1424
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1425
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;
    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$000(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1429
    :goto_1
    return v0

    .line 1424
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1429
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;
    .locals 1

    .prologue
    .line 1373
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1374
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroid/support/v7/media/MediaRouteProvider;

    return-object v0
.end method

.method final getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 1400
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mResourcesNotAvailable:Z

    if-nez v0, :cond_0

    .line 1401
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1402
    sget-object v1, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v1, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getProviderContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 1403
    if-eqz v0, :cond_1

    .line 1404
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mResources:Landroid/content/res/Resources;

    .line 1411
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mResources:Landroid/content/res/Resources;

    return-object v0

    .line 1408
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mResourcesNotAvailable:Z

    goto :goto_0
.end method

.method public final getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1395
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1396
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaRouter.RouteProviderInfo{ packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->getPackageName()Ljava/lang/String;

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

.method final updateDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)Z
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

    if-eq v0, p1, :cond_0

    .line 1416
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .line 1417
    const/4 v0, 0x1

    .line 1419
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
