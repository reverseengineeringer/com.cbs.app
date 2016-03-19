.class final Lcom/nielsen/app/sdk/h$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/h$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nielsen/app/sdk/h$a$a;


# direct methods
.method private constructor <init>(Lcom/nielsen/app/sdk/h$a$a;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lcom/nielsen/app/sdk/h$a$a$a;->a:Lcom/nielsen/app/sdk/h$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nielsen/app/sdk/h$a$a;B)V
    .locals 0

    .prologue
    .line 939
    invoke-direct {p0, p1}, Lcom/nielsen/app/sdk/h$a$a$a;-><init>(Lcom/nielsen/app/sdk/h$a$a;)V

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 947
    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 951
    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 955
    const/4 v0, 0x0

    return-object v0
.end method
