.class public final Lcom/adobe/adobepass/accessenabler/d/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adobepass/accessenabler/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/adobe/adobepass/accessenabler/d/c$b;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/adobepass/accessenabler/d/c$b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/d/c$a;->a:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/adobe/adobepass/accessenabler/d/c$a;->b:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/adobe/adobepass/accessenabler/d/c$a;->c:Lcom/adobe/adobepass/accessenabler/d/c$b;

    .line 39
    iput-object p4, p0, Lcom/adobe/adobepass/accessenabler/d/c$a;->d:Ljava/lang/String;

    .line 40
    return-void
.end method
