.class public final Lcom/adobe/adobepass/accessenabler/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/adobe/adobepass/accessenabler/a/d;->a:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/adobepass/accessenabler/a/d;->a:I

    .line 36
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/a/d;->b:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/d;->c:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/adobe/adobepass/accessenabler/a/d;->a:I

    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/a/d;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/a/d;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/d;->c:Ljava/lang/String;

    return-object v0
.end method
