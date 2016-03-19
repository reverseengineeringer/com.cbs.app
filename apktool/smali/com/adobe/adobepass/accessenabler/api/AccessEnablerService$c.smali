.class final Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;

.field final synthetic d:Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;


# direct methods
.method public constructor <init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->d:Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->d:Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->a:I

    .line 76
    iput-object p2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->b:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->c:Ljava/lang/Boolean;

    .line 78
    return-void
.end method
