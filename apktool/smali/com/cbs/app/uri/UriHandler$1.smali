.class final Lcom/cbs/app/uri/UriHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/uri/UriHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/cbs/app/uri/UriHandler$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 265
    invoke-static {}, Lcom/cbs/app/uri/UriHandler;->a()Ljava/lang/String;

    .line 267
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-static {}, Lcom/cbs/app/uri/UriHandler;->a()Ljava/lang/String;

    .line 250
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/AuthEndpointResponse;

    if-eqz v0, :cond_0

    .line 251
    check-cast p1, Lcom/cbs/app/view/model/rest/AuthEndpointResponse;

    .line 252
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/AuthEndpointResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-static {}, Lcom/cbs/app/uri/UriHandler;->a()Ljava/lang/String;

    .line 254
    new-instance v0, Lcom/cbs/app/service/AuthServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/AuthServiceImpl;-><init>()V

    .line 255
    iget-object v1, p0, Lcom/cbs/app/uri/UriHandler$1;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/cbs/app/service/AuthService;->b(Landroid/content/Context;)V

    .line 256
    iget-object v0, p0, Lcom/cbs/app/uri/UriHandler$1;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-static {}, Lcom/cbs/app/uri/UriHandler;->a()Ljava/lang/String;

    goto :goto_0
.end method
