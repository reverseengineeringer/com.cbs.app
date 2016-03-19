.class final Lcom/adobe/adobepass/accessenabler/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adobepass/accessenabler/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field final synthetic c:Lcom/adobe/adobepass/accessenabler/b/b;


# direct methods
.method public constructor <init>(Lcom/adobe/adobepass/accessenabler/b/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/b/b$a;->c:Lcom/adobe/adobepass/accessenabler/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/adobe/adobepass/accessenabler/b/b$a;->a:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/adobe/adobepass/accessenabler/b/b$a;->b:Ljava/lang/String;

    .line 40
    return-void
.end method
