.class public Lcom/cbs/app/androiddata/ServerRequestFactory$FactoryHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/androiddata/ServerRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FactoryHolder"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/HashMap;
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

.field private c:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private d:Lcom/cbs/app/androiddata/DataManagerConfiguration;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/cbs/app/androiddata/DataManagerConfiguration;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestFactory$FactoryHolder;->d:Lcom/cbs/app/androiddata/DataManagerConfiguration;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestFactory$FactoryHolder;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestFactory$FactoryHolder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/cbs/app/androiddata/ResponseModelListener;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestFactory$FactoryHolder;->c:Lcom/cbs/app/androiddata/ResponseModelListener;

    return-object v0
.end method

.method public getParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestFactory$FactoryHolder;->b:Ljava/util/HashMap;

    return-object v0
.end method
