.class public abstract Lcom/cbs/app/androiddata/serverrequest/BaseServerRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ServerRequest;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/cbs/app/androiddata/ResponseModelListener;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:J

.field protected g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/androiddata/serverrequest/BaseServerRequest;->g:Z

    .line 34
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cbs/app/androiddata/serverrequest/BaseServerRequest;->a:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getHttpMethod()Ljava/lang/String;
.end method

.method public getListener()Lcom/cbs/app/androiddata/ResponseModelListener;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cbs/app/androiddata/serverrequest/BaseServerRequest;->c:Lcom/cbs/app/androiddata/ResponseModelListener;

    return-object v0
.end method

.method public abstract getMappingClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/cbs/app/androiddata/ResponseModel;",
            ">;"
        }
    .end annotation
.end method

.method public getPostBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPostBodyMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeToLive()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/cbs/app/androiddata/serverrequest/BaseServerRequest;->f:J

    return-wide v0
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method
