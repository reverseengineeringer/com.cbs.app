.class public Lcom/cbs/app/view/model/registration/UserStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/view/model/registration/UserStatus;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/cbs/app/livetv/model/UserStatusEnum;
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/cbs/app/livetv/model/UserStatusEnum;->values()[Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v0

    iget v1, p0, Lcom/cbs/app/view/model/registration/UserStatus;->type:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/cbs/app/view/model/registration/UserStatus;->type:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cbs/app/view/model/registration/UserStatus;->description:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/cbs/app/view/model/registration/UserStatus;->type:I

    .line 29
    return-void
.end method
