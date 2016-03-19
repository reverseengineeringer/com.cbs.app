.class public Lcom/cbs/app/service/social/TwitterOAuthTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/cbs/app/service/social/TwitterOAuthTokens;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/cbs/app/service/social/TwitterOAuthTokens;->b:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/cbs/app/service/social/TwitterOAuthTokens;->c:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/cbs/app/service/social/TwitterOAuthTokens;->d:Ljava/lang/String;

    .line 21
    return-void
.end method
