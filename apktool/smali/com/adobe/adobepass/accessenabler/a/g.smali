.class public final Lcom/adobe/adobepass/accessenabler/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/a/g;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/adobe/adobepass/accessenabler/a/g;->b:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/adobe/adobepass/accessenabler/a/g;->c:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/adobe/adobepass/accessenabler/a/g;->d:Ljava/lang/String;

    .line 41
    iput-boolean p5, p0, Lcom/adobe/adobepass/accessenabler/a/g;->e:Z

    .line 42
    iput-boolean p6, p0, Lcom/adobe/adobepass/accessenabler/a/g;->f:Z

    .line 43
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/adobe/adobepass/accessenabler/a/g;->e:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 87
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    .line 89
    :cond_0
    instance-of v0, p1, Lcom/adobe/adobepass/accessenabler/a/g;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/g;->a:Ljava/lang/String;

    check-cast p1, Lcom/adobe/adobepass/accessenabler/a/g;

    .line 1046
    iget-object v1, p1, Lcom/adobe/adobepass/accessenabler/a/g;->a:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/adobe/adobepass/accessenabler/a/g;->f:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(^)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/a/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(^)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/a/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(^)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/a/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
