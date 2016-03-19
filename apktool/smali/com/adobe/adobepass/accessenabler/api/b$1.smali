.class final Lcom/adobe/adobepass/accessenabler/api/b$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/adobepass/accessenabler/api/b;->a(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adobe/adobepass/accessenabler/api/b;


# direct methods
.method constructor <init>(Lcom/adobe/adobepass/accessenabler/api/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/api/b$1;->c:Lcom/adobe/adobepass/accessenabler/api/b;

    iput-object p2, p0, Lcom/adobe/adobepass/accessenabler/api/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/adobepass/accessenabler/api/b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 112
    const-string v0, "resource_id"

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/b$1;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adobepass/accessenabler/api/b$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "generic_data"

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/b$1;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adobepass/accessenabler/api/b$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method
