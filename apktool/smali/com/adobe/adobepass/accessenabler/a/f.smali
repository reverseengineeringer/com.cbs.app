.class public final Lcom/adobe/adobepass/accessenabler/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/adobe/adobepass/accessenabler/a/f;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/adobe/adobepass/accessenabler/a/f;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/adobe/adobepass/accessenabler/a/f;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/a/f;->a:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/adobe/adobepass/accessenabler/a/f;->b:Ljava/lang/Object;

    .line 45
    iput-boolean p3, p0, Lcom/adobe/adobepass/accessenabler/a/f;->c:Z

    .line 46
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/f;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/adobe/adobepass/accessenabler/a/f;->c:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/a/f;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/a/f;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/a/f;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 65
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/f;->a:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/a/f;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/a/f;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | Encrypted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adobe/adobepass/accessenabler/a/f;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
