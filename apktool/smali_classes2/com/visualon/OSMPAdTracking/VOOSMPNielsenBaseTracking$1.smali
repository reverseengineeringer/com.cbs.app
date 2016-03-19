.class Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nielsen/app/sdk/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->CreateAppSdk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppSdkEvent(JILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 219
    invoke-static {}, Lcom/nielsen/app/sdk/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[TRACKING], Nielsen, It failed in creating the App SDK framework"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :goto_0
    return-void

    .line 223
    :cond_0
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    invoke-static {}, Lcom/nielsen/app/sdk/l;->e()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->nuid:Ljava/lang/String;
    invoke-static {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    invoke-static {}, Lcom/nielsen/app/sdk/l;->f()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->idfa:Ljava/lang/String;
    invoke-static {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    invoke-static {}, Lcom/nielsen/app/sdk/l;->g()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sdkVersion:Ljava/lang/String;
    invoke-static {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    invoke-static {}, Lcom/nielsen/app/sdk/l;->d()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->optOutUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    const-string v0, "[TRACKING], Nielsen, Device information: Nuid(%s) IDFA(%s) Version(%s) UserOptOut(%s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    # getter for: Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->nuid:Ljava/lang/String;
    invoke-static {}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->access$100()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    # getter for: Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->idfa:Ljava/lang/String;
    invoke-static {}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->access$200()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    # getter for: Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sdkVersion:Ljava/lang/String;
    invoke-static {}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->access$300()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    # getter for: Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->optOutUrl:Ljava/lang/String;
    invoke-static {}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->access$400()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;

    invoke-virtual {v1}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;

    # getter for: Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sub:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;
    invoke-static {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->access$500(Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;)Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->initConfig()V

    goto :goto_0
.end method
