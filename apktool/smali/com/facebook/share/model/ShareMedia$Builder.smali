.class public abstract Lcom/facebook/share/model/ShareMedia$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/facebook/share/model/ShareMedia;",
        "B:",
        "Lcom/facebook/share/model/ShareMedia$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder",
        "<TM;TB;>;"
    }
.end annotation


# instance fields
.field private params:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/model/ShareMedia$Builder;->params:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareMedia$Builder;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/share/model/ShareMedia$Builder;->params:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public readFrom(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)TB;"
        }
    .end annotation

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMedia;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareMedia$Builder;->setParameters(Landroid/os/Bundle;)Lcom/facebook/share/model/ShareMedia$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 1

    .prologue
    .line 63
    check-cast p1, Lcom/facebook/share/model/ShareMedia;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMedia$Builder;->readFrom(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/ShareMedia$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/share/model/ShareMedia$Builder;->params:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object p0
.end method

.method public setParameters(Landroid/os/Bundle;)Lcom/facebook/share/model/ShareMedia$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/share/model/ShareMedia$Builder;->params:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 85
    return-object p0
.end method
