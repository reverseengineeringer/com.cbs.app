.class public Lcom/cbs/app/androiddata/model/rest/UserStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/UserStatus;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/cbs/app/androiddata/model/rest/UserStatus;->a:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/UserStatus;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/cbs/app/androiddata/model/rest/UserStatus;->a:I

    .line 28
    return-void
.end method
