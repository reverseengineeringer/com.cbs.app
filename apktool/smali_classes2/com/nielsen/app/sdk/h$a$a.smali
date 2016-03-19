.class public final Lcom/nielsen/app/sdk/h$a$a;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nielsen/app/sdk/h$a$a$a;
    }
.end annotation


# instance fields
.field a:Ljavax/net/ssl/SSLContext;

.field b:Lcom/nielsen/app/sdk/h$a$a$a;

.field final synthetic c:Lcom/nielsen/app/sdk/h$a;


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/h$a;Ljava/security/KeyStore;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 973
    iput-object p1, p0, Lcom/nielsen/app/sdk/h$a$a;->c:Lcom/nielsen/app/sdk/h$a;

    .line 974
    invoke-direct {p0, p2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 931
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/h$a$a;->a:Ljavax/net/ssl/SSLContext;

    .line 958
    new-instance v0, Lcom/nielsen/app/sdk/h$a$a$a;

    invoke-direct {v0, p0, v2}, Lcom/nielsen/app/sdk/h$a$a$a;-><init>(Lcom/nielsen/app/sdk/h$a$a;B)V

    iput-object v0, p0, Lcom/nielsen/app/sdk/h$a$a;->b:Lcom/nielsen/app/sdk/h$a$a$a;

    .line 976
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    iget-object v1, p0, Lcom/nielsen/app/sdk/h$a$a;->b:Lcom/nielsen/app/sdk/h$a$a$a;

    aput-object v1, v0, v2

    .line 978
    iget-object v1, p0, Lcom/nielsen/app/sdk/h$a$a;->a:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 979
    return-void
.end method


# virtual methods
.method public final createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$a$a;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$a$a;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
