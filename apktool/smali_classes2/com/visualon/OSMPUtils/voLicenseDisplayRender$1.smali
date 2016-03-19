.class Lcom/visualon/OSMPUtils/voLicenseDisplayRender$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->registerCleaner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPUtils/voLicenseDisplayRender;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender$1;->this$0:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender$1;->this$0:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->clean()V

    .line 58
    return-void
.end method
