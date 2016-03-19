.class public Lcom/cbs/app/EndPoints$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/EndPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/cbs/app/EndPoints$Versions;

.field public b:Ljava/lang/String;

.field c:Lcom/cbs/app/EndPoints$MidLink;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/cbs/app/EndPoints$Versions;->a:Lcom/cbs/app/EndPoints$Versions;

    iput-object v0, p0, Lcom/cbs/app/EndPoints$Builder;->a:Lcom/cbs/app/EndPoints$Versions;

    .line 56
    const-string v0, "http://www.cbs.com"

    iput-object v0, p0, Lcom/cbs/app/EndPoints$Builder;->b:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/cbs/app/EndPoints$MidLink;->a:Lcom/cbs/app/EndPoints$MidLink;

    iput-object v0, p0, Lcom/cbs/app/EndPoints$Builder;->c:Lcom/cbs/app/EndPoints$MidLink;

    .line 60
    return-void
.end method
