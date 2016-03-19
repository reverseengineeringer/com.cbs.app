.class public final Lcom/adobe/adobepass/accessenabler/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/c;->a:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/c;->b:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/a/c;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/a/c;->c:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/a/c;->b:Ljava/lang/String;

    .line 53
    return-void
.end method
