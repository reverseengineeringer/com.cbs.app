.class public interface abstract Lcom/cbs/app/androiddata/ServerRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getHttpMethod()Ljava/lang/String;
.end method

.method public abstract getListener()Lcom/cbs/app/androiddata/ResponseModelListener;
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

.method public abstract getPostBody()Ljava/lang/String;
.end method

.method public abstract getPostBodyMimeType()Ljava/lang/String;
.end method

.method public abstract getTimeToLive()J
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method
